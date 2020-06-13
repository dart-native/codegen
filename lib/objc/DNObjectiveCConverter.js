let antlr4 = require('antlr4')
let rf = require("fs")
let ObjectiveCLexer = require('../../parser/objc/ObjectiveCLexer').ObjectiveCLexer
let ObjectiveCParser = require('../../parser/objc/ObjectiveCParser').ObjectiveCParser
let DNObjectiveCParserListener = require('./DNObjectiveCParserListener').DNObjectiveCParserListener
let ConsoleErrorListener = require('antlr4/error/ErrorListener').ConsoleErrorListener
const { parentPort, workerData } = require('worker_threads')

function main() {
    let path = workerData.path
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
        const listener = new DNObjectiveCParserListener(callback, path)
        antlr4.tree.ParseTreeWalker.DEFAULT.walk(listener, tree)
    } catch (e) {
        callback(null, path, e)
    }
}

function callback(result, path, error) {
    // Send a message to the main thread.
    parentPort.postMessage({result: result, path: path, error: error});
}

main()