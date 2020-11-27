var antlr4 = require('antlr4')
var rf = require("fs")
var JavaLexer = require('../../parser/java/Java9Lexer').Java9Lexer
var JavaParser = require('../../parser/java/Java9Parser').Java9Parser
var DNJavaParserListener = require('./DNJavaParserListener').DNJavaParserListener

let parentPort, workerData
try {
    parentPort = require('worker_threads').parentPort
    workerData = require('worker_threads').workerData
} catch (error) {
    console.log('NodeJS version is too low. Running on slow mode.')
}

function convert(path, cb) {
    if (!path) {
        if (!workerData) {
            console.log('return: ')
            return
        }
        path = workerData.path
    }
    if (!cb) {
        cb = callback
    }
    
    try {
        var content = rf.readFileSync(path, "utf-8")
        var chars = new antlr4.InputStream(content)
        var lexer = new JavaLexer(chars)

        var tokens = new antlr4.CommonTokenStream(lexer)
        var parser = new JavaParser(tokens)
        
        var listener = new DNJavaParserListener(cb, path)
        var tree = parser.compilationUnit()
        antlr4.tree.ParseTreeWalker.DEFAULT.walk(listener, tree)
    } catch (e) {
        cb(null, path, e)
    }
}

function callback(result, path, error) {
    // Send a message to the main thread.
    parentPort.postMessage({result: result, path: path, error: error});
}

convert()

exports.convert = convert