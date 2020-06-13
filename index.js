let workerScript = './lib/objc/DNObjectiveCConverter'
let dataPath = "./test/objc/BoxPhoto.h"
let main = require(workerScript).main

main(dataPath, callback)

function callback(result, path, error) {
    if (result) {
        console.log('result:\n' + result.dartCode + '\n\npath:\n' + path)
    }
    if (error) {
        console.log('\nerror:\n' + error)
    }
}

