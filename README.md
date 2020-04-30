# codegen

[![NPM Version][npm-image]][npm-url]
[![Build Status](https://travis-ci.org/dart-native/codegen.svg?branch=master)](https://travis-ci.org/dart-native/codegen)


Generate Dart bindings from native code. It's based on [dart_native](https://pub.dev/packages/dart_native).

This is the cyan part(DartNative Codegen) in the picture below:
![](https://github.com/dart-native/dart_native/blob/master/images/dartnative.png?raw=true)

It's still under development.

## Installation

```
$ npm install -g @dartnative/codegen
```

## Usage

```
Usage: codegen [options] <input>

generate dart code from native api.

Options:
  -V, --version              output the version number
  -l, --language <language>  Input Language
  -o, --output <output>      Output directory
  -h, --help                 display help for command
```

## License

[BSD 3-Clause License](https://github.com/dart-native/codegen/blob/master/LICENSE).


[npm-image]: https://img.shields.io/npm/v/@dartnative/codegen.svg
[npm-url]: https://npmjs.org/package/@dartnative/codegen