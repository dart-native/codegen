import 'package:logging/logging.dart';

typedef Callback = void Function(String dartCode, {String error});

class GenerateRequest {
  /// Input file path.
  final String filePath;

  /// Input file content.
  final String fileContent;
  GenerateRequest(this.filePath, this.fileContent);
}

class GenerateResult {
  /// Dart code generated from native code.
  final String dartCode;

  /// Dart code in this result may `import` other files with relative path.
  final List<String> moreFileDependencies;
  GenerateResult(this.dartCode, {this.moreFileDependencies});
}

final logger = Logger('Codegen');
