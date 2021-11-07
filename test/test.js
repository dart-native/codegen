import { readFileSync } from 'fs'
import { program } from 'commander'

function compareDartFiles(f1, f2) {
    var content1 = readFileSync(f1, { encoding: 'utf8' })
    var content2 = readFileSync(f2, { encoding: 'utf8' })
    content1 = content1.replace(/[\r\n\ ]/g, '')
    content2 = content2.replace(/[\r\n\ ]/g, '')
    if (content1 != content2) {
        throw 'Unit Test failed! Generated Dart file did not pass.'
    }
}

program.version('1.0.0')

program
    .arguments('<file1>', 'First file path')
    .arguments('<file2>', 'Second file path')
    .description('Compare dart code.')
    .action(compareDartFiles)

program.parse(process.argv)