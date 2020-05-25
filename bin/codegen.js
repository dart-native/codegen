#!/usr/bin/env node

const { program } = require('commander')
const { exec } = require('child_process')
var DNObjectiveConverter = require('../lib/objc/DNObjectiveConverter').DNObjectiveConverter
const fs = require("fs")
const path = require("path")
const yaml = require('js-yaml')
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
        return [base]
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

function writeOutputToFileByPath(result, srcPath){
    var srcFile = srcPath.substr(srcPath.lastIndexOf('/') + 1)
    var dartFile = srcFile.substring(0, srcFile.indexOf('.')).toLowerCase() + '.dart'
    var outputFile = outputDir ? path.join(outputDir, dartFile) : dartFile
    fs.writeFileSync(outputFile, result)
}

function callback(result, srcPath, error) {
    if (!result) {
       return
    }

    writeOutputToFileByPath(result.dartCode, srcPath)

    if(outputPackage) {
        result.packages.forEach(item => packageSet.add(item))
    }
}

function formatDartFile(dartPath) {
    var command = 'flutter format ' + path.dirname(dartPath)
    exec(command, (err, stdout, stderr) => {
        if (err) {
            console.log(err)
        }
        console.log(stdout + stderr)
    })
}

function createFlutterPackage(packageName) {
    var command = 'flutter create --template=package ' + packageName
    exec(command, (err, stdout, stderr) => {
        if (err) {
            console.log(err)
        }
        console.log(stdout + stderr)
    })
}

function writeDependencyToPubSpec(filePath) {
    var doc = yaml.safeLoad(fs.readFileSync(filePath, 'utf8'));
    packageSet.forEach(item => {
        if(typeof(item) == "undefined") {
            return
        }
        doc.dependencies[item] = { path : item}
    })
    fs.writeFileSync(filePath, yaml.safeDump(doc))
}

program.version('1.0.0')

program
    .arguments('<input>', 'Iutput directory')
    .option('-l, --language <language>', '[objc(default), java]')
    .option('-o, --output <output>', 'Output directory')
    .option('-p, --package <package>', 'Generate a shareable Flutter project containing modular Dart code.')
    .description('Generate dart code from native API.')
    .action(function (input, options) {
        var ext
        if (!options.language) {
            options.language = 'objc'
        }
        if (options.language == 'objc') {
            ext = 'h'
        }
        const dirs = recFindByExt(input, ext)
        console.log(dirs)

        if (options.output) {
            mkdirs(options.output)
            outputDir = options.output
        }

        var package = options.package
        if (package) {
            outputDir = path.join(outputDir, package)
            createFlutterPackage(outputDir)
            outputDir = path.join(outputDir, 'lib')
            outputPackage = options.package
        }
        console.log('Output Dir: ' + outputDir)
        dirs.forEach((dir) => {
            new DNObjectiveConverter(dir, callback)
            console.log(dir)
        })
        formatDartFile(outputDir)

        if(package) {
            var filePath = path.join(path.join(options.output, package),'pubspec.yaml')
            writeDependencyToPubSpec(filePath)
        }
        console.log('codegen finished')
    })

program.parse(process.argv)