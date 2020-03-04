var antlr4 = require('../parser/antlr4/index');
var ObjectiveCLexer = require('../parser/objc/ObjectiveCLexer').ObjectiveCLexer;
var ObjectiveCParser = require('../parser/objc/ObjectiveCParser').ObjectiveCParser;
var DNObjectiveCParserListener = require('./objc/DNObjectiveCParserListener').DNObjectiveCParserListener;
var ConsoleErrorListener = require('../parser/antlr4/error/ErrorListener').ConsoleErrorListener.INSTANCE

var rf = require("fs");
var content = rf.readFileSync("../test/objc/RuntimeStub.h", "utf-8");


var chars = new antlr4.InputStream(content);
var lexer = new ObjectiveCLexer(chars);
lexer.addErrorListener(ConsoleErrorListener);

var tokens = new antlr4.CommonTokenStream(lexer);
var parser = new ObjectiveCParser(tokens);
parser.addErrorListener(ConsoleErrorListener);
parser.buildParseTrees = true;

var tree = parser.translationUnit();

//生成语法树遍历监听器
var listener = new DNObjectiveCParserListener(function(tree) {
    console.log('parse final!!!!');
    callback(tree);
});

function callback(tree) {
    // TODO:
}

try {
    //遍历语法树，触发遍历监听器
    antlr4.tree.ParseTreeWalker.DEFAULT.walk(listener, tree);
} catch (e) {
    console.log('listener error')
    console.log(e)
}

