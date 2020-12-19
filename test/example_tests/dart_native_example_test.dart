import 'dart:io';

import 'package:dart_native_codegen/src/main.dart';
import 'package:test/test.dart';

void main() {
  group('DartNative Example E2E Test', () {
    setUpAll(() {
      // Clone DartNative
      Process.runSync('rm', ['-rf', 'test/temp/dart_native']);
      const String gitURL = 'https://github.com/dart-native/dart_native.git';
      ProcessResult result = Process.runSync(
          'git', ['clone', '-b', 'develop', gitURL, 'test/temp']);
      print(result.stdout);
      print(result.stderr);
    });

    test('Generate bindings from Objective-C code', () {
      run([
        '-i',
        'test/temp/dart_native/dart_native/example/ios/Runner/RuntimeStub.h',
        '-o',
        'test/temp/dart/objc',
        '--project-name',
        'my_package',
        '-t',
        'plugin',
      ]);
      // TODO: Check generated code.
    });

    test('Generate bindings from Java code', () {
      run([
        '-i',
        'test/temp/dart_native/dart_native/example/android/app/src/main/java/com/dartnative/dart_native_example/RuntimeStub.java',
        '-o',
        'test/temp/dart/java',
        '--project-name',
        'my_package',
        '-t',
        'plugin',
      ]);
      // TODO: Check generated code.
    });
  });
}
