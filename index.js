var DNObjectiveConverter = require('./lib/objc/DNObjectiveConverter').DNObjectiveConverter

new DNObjectiveConverter("./test/objc/RuntimeStub.h", callback)

function callback(tree) {
    // TODO:
    if (tree) {
        console.log(tree)
    }
}

