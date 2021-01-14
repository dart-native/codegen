import 'dart:io';

import 'package:dart_native_codegen/src/common/FileUtils.dart';
import 'package:glob/glob.dart';
import 'package:logging/logging.dart';

import 'dn_java_context.dart';
import 'dn_java_generater.dart';

final logger = Logger('DartJavaCompiler');

class DartJavaCompiler {
  void compile(String inputPath, String workspace) {
    if (FileUtils.isFile(inputPath)) {
      JavaFile javaFile = new JavaFile();
      javaFile.path = inputPath;
      javaFile.fileType = FILE_TYPE.source_file;
      javaFile.resolve = true;
      CompileContext.getContext().pushFile(javaFile);
      convertOneFile(javaFile, workspace);
    } else {
      for (FileSystemEntity file in Glob('**.java').listSync(root: inputPath)) {
        JavaFile javaFile = new JavaFile();
        javaFile.path = file.path;
        javaFile.fileType = FILE_TYPE.source_file;
        javaFile.resolve = true;
        CompileContext.getContext().pushFile(javaFile);
        convertOneFile(javaFile, workspace);
      }
    }
    // loop
    List<JavaFile> unResolveFiles = CompileContext.getContext().popUnResolve();
    while (unResolveFiles.length > 0) {
      unResolveFiles.forEach((file) {
        convertOneFile(file, workspace);
      });
      unResolveFiles = CompileContext.getContext().popUnResolve();
    }
  }

  void convertOneFile(JavaFile file, String workspace) async {
    var futures = <Future<void>>[];
    // TODO:
    Future<void> future =
        DNJavaGenerater.generate(null /*file*/).then((result) {
      FileUtils.saveDartCode(result.dartCode, file.path, workspace);
    }, onError: (error) {
      logger.severe('filePath: ${file.path}\nerror: $error');
    });
    futures.add(future);
    await Future.wait(futures);
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
