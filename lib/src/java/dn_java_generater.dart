import 'dart:async';

import 'package:antlr4/antlr4.dart';
import 'package:dart_native_codegen/parser/java/Java9Lexer.dart';
import 'package:dart_native_codegen/parser/java/Java9Parser.dart';
import 'package:path/path.dart' as p;

import '../common.dart';
import 'dn_java9_parser_listener.dart';
import 'dn_java_context.dart';

class DNJavaGenerater {
  /// generate dart code from java code.
  static Future<GenerateResult> generate(GenerateRequest request) async {
    JavaFile javaFile = new JavaFile();
    javaFile.path = request.filePath;
    javaFile.fileType = FILE_TYPE.source_file;
    javaFile.resolve = true;
    CompileContext.getContext().pushFile(javaFile);

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
          List<String> moreFile = [];
          List<JavaFile> unResolveFiles =
              CompileContext.getContext().popUnResolve();
          unResolveFiles.forEach((file) {
            var relativePath =
                p.relative(file.path, from: p.dirname(request.filePath));
            moreFile.add(relativePath);
          });

          final result =
              GenerateResult(content, moreFileDependencies: moreFile);

          logger.info(
              "generate finish: ${request.filePath}, dependencies: ${result.moreFileDependencies.toString()}");
          completer.complete(result);
        } else {
          completer.completeError(error, StackTrace.current);
        }
      };
      ParseTreeWalker.DEFAULT.walk(DNJavaParserListener(javaFile, cb), tree);
    } catch (e) {
      completer.completeError(e, StackTrace.current);
    }
    return completer.future;
  }
}

class CompileContext {
  static CompileContext _instance = new CompileContext();

  List<JavaFile> _allFiles = [];
  DNRootContext _currentRootContext;

  static CompileContext getContext() {
    return _instance;
  }

  List<JavaFile> popUnResolve() {
    List<JavaFile> unResolve = [];
    Iterator<JavaFile> ite = _allFiles.iterator;
    while (ite.moveNext()) {
      if (ite.current != null && !ite.current.resolve) {
        unResolve.add(ite.current);
      }
    }
    unResolve.forEach((file) {
      _allFiles.remove(file);
    });
    return unResolve;
  }

  void pushFile(JavaFile file) {
    if (!_allFiles.contains(file)) {
      _allFiles.add(file);
    }
  }

  void pushFiles(List<JavaFile> fList) {
    fList.forEach((file) {
      pushFile(file);
    });
  }

  void setCurrentCompileRootContext(DNRootContext context) {
    this._currentRootContext = context;
  }

  // java type -> dart type
  String convertType2Dart(String javaFieldType) {
    return _currentRootContext.convertType2Dart(javaFieldType);
  }
}

enum FILE_TYPE { aar, source_dir, source_file, unknown }

class JavaFile {
  List<String> classList = [];
  String path;
  FILE_TYPE fileType = FILE_TYPE.unknown;
  bool resolve = false;

  @override
  bool operator ==(other) {
    if (other is JavaFile) {
      return path == other.path;
    }
    return false;
  }

  @override
  String toString() {
    return 'path: ${path}, fileType: ${fileType}, resolve: ${resolve}';
  }
}
