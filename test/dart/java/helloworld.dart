import 'package:dart_native/dart_native.dart';
import 'package:dart_native_gen/dart_native_gen.dart';

class RuntimeStub extends JObject {
  RuntimeStub() : super("com/dartnative/dart_native_example/RuntimeStub");

  int getInt(int i) {
    return invoke('getInt', [i], 'I');
  }

  double getDouble(double b) {
    return invoke('getDouble', [b], 'D');
  }

  int getByte(int b) {
    return invoke('getByte', [byte(b)], 'B');
  }

  double getFloat(double f) {
    return invoke('getFloat', [float(f)], 'F');
  }

  String getChar(String c) {
    return invoke('getChar', [char(c.codeUnitAt(0))], 'C');
  }

  int getShort(int s) {
    return invoke('getShort', [short(s)], 'S');
  }

  int getLong(int l) {
    return invoke('getLong', [long(l)], 'J');
  }

  bool getBool(bool b) {
    return invoke('getBool', [b], 'Z');
  }

  int add(int a, int b) {
    return invoke('add', [a, b], 'I');
  }

  void log(String tag, String message) {
    return invoke('log', [tag, message], 'V');
  }

  bool complexCall(String s, int i, String c, double d, double f, int b, int sh,
      int l, bool bool) {
    return invoke(
        'complexCall',
        [
          s,
          i,
          char(c.codeUnitAt(0)),
          d,
          float(f),
          byte(b),
          short(sh),
          long(l),
          bool
        ],
        'Z');
  }

  String getString(String s) {
    return invoke('getString', [s], 'Ljava/lang/String;');
  }
}
