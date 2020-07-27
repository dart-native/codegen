# codegen

[![NPM Version][npm-image]][npm-url]
[![Build Status](https://travis-ci.org/dart-native/codegen.svg?branch=master)](https://travis-ci.org/dart-native/codegen)


Generate Dart bindings from native code. It's based on [dart_native](https://pub.dev/packages/dart_native).

![](images/introduction.png)

You can use codegen to convert native SDK into Flutter SDK. Such as Login SDK:

![](images/login_sample.png)

Codegen is a part of DartNative. It's the cyan part(DartNative Codegen) in the picture below:

![](https://github.com/yulingtianxia/Blog-Hexo-Source/blob/master/source/resources/DartObjC/DartNative%20Future.png?raw=true)

It's still under development. Here's how it works:

![](images/theory.png)

## Installation

```
$ npm install -g @dartnative/codegen
```

## Usage

```
Usage: codegen [options] <input>

Generate dart code from native API.

Options:
  -V, --version                 output the version number
  -l, --language <language>     [objc, java, auto(default)] (default: "auto")
  -o, --output <output>         Output directory
  -t, --template <template>     Generate a shareable Flutter project containing
                                modular Dart code.
                                Specify the type of project to create:
                                [package, plugin]
  --project-name <projectName>  The project name for this new Flutter project.
                                This must be a valid dart package name.
  -h, --help                    display help for command
```

## License

[BSD 3-Clause License](https://github.com/dart-native/codegen/blob/master/LICENSE).


[npm-image]: https://img.shields.io/npm/v/@dartnative/codegen.svg
[npm-url]: https://npmjs.org/package/@dartnative/codegen