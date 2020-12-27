import 'dart:io';

import 'package:args/args.dart';
import 'package:logging/logging.dart';
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

class FlutterTemplates {
  static const String package = 'package';
  static const String plugin = 'plugin';
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
  ..addOption(
    OptionNames.template,
    abbr: 't',
    allowedHelp: {
      FlutterTemplates.package:
          'Generate a shareable Flutter project containing modular Dart code.',
      FlutterTemplates.plugin:
          'Generate a shareable Flutter project containing an API in Dart code with a platform-specific implementation for Android, for iOS code, or for both.',
    },
    help: 'Specify the type of project to create.',
  )
  ..addOption(
    OptionNames.projectName,
    help:
        'The project name for this new Flutter project. This must be a valid dart package name.',
  );

final logger = Logger('Codegen');

void run(List<String> args) {
  ArgResults results = parser.parse(args);

  if (results[OptionNames.help] || results[OptionNames.version]) {
    return;
  }

  Logger.root.level = Level.ALL;
  Logger.root.onRecord.listen((record) {
    print('${record.level.name}: ${record.time}: ${record.message}');
  });

  // get parameters
  String input = results[OptionNames.input];
  String output = results[OptionNames.output];
  List<String> language = results[OptionNames.language];
  String template = results[OptionNames.template];
  String projectName = results[OptionNames.projectName];
  logger.info(
      'codegen parameters. input: $input, output: $output, language: $language, template: $template, projectName: $projectName');
  // create directory for output path.
  Directory(output).createSync(recursive: true);

  if (template != null && projectName != null) {
    createFlutter(template, projectName, output);
  }

  // format generated dart files.
  formatDart(output);
}

void createFlutter(String template, String projectName, String output) {
  // TODO: test output path
  String command =
      'flutter create --template=$template --project-name=$projectName';
  if (template == FlutterTemplates.plugin) {
    command += ' --platforms=android,ios';
  }
  command += ' $output';
  Process.runSync(command, []).log();
}

void formatDart(String path) {
  Process.runSync('flutter format', [path]).log();
}

extension LogProcessResult on ProcessResult {
  void log() {
    if (this.stdout) {
      logger.info(this.stdout);
    } else if (this.stderr) {
      logger.severe(this.stderr);
    }
  }
}
