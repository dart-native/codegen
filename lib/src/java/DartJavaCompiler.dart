import 'dart:io';

import 'package:dart_native_codegen/parser/java/Java9Parser.dart';
import 'package:dart_native_codegen/src/common/FileUtils.dart';
import 'package:glob/glob.dart';
import 'package:logging/logging.dart';
import 'package:path/path.dart';

import 'dn_java_converter.dart';

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
      unResolveFiles = CompileContext.getContext().popUnResolve();;
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
  DNCompilationUnitContext _currentCompileContext;

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

  void setCurrentCompilationInfo(DNCompilationUnitContext info) {
    this._currentCompileContext = info;
  }

  // java type -> dart type
  String convertType2Dart(String javaFieldType) {
    print("convertType2Dart: " + javaFieldType);
    return _currentCompileContext.convertType(javaFieldType);
  }
}

class DNCompilationUnitContext {
  JavaFile javaFile;
  String packageName;
  List<ImportDeclarationContext> imports = [];

  // data from imports, record class name and javafile
  Map<String, JavaFile> _importFileMapWithName = {};
  bool _isInit = false;

  void addImport(ImportDeclarationContext import) {
    imports.add(import);
  }

  String convertType(String fieldType) {
    if (!_isInit) {
      _init();
    }
    print("start convertType: " + fieldType);
    _importFileMapWithName.forEach((a, b) {
      print("_importFileMapWithName: " + a + ", " + b.toString());
    });
    if (_importFileMapWithName.containsKey(fieldType)) {
      // class type
      CompileContext.getContext().pushFile(_importFileMapWithName[fieldType]);
      return fieldType;
    }
    // todo basic type ?
    return fieldType;
  }

  void _initWithOneFile(File file) {
    String javaFileName = basenameWithoutExtension(file.path);
    if (javaFileName == null) {
      return;
    }
    JavaFile javaFile = new JavaFile();
    javaFile.path = file.path;
    if (!file.existsSync()) {
      javaFile.fileType = FILE_TYPE.aar;
      javaFile.resolve = true;
    } else {
      javaFile.fileType = FILE_TYPE.source_file;
    }
    _importFileMapWithName[javaFileName] = javaFile;
  }

  void _init() {
    imports.forEach((import) {
      String importStatement =
          import.singleTypeImportDeclaration()?.typeName()?.text;
      print("importStatement: " + importStatement);
      String javaPath = javaFile.path;
      // win ?
      String fileSep = "/";

      String packagePathId = packageName.replaceAll(".", fileSep);
      int packagePathIndex = javaPath.indexOf(packagePathId);
      if (packagePathIndex < 0) {
        print("cannot find package path: ${packageName}");
        return;
      }

      String rootFilePath = javaPath.substring(0, packagePathIndex);
      String destFilePath =
          rootFilePath + importStatement.replaceAll(".", fileSep);
      if (destFilePath.endsWith(";")) {
        destFilePath = destFilePath.substring(0, destFilePath.length - 1);
      }

      print("init statement: " + destFilePath);

      bool isDir = destFilePath.endsWith("*");
      if (isDir) {
        destFilePath = destFilePath.replaceAll('${fileSep}*', fileSep);
      } else {
        destFilePath = destFilePath + ".java";
      }

      // new java file
      if (isDir) {
        Directory dir = new Directory(destFilePath);
        if (!dir.existsSync()) {
          return;
        }
        List<FileSystemEntity> dirSubFiles = dir.listSync();
        dirSubFiles.forEach((file) {
          if (file is File) {
            _initWithOneFile(file);
          }
        });
      }

      File destFile = new File(destFilePath);
      _initWithOneFile(destFile);
    });
    _isInit = true;
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
