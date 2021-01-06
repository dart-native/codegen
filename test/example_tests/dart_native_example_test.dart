import 'dart:io';

import 'package:dart_native_codegen/src/main.dart';
import 'package:test/test.dart';

import '../util/check_result.dart';

void main() {
  group('DartNative Example E2E Test', () {
    setUpAll(() {
      // Clone DartNative
      bool exampleExists = Directory('test/temp/dart_native').existsSync();
      ProcessResult result;
      if (exampleExists) {
        // git pull
        result = Process.runSync('git', ['pull', '-f'],
            workingDirectory: 'test/temp/dart_native');
      } else {
        // git clone
        const String gitURL = 'https://github.com/dart-native/dart_native.git';
        result = Process.runSync('git',
            ['clone', '-b', 'develop', gitURL, 'test/temp/dart_native/']);
      }
      print(
          'clone dart_native. stdout: ${result.stdout}, stderr: ${result.stderr}');
    });

    test('Generate bindings from Objective-C code', () async {
      await run([
        '-i',
        'test/temp/dart_native/dart_native/example/ios/Runner/RuntimeStub.h',
        '-o',
        'test/temp/dart_native_example_test/',
        '--project-name',
        'objc_package',
        '-t',
        'plugin',
      ]);
      // TODO: Check generated code.
      // compareDartContent(file1, file2)
    });

    test('Generate bindings from Java code', () async {
      await run([
        '-i',
        'test/temp/dart_native/dart_native/example/android/app/src/main/java/com/dartnative/dart_native_example/RuntimeStub.java',
        '-o',
        'test/temp/dart_native_example_test',
        '--project-name',
        'java_package',
        '-t',
        'plugin',
      ]);
      // TODO: Check generated code.
    });
  });
}
