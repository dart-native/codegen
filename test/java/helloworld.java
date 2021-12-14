package com.dartnative.dart_native_example;

public class RuntimeStub {

  public int getInt(int i){
    return 100;
  }

  public double getDouble(double b) {
    return 100.23;
  }

  public byte getByte(byte b) {
    return 1;
  }

  public float getFloat(float f) {
    return 9.8f;
  }

  public char getChar(char c) {
    return 'b';
  }

  public short getShort(short s) {
    return 1;
  }

  public long getLong(long l) {
    return 1;
  }

  public boolean getBool(boolean b) {
    return false;
  }

  public int add(int a, int b) {
    return a + b;
  }

  public void log(String tag, String message) {}

  public boolean complexCall(String s, int i, char c, double d, float f, byte b, short sh, long l, boolean bool) {
    return true;
  }

  public String getString(String s) {
    return "test success";
  }

  public HashSet<String> getHash(HashSet<String> bts) {
    return new HashSet<String>();
  }
}
