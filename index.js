import { main } from './lib/main.js'

let path = 'test/objc/NetworkRequest.h'
// let path = 'test/java/helloworld.java'
let option = {
    output: 'test/dart',
    // template: 'plugin',
    // projectName: 'testPlugin'
}

// run
main(path, option, true)