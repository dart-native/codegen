import 'dart:async';

import 'package:antlr4/antlr4.dart';
import 'package:dart_native_codegen/src/common.dart';
import 'package:dart_native_codegen/src/objc/dn_objectivec_parser_listener.dart';
import 'package:dart_native_codegen/parser/objc/ObjectiveCLexer.dart';
import 'package:dart_native_codegen/parser/objc/ObjectiveCParser.dart';

class DNObjectiveCConverter {
  //convert
  static Future<String> convert(String content) async {
    Completer<String> completer = Completer();
    try {
      final chars = InputStream.fromString(content);
      final lexer = ObjectiveCLexer(chars);
      final tokens = CommonTokenStream(lexer);
      final parser = ObjectiveCParser(tokens);
      parser.addErrorListener(DiagnosticErrorListener());
      parser.buildParseTree = true;
      final tree = parser.translationUnit();
      Callback cb = (String content, {String error}) {
        if (content != null) {
          completer.complete(content);
        } else {
          completer.completeError(error, StackTrace.current);
        }
      };
      ParseTreeWalker.DEFAULT.walk(DNObjectiveCParserListener(cb), tree);
    } catch (e) {
      completer.completeError(e, StackTrace.current);
    }
    return completer.future;
  }
}
