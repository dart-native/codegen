const main = require('./lib/main').main

let path = 'test/objc/RuntimeStub.h'
// let path = 'test/java/helloworld.java'

let option = {
    output: 'test/dart',
    // template: 'plugin',
    // projectName: 'testPlugin'
}

main(path, option, true)