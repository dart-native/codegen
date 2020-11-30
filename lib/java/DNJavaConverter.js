var antlr4 = require('antlr4')
var JavaLexer = require('../../parser/java/Java9Lexer').Java9Lexer
var JavaParser = require('../../parser/java/Java9Parser').Java9Parser
var DNJavaParserListener = require('./DNJavaParserListener').DNJavaParserListener
var ConsoleErrorListener = require('antlr4/error/ErrorListener').ConsoleErrorListener

let parentPort, workerData
try {
    parentPort = require('worker_threads').parentPort
    workerData = require('worker_threads').workerData
} catch (error) {
    console.log('NodeJS version is too low. Running on slow mode.')
}

function convert(content, cb) {
    if (!content) {
        if (!workerData) {
            if (cb) {
                cb(null, null)
            }
            return
        }
        content = workerData.content
    }
    if (!cb) {
        cb = callback
    }

    try {
        var chars = new antlr4.InputStream(content)
        var lexer = new JavaLexer(chars)
        lexer.addErrorListener(new ConsoleErrorListener())

        var tokens = new antlr4.CommonTokenStream(lexer)
        var parser = new JavaParser(tokens)
        parser.addErrorListener(new ConsoleErrorListener())

        let isPartOfFile = workerData ? workerData.isPartOfFile : false
        var listener = new DNJavaParserListener(cb, isPartOfFile)
        var tree = parser.compilationUnit()
        antlr4.tree.ParseTreeWalker.DEFAULT.walk(listener, tree)
    } catch (e) {
        cb(null, e)
    }
}

function callback(result, path, error) {
    // Send a message to the main thread.
    parentPort.postMessage({ result: result, error: error });
}

convert()

exports.convert = convert