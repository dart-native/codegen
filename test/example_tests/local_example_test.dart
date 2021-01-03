import 'package:dart_native_codegen/src/main.dart';
import 'package:test/test.dart';

void main() {
  group('DartNative Example E2E Test', () {
    test('Generate bindings from Objective-C code', () async {
      await run([
        '-i',
        'example/objc/',
        '-o',
        'test/temp/local_example_test/',
        '--project-name',
        'oc_package',
        '-t',
        'plugin',
      ]);
      // TODO: Check generated code.
    });

    test('Generate bindings from Java code', () async {
      await run([
        '-i',
        'example/java/',
        '-o',
        'test/temp/local_example_test/',
        '--project-name',
        'java_package',
        '-t',
        'plugin',
      ]);
      // TODO: Check generated code.
    });
  });
}
