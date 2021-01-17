import 'package:logging/logging.dart';

typedef Callback = void Function(String dartCode, {String error});

class GenerateRequest {
  /// Input root path.
  final String inputRootPath;

  /// Input file path.
  final String filePath;

  /// Input file content.
  final String fileContent;
  GenerateRequest(this.inputRootPath, this.filePath, this.fileContent);
}

class GenerateResult {
  /// Dart code generated from native code.
  final String dartCode;

  /// Dart code in this result may `import` other packages.
  ///
  /// List of package's name.
  final Set<String> packageDependencies;

  /// Dart code in this result may `import` other files with relative path.
  ///
  /// List of absolute path or relative path from result file.
  final List<String> fileDependencies;
  GenerateResult(this.dartCode,
      {this.packageDependencies, this.fileDependencies});
}

final logger = Logger('Codegen');
