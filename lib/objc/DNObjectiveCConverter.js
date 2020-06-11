let antlr4 = require('antlr4')
let rf = require("fs")
let ObjectiveCLexer = require('../../parser/objc/ObjectiveCLexer').ObjectiveCLexer
let ObjectiveCParser = require('../../parser/objc/ObjectiveCParser').ObjectiveCParser
let DNObjectiveCParserListener = require('./DNObjectiveCParserListener').DNObjectiveCParserListener
let ConsoleErrorListener = require('antlr4/error/ErrorListener').ConsoleErrorListener

function convertFromObjectiveC(path, cb) {
    try {
        let content = rf.readFileSync(path, "utf-8")
        let chars = new antlr4.InputStream(content)
        let lexer = new ObjectiveCLexer(chars)
        lexer.addErrorListener(new ConsoleErrorListener())

        let tokens = new antlr4.CommonTokenStream(lexer)
        let parser = new ObjectiveCParser(tokens)
        parser.addErrorListener(new ConsoleErrorListener())
        let tree = parser.translationUnit()
        let listener = new DNObjectiveCParserListener(cb, path)
        antlr4.tree.ParseTreeWalker.DEFAULT.walk(listener, tree)
    } catch (e) {
        cb(null, path, e)
    } finally {
        content = null
        chars = null
        lexer = null
        tokens = null
        parser = null
        tree = null
        listener = null
    }
}

exports.convertFromObjectiveC = convertFromObjectiveC