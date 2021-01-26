# dart_native_codegen

[![pub package](https://img.shields.io/pub/v/dart_native_codegen.svg)](https://pub.dev/packages/dart_native_codegen)
[![Build Status](https://github.com/dart-native/codegen/workflows/Dart%20CI/badge.svg)](https://github.com/dart-native/codegen/actions?query=workflow%3A"Dart+CI")
[![Coverage Status](https://coveralls.io/repos/github/dart-native/codegen/badge.svg?branch=master)](https://coveralls.io/github/dart-native/codegen?branch=master)


Generate Dart bindings from native code. It's based on [dart_native](https://pub.dev/packages/dart_native).

![](images/introduction.png)

You can use codegen to convert native SDK into Flutter SDK. Such as Login SDK:

![](images/login_sample.png)

Codegen is a part of DartNative. It's the cyan part(DartNative Codegen) in the picture below:

![](https://github.com/yulingtianxia/Blog-Hexo-Source/blob/master/source/resources/DartObjC/DartNative%20Future.png?raw=true)

It's still under development. Here's how it works:

![](images/theory.png)

Test Sample:

* flutter pub run dart_native_codegen -i example -o out