import 'package:dart_native_codegen/src/main.dart';
import 'package:test/test.dart';

void main() {
  group('DartNative Example E2E Test', () {
    test('Generate bindings from Objective-C code', () {
      run([
        '-i',
        'example/objc/',
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
        'example/java/',
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
