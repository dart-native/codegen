var antlr4 = require('antlr4')
var rf = require("fs")
var JavaLexer = require('../../parser/java/Java9Lexer').Java9Lexer
var JavaParser = require('../../parser/java/Java9Parser').Java9Parser
var DNJavaParserListener = require('./DNJavaParserListener').DNJavaParserListener
var ConsoleErrorListener = require('antlr4/error/ErrorListener').ConsoleErrorListener

class DNJavaConverter {
    constructor(path, cb) {
        var content = rf.readFileSync(path, "utf-8")
        var chars = new antlr4.InputStream(content)
        var lexer = new JavaLexer(chars)
        lexer.addErrorListener(new ConsoleErrorListener())

        var tokens = new antlr4.CommonTokenStream(lexer)
        var parser = new JavaParser(tokens)
        parser.addErrorListener(new ConsoleErrorListener())
        
        var listener = new DNJavaParserListener(cb, path)
        var tree = parser.compilationUnit()
        try {
            antlr4.tree.ParseTreeWalker.DEFAULT.walk(listener, tree)
        } catch (e) {
            cb(null, path, e)
        }
    }
}

exports.DNJavaConverter = DNJavaConverter