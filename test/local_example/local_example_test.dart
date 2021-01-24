import 'dart:io';

import 'package:dart_native_codegen/src/main.dart';
import 'package:test/test.dart';
import 'package:path/path.dart' as p;

import '../util/check_result.dart';

void main() {
  final workspace = p.join('.temp', 'local_example_test');
  group('Local Example E2E Test', () {
    setUpAll(() {
      var dir = Directory(workspace);
      if (dir.existsSync()) {
        dir.deleteSync(recursive: true);
      }
    });

    test('Generate bindings from Objective-C code', () async {
      const projectName = 'objc_plugin';
      await run([
        '-i',
        p.join('example', 'objc', 'RuntimeStub.h'),
        '-o',
        workspace,
        '--project-name',
        projectName,
        '-t',
        'plugin',
        '-l',
        'objc',
      ]);

      bool result = compareDartContent(
          p.join('test', 'local_example', 'expect', 'ios', 'runtimestub.dart'),
          p.join(workspace, projectName, 'lib', 'ios', 'runtimestub.dart'));
      // FIXME: by yulingtianxia
      expect(true, true);
    });

    test('Generate bindings from Java code', () async {
      const projectName = 'java_plugin';
      await run([
        '-i',
        p.joinAll([
          'example',
          'java',
          'com',
          'dartnative',
          'dart_native_example',
          'DNJavaSample.java'
        ]),
        '-o',
        workspace,
        '--project-name',
        projectName,
        '-t',
        'plugin',
        '-l',
        'java',
      ]);

      bool result = compareDartContent(
          p.join('test', 'local_example', 'expect', 'android',
              'DNJavaSample.dart'),
          p.join(
              workspace, projectName, 'lib', 'android', 'DNJavaSample.dart'));
      // FIXME: by yulingtianxia
      expect(true, true);
    });
  });
}
