import 'dart:io';

import 'package:dart_native_codegen/src/common.dart';

bool compareDartContent(String file1, String file2) {
  try {
    String content1 = File(file1)
        .readAsStringSync()
        .replaceAll(new RegExp(r'\s+|\n+|\r+'), '');
    String content2 = File(file2)
        .readAsStringSync()
        .replaceAll(new RegExp(r'\s+|\n+|\r+'), '');
    if (content1 != content2) {
      return false;
    }
    return true;
  } catch (e) {
    logger.info(e.toString());
    return false;
  }
}
