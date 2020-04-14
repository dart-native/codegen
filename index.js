var DNObjectiveConverter = require('./lib/objc/DNObjectiveConverter').DNObjectiveConverter

new DNObjectiveConverter("./test/objc/RuntimeStub.h", callback)

function callback(tree, path, error) {
    console.log('tree:\n' + tree + '\npath:\n' + path + '\nerror:\n' + error)
}

