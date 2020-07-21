#!/usr/bin/env node
const { program } = require('commander')
const main = require('../lib/main').main

program.version('1.0.5')

program
    .arguments('<input>', 'Iutput directory')
    .option('-l, --language <language>', '[objc, java, auto(default)]')
    .option('-o, --output <output>', 'Output directory')
    .option('-p, --package <package>', 'Generate a shareable Flutter project containing modular Dart code.')
    .description('Generate dart code from native API.')
    .action(main)

program.parse(process.argv)