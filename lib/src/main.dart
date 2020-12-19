import 'package:args/args.dart';
import 'package:path/path.dart' as p;

class OptionNames {
  static const String version = 'version';
  static const String help = 'help';
  static const String input = 'input';
  static const String output = 'output';
  static const String language = 'language';
  static const String template = 'template';
  static const String projectName = 'project-name';
}

var parser = ArgParser()
  ..addFlag(
    OptionNames.version,
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
    OptionNames.help,
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
    OptionNames.input,
    abbr: 'i',
    defaultsTo: p.current, // TODO: current path
    help: 'The input directory',
  )
  ..addOption(
    OptionNames.output,
    abbr: 'o',
    defaultsTo: p.current, // TODO: current path
    help: 'The output path.',
  )
  ..addMultiOption(
    OptionNames.language,
    abbr: 'l',
    allowedHelp: {
      'objc': 'Generate Dart code from Objective-C.',
      'java': 'Generate Dart code from Java.',
    },
    defaultsTo: ['objc', 'java'],
    help: 'The language to be processed.',
  )
  ..addMultiOption(
    OptionNames.template,
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
    OptionNames.projectName,
    help:
        'The project name for this new Flutter project. This must be a valid dart package name.',
  );

void run(List<String> args) {
  ArgResults results = parser.parse(args);
  // TODO: use results
  String input = results[OptionNames.input];
  if (input != null) {
    print(input);
  }
}
