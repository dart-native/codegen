let antlr4 = require('antlr4')
let rf = require("fs")
let ObjectiveCLexer = require('../../parser/objc/ObjectiveCLexer').ObjectiveCLexer
let ObjectiveCParser = require('../../parser/objc/ObjectiveCParser').ObjectiveCParser
let DNObjectiveCParserListener = require('./DNObjectiveCParserListener').DNObjectiveCParserListener
let ConsoleErrorListener = require('antlr4/error/ErrorListener').ConsoleErrorListener

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
            return
        }
        path = workerData.path
    }
    if (!cb) {
        cb = callback
    }
    console.log('processing: ' + path)
    try {
        const content = rf.readFileSync(path, "utf-8")
        const chars = new antlr4.InputStream(content)
        const lexer = new ObjectiveCLexer(chars)
        const errorListener = new ConsoleErrorListener()
        lexer.addErrorListener(errorListener)

        const tokens = new antlr4.CommonTokenStream(lexer)
        const parser = new ObjectiveCParser(tokens)
        parser.addErrorListener(errorListener)
        const tree = parser.translationUnit()
        const listener = new DNObjectiveCParserListener(cb, path)
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