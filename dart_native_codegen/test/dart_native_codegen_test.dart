import 'dart:io';

import 'package:antlr4/antlr4.dart';
import 'package:dart_native_codegen/parser/objc/ObjectiveCLexer.dart';
import 'package:dart_native_codegen/parser/objc/ObjectiveCParser.dart';
import 'package:dart_native_codegen/src/objc/dn_objectC_parser_listener.dart';
import 'package:path/path.dart' as path;

class TreeShapeListener implements ParseTreeListener {
  @override
  void enterEveryRule(ParserRuleContext ctx) {
    // print(ctx.text);
  }

  @override
  void exitEveryRule(ParserRuleContext node) {}

  @override
  void visitErrorNode(ErrorNode node) {}

  @override
  void visitTerminal(TerminalNode node) {}
}

void main() async {
  var fileName = "NSURL.h";
  var pathStr = "${Directory.current.path}/test/objc/$fileName";
  // /Users/chaoso/Documents/workspace/tencent/codegen/dart_native_codegen/dart_native_codegen/test/NSURL.h
  ObjectiveCLexer.checkVersion();
  ObjectiveCParser.checkVersion();
  final input = await InputStream.fromPath(pathStr);
  final lexer = ObjectiveCLexer(input);
  final tokens = CommonTokenStream(lexer);
  final parser = ObjectiveCParser(tokens);
  parser.addErrorListener(DiagnosticErrorListener());
  parser.buildParseTree = true;
  final tree = parser.translationUnit();
  print('ashodjosajd');
  Callback cb = (dartCode,{error}) {
    
  };
  ParseTreeWalker.DEFAULT.walk(DNObjectiveCParserListener(cb), tree);
}
