var DNJavaConverter = require('./lib/java/DNJavaConverter').DNJavaConverter

new DNJavaConverter("./test/java/helloworld.java", callback)

function callback(tree, path, error) {
    console.log('tree:\n' + tree + '\npath:\n' + path + '\nerror:\n' + error)
}

