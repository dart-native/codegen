import 'dart:async';

import 'package:antlr4/antlr4.dart';
import 'package:dart_native_codegen/src/common.dart';
import 'package:dart_native_codegen/src/objc/dn_objectivec_parser_listener.dart';
import 'package:dart_native_codegen/parser/objc/ObjectiveCLexer.dart';
import 'package:dart_native_codegen/parser/objc/ObjectiveCParser.dart';

class DNObjectiveCGenerater {
  /// generate dart code from objective-c code.
  static Future<GenerateResult> generate(GenerateRequest request) async {
    Completer<GenerateResult> completer = Completer();
    try {
      final chars = InputStream.fromString(request.fileContent);
      final lexer = ObjectiveCLexer(chars);
      final tokens = CommonTokenStream(lexer);
      final parser = ObjectiveCParser(tokens);
      parser.addErrorListener(DiagnosticErrorListener());
      parser.buildParseTree = true;
      final tree = parser.translationUnit();
      Callback cb = (String content, {String error}) {
        if (content != null) {
          final result = GenerateResult(content);
          completer.complete(result);
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

int _count = 0;
