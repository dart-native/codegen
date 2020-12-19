import 'package:antlr4/antlr4.dart';
import 'package:dart_native_codegen/src/objc/dn_objectC_parser_listener.dart';
import 'package:dart_native_codegen/parser/objc/ObjectiveCLexer.dart';
import 'package:dart_native_codegen/parser/objc/ObjectiveCParser.dart';

class DNObjectCConverter {
  //convert
  static Future<void> convert(String content, Callback cb) async {
    try {
      final chars = InputStream.fromString(content);
      final lexer = ObjectiveCLexer(chars);
      final tokens = CommonTokenStream(lexer);
      final parser = ObjectiveCParser(tokens);
      parser.addErrorListener(DiagnosticErrorListener());
      parser.buildParseTree = true;
      final tree = parser.translationUnit();
      ParseTreeWalker.DEFAULT.walk(DNObjectiveCParserListener(cb), tree);
    } catch (e) {
      cb(null, error: e);
    }
  }
}
