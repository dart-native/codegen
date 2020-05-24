#!/usr/bin/env node

const { program } = require('commander')
const { exec } = require('child_process')
var DNObjectiveConverter = require('../lib/objc/DNObjectiveConverter').DNObjectiveConverter
var fs = require("fs")
var path = require("path")
var outputDir

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
    if (result) {
        writeOutputToFileByPath(result, srcPath)
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
        }
        console.log('Output Dir: ' + outputDir)
        dirs.forEach((dir) => {
            new DNObjectiveConverter(dir, callback)
            console.log(dir)
        })
        formatDartFile(outputDir)
        console.log('codegen finished')
    })

program.parse(process.argv)