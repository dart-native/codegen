var antlr4 = require('antlr4')
var rf = require("fs")
var ObjectiveCLexer = require('../../parser/objc/ObjectiveCLexer').ObjectiveCLexer
var ObjectiveCParser = require('../../parser/objc/ObjectiveCParser').ObjectiveCParser
var DNObjectiveCParserListener = require('./DNObjectiveCParserListener').DNObjectiveCParserListener
var ConsoleErrorListener = require('antlr4/error/ErrorListener').ConsoleErrorListener

class DNObjectiveConverter {
    constructor(path, cb) {
        var content = rf.readFileSync(path, "utf-8")
        var chars = new antlr4.InputStream(content)
        var lexer = new ObjectiveCLexer(chars)
        lexer.addErrorListener(new ConsoleErrorListener())

        var tokens = new antlr4.CommonTokenStream(lexer)
        var parser = new ObjectiveCParser(tokens)
        parser.addErrorListener(new ConsoleErrorListener())

        var tree = parser.translationUnit()

        var listener = new DNObjectiveCParserListener(cb)

        try {
            antlr4.tree.ParseTreeWalker.DEFAULT.walk(listener, tree)
        } catch (e) {
            cb(null, e)
        }
    }
}

exports.DNObjectiveConverter = DNObjectiveConverter