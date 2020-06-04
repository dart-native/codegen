var DNObjectiveConverter = require('./lib/objc/DNObjectiveConverter').DNObjectiveConverter

new DNObjectiveConverter("./test/objc/DNTest.h", callback)

function callback(result, path, error) {
    console.log('result:\n' + result.dartCode + '\n\npath:\n' + path)
    if (error) {
        console.log('\nerror:\n' + error)
    }
}

