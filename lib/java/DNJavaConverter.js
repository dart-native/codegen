var antlr4 = require('antlr4')
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

        const tokens = new antlr4.CommonTokenStream(lexer)
        const parser = new JavaParser(tokens)
        const tree = parser.compilationUnit()
        const isPartOfFile = workerData ? workerData.isPartOfFile : false
        const listener = new DNJavaParserListener(cb, isPartOfFile)
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