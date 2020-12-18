import 'package:args/args.dart';

var parser = ArgParser()
  ..addFlag(
    'version',
    abbr: 'v',
    negatable: false,
    help: 'verion.',
    callback: (version) {
      if (version) {
        print('0.0.1');
      }
    },
  )
  ..addFlag(
    'help',
    abbr: 'h',
    negatable: false,
    help: 'help.',
    callback: (help) {
      if (help) {
        print(parser.usage);
      }
    },
  )
  ..addOption(
    'input',
    abbr: 'i',
    defaultsTo: 'current path', // TODO: current path
    help: 'The input directory',
  )
  ..addOption(
    'output',
    abbr: 'o',
    defaultsTo: 'current path', // TODO: current path
    help: 'The output path.',
  )
  ..addMultiOption(
    'language',
    abbr: 'l',
    allowedHelp: {
      'objc': 'Generate Dart code from Objective-C.',
      'java': 'Generate Dart code from Java.',
    },
    defaultsTo: ['objc', 'java'],
    help: 'The language to be processed.',
  )
  ..addMultiOption(
    'template',
    abbr: 't',
    allowedHelp: {
      'package':
          'Generate a shareable Flutter project containing modular Dart code.',
      'plugin':
          'Generate a shareable Flutter project containing an API in Dart code with a platform-specific implementation for Android, for iOS code, or for both.',
    },
    help: 'Specify the type of project to create.',
  )
  ..addOption(
    'project-name',
    help:
        'The project name for this new Flutter project. This must be a valid dart package name.',
  );

void run(List<String> args) {
  ArgResults results = parser.parse(args);
  print(results.toString());
  // TODO: use results
}
