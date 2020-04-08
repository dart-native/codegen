#!/usr/bin/env node

const { program } = require('commander')
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

function writeOutputToFileByPath(tree, srcPath){
    var srcFile = srcPath.substr(srcPath.lastIndexOf('/') + 1)
    var dartFile = srcFile.substring(0,srcFile.indexOf('.')) + '.dart'
    var outputFile = path.join(outputDir, dartFile)
    if (fs.existsSync(outputFile)) {
        fs.appendFileSync(outputFile, '\r\n\r\n' + tree);
    }else{
        fs.writeFileSync(outputFile, tree);
    }
}

function callback(tree,srcPath, error) {
    if (tree) {
        // console.log(tree + '\n')
        writeOutputToFileByPath(tree,srcPath);
    }
}

program.version('0.0.1')

program
    .arguments('<input>', 'Iutput directory')
    .option('-l, --language <language>', 'Input Language')
    .option('-o, --output <output>', 'Output directory')
    .description('generate dart code from native api.')
    .action(function (input, options) {
        var ext
        if (options.language == 'objc') {
            ext = 'h'
        }
        const dirs = recFindByExt(input, ext)
        console.log(dirs)

        if (options.output) {
            mkdirs(options.output)
            outputDir = options.output
        }

        dirs.forEach((dir) => {
            
            new DNObjectiveConverter(dir, callback)
            console.log(dir)
        })
        console.log('finished')
    })

program.parse(process.argv)