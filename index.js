const main = require('./lib/main').main

let dataPath = "test/objc/RuntimeStub.h"
let option = {output: 'test/dart'}

main(dataPath, option, true)