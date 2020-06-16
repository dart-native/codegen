const { execSync } = require('child_process')
const fs = require("fs")
const path = require("path")
const yaml = require('js-yaml')
const { Worker } = require('worker_threads')

var outputDir
var outputPackage
var packageSet = new Set()

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
    var dartFile = srcFile.substring(0, srcFile.indexOf('.')).toLowerCase() + '.dart'
    var outputFile = outputDir ? path.join(outputDir, dartFile) : dartFile
    fs.writeFileSync(outputFile, result)
}

function formatDartFile(dartPath) {
    var command = 'flutter format ' + path.dirname(dartPath)
    execSync(command, { stdio: 'inherit' })
}

function createFlutterPackage(packageName) {
    var command = 'flutter create --template=package ' + packageName
    execSync(command, { stdio: 'inherit' })
}

function writeDependencyToPubSpec(filePath) {
    var doc = yaml.safeLoad(fs.readFileSync(filePath, 'utf8'));
    packageSet.forEach(item => {
        if (typeof (item) == "undefined") {
            return
        }
        item = item.toLowerCase()
        doc.dependencies[item] = 'any'
    })
    fs.writeFileSync(filePath, yaml.safeDump(doc).replace(/null/g, ''))
}

function generateDartWithWorker(path, script) {
    return new Promise((resolve, reject) => {
        const worker = new Worker(script, {
            workerData: { path: path },
            resourceLimits: { maxOldGenerationSizeMb: 8 * 1024 }
        });
        worker.on("message", resolve);
        worker.on("error", reject);
    });
};

async function runWorkItems(workItems) {
    const promises = Array.from(workItems.keys()).map((path) => {
        let script = workItems.get(path)
        return generateDartWithWorker(path, script).then((msg) => {
            if (msg.error) {
                console.log('filePath:' + msg.path + '\nerror:' + msg.error)
            }
            let result = msg.result
            if (!result) {
                return
            }
            writeOutputToFileByPath(result.dartCode, msg.path)

            if (outputPackage) {
                result.packages.forEach(item => packageSet.add(item))
            }
        })
    })
    await Promise.all(promises)
}

async function main(input, options) {
    language = options.language
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

    outputPackage = options.package
    if (outputPackage) {
        outputDir = path.join(outputDir, outputPackage)
        createFlutterPackage(outputDir)
        outputDir = path.join(outputDir, 'lib')
    }

    console.log('Output Dir: ' + outputDir)

    var baseOutputDir = outputDir

    const langForExtension = { 'h': 'objc', 'java': 'java' }
    // TODO: handle java here
    const scriptForExtension = { 'h': path.join(__dirname, './objc/DNObjectiveCConverter.js') }

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

    if (outputPackage) {
        var filePath = path.join(path.join(options.output, outputPackage), 'pubspec.yaml')
        writeDependencyToPubSpec(filePath)
    }
    console.log('codegen finished')
}

exports.main = main