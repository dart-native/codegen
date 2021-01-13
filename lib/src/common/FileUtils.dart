import 'dart:io';

import 'package:path/path.dart' as p;

class FileUtils {
  static void saveDartCode(String dartCode, String sourcePath, String workspace) {
    Directory(workspace).createSync();
    String fileName =
        p.setExtension(p.basenameWithoutExtension(sourcePath), '.dart');
    String dartPath = p.join(workspace, fileName);
    File(dartPath).writeAsStringSync(dartCode);
  }

  static isFile(String path) {
    return new File(path).existsSync();
  }
}
