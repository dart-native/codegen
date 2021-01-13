typedef Callback = void Function(String dartCode, {String error});

class GenerateResult {
  /// Dart code generated from native code.
  final String dartCode;

  /// Dart code in this result may `import` other files with relative path.
  final List<String> moreFileDependencies;
  GenerateResult(this.dartCode, {this.moreFileDependencies});
}
