const main = require('./lib/main').main

let dataPath = "test/objc/RuntimeStub.h"
let option = {
    output: 'test/dart',
    template: 'package',
    projectName: 'testPlugin'
}

main(dataPath, option, true)