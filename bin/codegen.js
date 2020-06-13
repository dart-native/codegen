#!/usr/bin/env node

const { program } = require('commander')
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
        doc.dependencies[item] = { path: item }
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
    const promises = Object.keys(workItems).map((path) => {
        let script = workItems[path]
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

program.version('1.0.2')

program
    .arguments('<input>', 'Iutput directory')
    .option('-l, --language <language>', '[objc, java, auto(default)]')
    .option('-o, --output <output>', 'Output directory')
    .option('-p, --package <package>', 'Generate a shareable Flutter project containing modular Dart code.')
    .description('Generate dart code from native API.')
    .action(async function (input, options) {
        language = options.language
        if (!language) {
            language = 'auto'
        }

        var extMap = { 'objc': ['h'], 'java': ['java'], 'auto': ['h', 'java'] }
        var extArray = extMap[language]

        outputDir = options.output
        if (!outputDir) {
            outputDir = process.cwd()
        }
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
        const scriptForExtension = { 'h': path.join(__dirname, '../lib/objc/DNObjectiveCConverter.js') }

        var workItems = new Map()
        extArray.forEach((ext) => {
            let files = recFindByExt(input, ext)
            if (files.length == 0) {
                return
            }

            outputDir = path.join(baseOutputDir, langForExtension[ext])
            mkdirs(outputDir)

            files.forEach((file) => {
                workItems[file] = scriptForExtension[ext];
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
    })

program.parse(process.argv)