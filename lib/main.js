import { execSync } from 'child_process'
import fs from 'fs'
import path from 'path'
import yaml from 'js-yaml'
import { Worker } from 'worker_threads'
import DNObjectiveCConverter from './objc/DNObjectiveCConverter.js'
import DNJavaConverter from './java/DNJavaConverter.js'

const dnPartExtension = 'dnpart'
var outputDir
var projectName
var packageSet = new Set()
var isMainThread = false

const scriptForObjC = './lib/objc/DNObjectiveCConverter.js'
const scriptForJava = './lib/java/DNJavaConverter.js'

const langForExtension = { h: 'objc', java: 'java' }
const scriptForExtension = {
    h: path.join(path.resolve(), scriptForObjC),
    java: path.join(path.resolve(), scriptForJava)
}

const fileSplitConfig = new Map()
fileSplitConfig.set(scriptForExtension.h, {
    separator: '@end\n',
    maxLength: 5000
}
)

function mkdirs(dirname) {
    if (fs.existsSync(dirname)) {
        return true
    } else {
        if (mkdirs(path.dirname(dirname))) {
            fs.mkdirSync(dirname)
            return true
        }
    }
}

function recFindByExt(base, ext, files, result) {
    if (!fs.statSync(base).isDirectory()) {
        if (base.substr(-1 * (ext.length + 1)) == '.' + ext) {
            return [base]
        }
        return []
    }
    files = files || fs.readdirSync(base)
    result = result || []

    files.forEach(
        function (file) {
            var newbase = path.join(base, file)
            if (fs.statSync(newbase).isDirectory()) {
                result = recFindByExt(newbase, ext, fs.readdirSync(newbase), result)
            } else {
                if (file.substr(-1 * (ext.length + 1)) == '.' + ext) {
                    result.push(newbase)
                }
            }
        }
    )
    return result
}

function writeOutputToFileByPath(result, srcPath) {
    var srcFile = srcPath.substr(srcPath.lastIndexOf('/') + 1)
    var components
    if (srcFile.endsWith(dnPartExtension)) {
        const partExtension = srcFile.split('.').slice(-2).join('.')
        components = srcFile.split('.').slice(0, -3)
        components.push('dart')
        components.push(partExtension)
    } else {
        components = srcFile.split('.').slice(0, -1)
        components.push('dart')
    }

    let dartFile = components.join('.').toLowerCase()

    var outputFile = outputDir ? path.join(outputDir, dartFile) : dartFile
    fs.writeFileSync(outputFile, result)
    return outputFile
}

function mergeFiles(filePaths) {
    if (!filePaths || filePaths.length <= 1) {
        return
    }

    let result = filePaths.sort().map(filePath => {
        if (!filePath) {
            return ''
        }
        return fs.readFileSync(filePath, { encoding: 'utf8' })
    }).join('\n')
    let mergedFilePath = filePaths[0].split('.').slice(0, -2).join('.')
    fs.writeFileSync(mergedFilePath, result)
    filePaths.forEach((filePath) => {
        fs.unlinkSync(filePath)
    })
}

function formatDartFile(dartPath) {
    var command = 'flutter format ' + dartPath
    execSync(command, { stdio: 'inherit' })
}

function createFlutterPackage(template, projectName) {
    var command = 'flutter create'
    if (template == 'plugin') {
        command += ' --platforms=android,ios --template=' + template
    }
    command += ' --project-name ' + projectName + ' ' + outputDir
    execSync(command, { stdio: 'inherit' })
}

function writeDependencyToPubSpec(filePath) {
    var doc = yaml.safeLoad(fs.readFileSync(filePath, 'utf8'))
    packageSet.forEach(item => {
        if (typeof (item) == "undefined") {
            return
        }
        item = item.toLowerCase()
        doc.dependencies[item] = 'any'
    })
    fs.writeFileSync(filePath, yaml.safeDump(doc).replace(/null/g, ''))
}

