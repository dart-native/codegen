import 'dart:io';

import 'package:dart_native_codegen/parser/java/Java9Parser.dart';
import 'package:dart_native_codegen/src/common/FileUtils.dart';
import 'package:glob/glob.dart';
import 'package:logging/logging.dart';

import 'dn_java_converter.dart';

final logger = Logger('DartJavaCompiler');

class DartJavaCompiler {
  void compile(String inputPath, String workspace) {
    for (FileSystemEntity file in Glob('**.java').listSync(root: inputPath)) {
      JavaFile javaFile = new JavaFile();
      javaFile.path = file.path;
      javaFile.fileType = FILE_TYPE.source_file;
      javaFile.resolve = true;
      CompileContext.getContext().pushFile(javaFile);
      convertOneFile(javaFile, workspace);
    }
    // loop
    List<JavaFile> unResolveFiles = CompileContext.getContext().popUnResolve();
    while (unResolveFiles.length > 0) {
      unResolveFiles.forEach((file) {
        convertOneFile(file, workspace);
      });
    }
  }

  void convertOneFile(JavaFile file, String workspace) async {
    var futures = <Future<void>>[];
    Future<void> future = DNJavaConverter.convert(file).then((dartCode) {
      FileUtils.saveDartCode(dartCode, file.path, workspace);
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
  CompilationContext _currentCompileContext;

  static CompileContext getContext() {
    return _instance;
  }

  List<JavaFile> popUnResolve() {
    List<JavaFile> unResolve = [];
    Iterator<JavaFile> ite = _allFiles.iterator;
    while (ite.moveNext()) {
      if (ite.current != null && !ite.current.resolve) {
        unResolve.add(ite.current);
        _allFiles.remove(ite.current);
      }
    }
    return unResolve;
  }

  void pushFile(JavaFile file) {
    if (!_allFiles.contains(file)) {
      _allFiles.add(file);
    }
  }

  void pushFiles(List<JavaFile> fList) {
    fList.forEach((file) {
      if (!_allFiles.contains(file)) {
        _allFiles.add(file);
      }
    });
  }

  void setCurrentCompilationInfo(CompilationContext info) {
    this._currentCompileContext = info;
  }

  // java type -> dart type
  String convertType(String javaFieldType) {
    return '';
  }
}

class CompilationContext {
  JavaFile javaFile;
  String packageName;
  String className;
  List<ImportDeclarationContext> imports = [];
  // data from imports, record class name and javafile
  Map<String, JavaFile> _importData = {};
  bool _isInit = false;

  String convertType(String fieldType) {
    if (!_isInit) {
      _init();
    }
    if (_importData.containsKey(fieldType)) {
      // class type
      CompileContext.getContext().pushFile(_importData[fieldType]);
      return fieldType;
    }
    // todo basic type ?
    return fieldType;
  }

  void _init() {
    imports.forEach((import) {
      String importStatement = import.text;
      String javaPath = javaFile.path;
      // win ?
      String fileSep = "/";
      String rootFilePath =
      javaPath.replaceAll(packageName.replaceAll(".", fileSep), "");
      String destFilePath =
          rootFilePath + fileSep + importStatement.replaceAll(".", fileSep);

      if (destFilePath.endsWith("*")) {
        destFilePath = destFilePath.replaceAll('${fileSep}*', fileSep);
      } else {
        // kotlin ?
        destFilePath = destFilePath + ".java";
      }

      // new java file
      File destFile = new File(destFilePath);
      bool exist = destFile.existsSync();
      if (!exist) {
        fileType = _FileType.JAR;
      } else {
        fileType = _FileType.SOURCE;
        filePath = destFilePath;
        fileName = destFilePath.split(fileSep).last;
        // dir ? file ?
      }
    });


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
}
