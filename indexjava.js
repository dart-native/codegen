const main = require('./lib/main').main

let dataPath = "test/java/helloworld.java"
let option = {output: 'test/dart'}

main(dataPath, option, true)