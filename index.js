import { main } from './lib/main.js'

let ocPath = 'test/objc/NetworkRequest.h'
let javaPath = 'test/java/helloworld.java'
let option = {
    output: 'test/dart',
    // template: 'plugin',
    // projectName: 'testPlugin'
}

// run objc
main(ocPath, option, true)
// run java
main(javaPath, option, false)