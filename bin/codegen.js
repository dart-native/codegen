#!/usr/bin/env node
import { program } from 'commander'
import { main } from '../lib/main.js'

program.version('1.2.1')

program
    .arguments('<input>', 'Iutput directory')
    .option('-l, --language <language>', '[objc, java, auto(default)]', 'auto')
    .option('-o, --output <output>', 'Output directory')
    .option('-t, --template <template>', 'Generate a shareable Flutter project containing modular Dart code.\nSpecify the type of project to create: [package, plugin]')
    .option('--project-name <projectName>', 'The project name for this new Flutter project.\nThis must be a valid dart package name.')
    .description('Generate dart code from native API.')
    .action(main)

program.parse(process.argv)