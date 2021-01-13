import 'package:dart_native_codegen/src/main.dart';
import 'package:test/test.dart';
import '../util/check_result.dart';

void main() {
  group('DartNative Example E2E Test', () {
    test('Generate bindings from Objective-C code', () async {
      await run([
        '-i',
        'example/objc/',
        '-o',
        'test/temp/local_example_test/',
        '--project-name',
        'objc_package',
        '-t',
        'plugin',
      ]);
      // TODO: Check generated code.
    });

    test('Generate bindings from Java code', () async {
      await run([
        '-i',
        'example/java/com/dartnative/dart_native_example/DNJavaSample.java',
        '-o',
        'test/temp/local_example_test/',
        '--project-name',
        'java_package',
        '-t',
        'plugin',
        '-l',
        'java',
      ]);
      // TODO: Check generated code.
    });
  });
}
