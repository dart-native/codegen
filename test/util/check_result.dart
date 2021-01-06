import 'dart:io';

bool compareDartContent(String file1, String file2) {
  String content1 = File(file1).readAsStringSync();
  String content2 = File(file2).readAsStringSync();
  // TODO: delete whitespace: \r\n
  if (content1 != content2) {
    return false;
  }
  return true;
}
