import 'dart:async';
import 'dart:io';

import 'package:antlr4/antlr4.dart';
import 'package:dart_native_codegen/parser/java/Java9Lexer.dart';
import 'package:dart_native_codegen/parser/java/Java9Parser.dart';

import '../common.dart';
import 'DartJavaCompiler.dart';
import 'dn_java9_parser_listener.dart';

class DNJavaGenerater {
  /// generate dart code from java code.
  static Future<GenerateResult> generate(GenerateRequest request) async {
    // TODO: by siriushe
    // file.fileType = FILE_TYPE.source_file;
    Completer<GenerateResult> completer = Completer();
    try {
      final chars = InputStream.fromString(request.fileContent);
      final lexer = Java9Lexer(chars);
      final tokens = CommonTokenStream(lexer);
      final parser = Java9Parser(tokens);
      parser.addErrorListener(DiagnosticErrorListener());
      parser.buildParseTree = true;
      final tree = parser.compilationUnit();
      Callback cb = (String content, {String error}) {
        if (content != null) {
          final result = GenerateResult(content);
          completer.complete(result);
        } else {
          completer.completeError(error, StackTrace.current);
        }
      };
      // TODO: by siriushe
      // ParseTreeWalker.DEFAULT.walk(DNJavaParserListener(file, cb), tree);
    } catch (e) {
      completer.completeError(e, StackTrace.current);
    }
    return completer.future;
  }
}
