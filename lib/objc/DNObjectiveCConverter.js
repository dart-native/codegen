let antlr4 = require('antlr4')
let ObjectiveCLexer = require('../../parser/objc/ObjectiveCLexer').ObjectiveCLexer
let ObjectiveCParser = require('../../parser/objc/ObjectiveCParser').ObjectiveCParser
let DNObjectiveCParserListener = require('./DNObjectiveCParserListener').DNObjectiveCParserListener

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
        const chars = new antlr4.InputStream(content)
        const lexer = new ObjectiveCLexer(chars)

        const tokens = new antlr4.CommonTokenStream(lexer)
        const parser = new ObjectiveCParser(tokens)
        const tree = parser.translationUnit()
        let isPartOfFile = workerData ? workerData.isPartOfFile : false
        const listener = new DNObjectiveCParserListener(cb, isPartOfFile)
        antlr4.tree.ParseTreeWalker.DEFAULT.walk(listener, tree)
    } catch (e) {
        cb(null, e)
    }
}

function callback(result, error) {
    // Send a message to the main thread.
    parentPort.postMessage({result: result, error: error});
}

convert()

exports.convert = convert