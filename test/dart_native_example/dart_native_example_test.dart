import 'dart:io';

import 'package:dart_native_codegen/src/common.dart';
import 'package:dart_native_codegen/src/main.dart';
import 'package:test/test.dart';
import 'package:path/path.dart' as p;

import '../util/check_result.dart';

void main() {
  const dartNativeRootPath = '.temp/dart_native_example_test/dart_native';
  String exampleRootPath = p.join(dartNativeRootPath, 'dart_native/example');
  const workspace = '.temp/dart_native_example_test/';

  group('DartNative Example E2E Test', () {
    setUpAll(() {
      // Clone DartNative
      bool exampleExists = Directory(dartNativeRootPath).existsSync();
      ProcessResult result;
      if (exampleExists) {
        // git pull
        result = Process.runSync('git', ['pull', '-f'],
            workingDirectory: dartNativeRootPath);
      } else {
        // git clone
        const String gitURL = 'https://github.com/dart-native/dart_native.git';
        result = Process.runSync(
            'git', ['clone', '-b', 'develop', gitURL, dartNativeRootPath]);
      }
      logger.info(
          '${exampleExists ? 'update' : 'clone'} dart_native. stdout: ${result.stdout}, stderr: ${result.stderr}');
    });

    test('Generate bindings from Objective-C code', () async {
      const projectName = 'objc_plugin';

      await run([
        '-i',
        p.join(exampleRootPath, 'ios/Runner/RuntimeStub.h'),
        '-o',
        workspace,
        '--project-name',
        projectName,
        '-t',
        'plugin',
      ]);

      const commonPath = 'lib/ios/runtimestub.dart';
      bool result = compareDartContent(p.join(exampleRootPath, commonPath),
          p.join(workspace, projectName, commonPath));
      expect(result, true);
    });

    test('Generate bindings from Java code', () async {
      const projectName = 'java_plugin';

      await run([
        '-i',
        p.join(exampleRootPath,
            'android/app/src/main/java/com/dartnative/dart_native_example/RuntimeStub.java'),
        '-o',
        workspace,
        '--project-name',
        projectName,
        '-t',
        'plugin',
      ]);

      const commonPath = 'lib/android/runtimestub.dart';
      bool result = compareDartContent(p.join(exampleRootPath, commonPath),
          p.join(workspace, projectName, commonPath));
      expect(result, true);
    });
  });
}
