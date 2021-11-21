import { main } from './lib/main.js'

// let path = 'test/objc/RuntimeStub.h'
let path = 'test/swift/Objects and Classes/Contents.swift'
// let path = 'test/java/helloworld.java'
let option = {
    output: 'test/dart',
    // template: 'plugin',
    // projectName: 'testPlugin'
}

// run
main(path, option, true)