function generateDartWithWorker(content, path, script) {
    return new Promise((resolve, reject) => {
        if (isMainThread) {
            let converter
            if (script == scriptForExtension.h) {
                converter = new DNObjectiveCConverter()
            } else if (script == scriptForExtension.java) {
                converter = new DNJavaConverter()
            }
            converter.convert(content, (result, error) => {
                resolve({ result: result, error: error })
            })
        } else {
            let isPartOfFile = path.endsWith(dnPartExtension) && !path.endsWith(`0.${dnPartExtension}`)
            const worker = new Worker(script, {
                workerData: { content: content, isPartOfFile: isPartOfFile },
                resourceLimits: { maxOldGenerationSizeMb: 8 * 1024 }
            })
            worker.on("message", resolve)
            worker.on("error", (code) => {
                console.log(code)
            })
        }
    }).then((msg) => {
        if (msg.error) {
            console.log('filePath:' + path + '\nerror:' + msg.error)
        }
        let result = msg.result
        if (!result) {
            return
        }

        let dartFilePath = writeOutputToFileByPath(result.dartCode, path)

        if (projectName) {
            result.packages.forEach(item => packageSet.add(item))
        }
        return dartFilePath
    })
}

function splitCodeFileIfNeed(config, path) {
    const content = fs.readFileSync(path, "utf-8")
    if (!config || !config.separator || !config.maxLength) {
        return [content]
    }
    if (!isMainThread && content.length > config.maxLength) {
        let components = content.split(config.separator)
        return components.map((c, i) => {
            if (i == components.length - 1) {
                return c
            }
            return c + config.separator
        })
    }
    return [content]
}

async function runWorkItems(workItems) {
    const promises = Array.from(workItems.keys()).map((filePath) => {
        let script = workItems.get(filePath)
        let config = fileSplitConfig.get(script)
        console.log('processing: ' + filePath)
        let contents = splitCodeFileIfNeed(config, filePath)
        let ps = contents.map((content, index) => {
            let p = filePath
            if (contents.length > 1) {
                p = `${filePath}.${index}.${dnPartExtension}`
            }
            return generateDartWithWorker(content, p, script)
        })
        return Promise.all(ps).then((results) => {
            // merge files
            mergeFiles(results.filter((f) => f != undefined))
        })
    })
    await Promise.all(promises)
}

function checkTemplateValid(template) {
    return template == 'plugin' || template == 'package'
}

export async function main(input, options, onMainThread = false) {
    isMainThread = onMainThread

    let language = options.language
    if (!language) {
        language = 'auto'
    }

    const extMap = new Map()
    extMap.set('objc', ['h'])
    extMap.set('java', ['java'])
    extMap.set('auto', Array.from(extMap.values()).flat())
    let extArray = extMap.get(language)

    outputDir = options.output
    if (!outputDir) {
        outputDir = process.cwd()
    }

    outputDir = path.resolve(process.cwd(), outputDir)
    mkdirs(outputDir)

    projectName = options.projectName
    let template = options.template
    if (projectName && checkTemplateValid(template)) {
        outputDir = path.join(outputDir, projectName)
        createFlutterPackage(template, projectName)
        outputDir = path.join(outputDir, 'lib')
    }

    console.log('Output Dir: ' + outputDir)

    var baseOutputDir = outputDir

    var workItems = new Map()
    extArray.forEach((ext) => {
        let files = recFindByExt(input, ext)
        let script = scriptForExtension[ext]
        if (files.length == 0 || !script) {
            return
        }

        outputDir = path.join(baseOutputDir, langForExtension[ext])
        mkdirs(outputDir)

        files.forEach((file) => {
            workItems.set(file, script)
        })
    })
    await runWorkItems(workItems)

    outputDir = baseOutputDir
    formatDartFile(outputDir)

    if (projectName) {
        var filePath = path.join(path.join(options.output, projectName), 'pubspec.yaml')
        writeDependencyToPubSpec(filePath)
    }
    console.log('codegen finished')
}
