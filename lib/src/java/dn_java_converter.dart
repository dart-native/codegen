import 'dart:async';
import 'dart:io';

import 'package:antlr4/antlr4.dart';
import 'package:dart_native_codegen/parser/java/Java9Lexer.dart';
import 'package:dart_native_codegen/parser/java/Java9Parser.dart';

import '../common.dart';
import 'DartJavaCompiler.dart';
import 'dn_java9_parser_listener.dart';

class DNJavaConverter {
  static Future<String> convert(JavaFile file) async {
    file.fileType = FILE_TYPE.source_file;
    String content = File(file.path).readAsStringSync();
    Completer<String> completer = Completer();
    try {
      final chars = InputStream.fromString(content);
      final lexer = Java9Lexer(chars);
      final tokens = CommonTokenStream(lexer);
      final parser = Java9Parser(tokens);
      parser.addErrorListener(DiagnosticErrorListener());
      parser.buildParseTree = true;
      final tree = parser.compilationUnit();
      Callback cb = (String content, {String error}) {
        if (content != null) {
          completer.complete(content);
        } else {
          completer.completeError(error, StackTrace.current);
        }
      };
      ParseTreeWalker.DEFAULT.walk(DNJavaParserListener(file, cb), tree);
    } catch (e) {
      completer.completeError(e, StackTrace.current);
    }
    return completer.future;
  }
}