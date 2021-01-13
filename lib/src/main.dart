import 'dart:io';

import 'package:args/args.dart';
import 'package:dart_native_codegen/src/common.dart';
import 'package:dart_native_codegen/src/java/DartJavaCompiler.dart';
import 'package:dart_native_codegen/src/java/dn_java_generater.dart';
import 'package:dart_native_codegen/src/objc/dn_objectivec_generater.dart';
import 'package:glob/glob.dart';
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

class Languages {
  static const String java = 'java';
  static const String objc = 'objc';
}

class FileExtensions {
  static const String java = 'java';
  static const String header = 'h';
}

const Map<String, String> _extensionForLanguage = {
  Languages.java: FileExtensions.java,
  Languages.objc: FileExtensions.header
};

typedef Generate = Future<GenerateResult> Function(String content);

const Map<String, Generate> _convertForLanguage = {
  // Languages.java: DNJavaConverter.convert,
  Languages.objc: DNObjectiveCGenerater.generate,
};

var parser = ArgParser()
  ..addFlag(
    OptionNames.version,
    abbr: OptionNames.version[0],
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
    abbr: OptionNames.help[0],
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
    abbr: OptionNames.input[0],
    defaultsTo: p.current,
    help: 'The input directory',
  )
  ..addOption(
    OptionNames.output,
    abbr: OptionNames.output[0],
    defaultsTo: p.current,
    help: 'The output path.',
  )
  ..addMultiOption(
    OptionNames.language,
    abbr: OptionNames.language[0],
    allowedHelp: {
      Languages.objc: 'Generate Dart code from Objective-C.',
      Languages.java: 'Generate Dart code from Java.',
    },
    defaultsTo: [Languages.objc, Languages.java],
    help: 'The language to be processed.',
  )
  ..addOption(
    OptionNames.template,
    abbr: OptionNames.template[0],
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

Future<void> run(List<String> args) async {
  ArgResults results = parser.parse(args);

  if (results[OptionNames.help] || results[OptionNames.version]) {
    return;
  }

  Logger.root.level = Level.ALL;
  Logger.root.onRecord.listen((record) {
    print('${record.level.name}: ${record.time}: ${record.message}');
  });

  // get parameters
  final String input = results[OptionNames.input];
  final String output = results[OptionNames.output];
  final List<String> language = results[OptionNames.language];
  final String template = results[OptionNames.template];
  final String projectName = results[OptionNames.projectName];
  logger.info(
      'codegen parameters. input: $input, output: $output, language: $language, template: $template, projectName: $projectName');
  // create directory for output path.
  Directory(output).createSync(recursive: true);
  String workspace = p.join(p.current, output);
  if (template != null && projectName != null) {
    workspace = p.join(workspace, projectName);
    createFlutter(template, projectName, workspace);
    workspace = p.join(workspace, 'lib');
  }

  await processPath(input, workspace, language);

  // format generated dart files.
  formatDart(workspace);

  // add dependency
  if (projectName != null) {
    String pubspecPath = '$workspace/pubspec.yaml';
    updatePubspec(pubspecPath);
  }
}

Future<void> processPath(
    String input, String workspace, List<String> language) async {
  for (var l in language) {
    String ext = _extensionForLanguage[l];
    List<String> files;
    if (File(input).existsSync()) {
      files = [input];
    } else {
      files = Glob('**.$ext').listSync(root: input).map((e) => e.path).toList();
    }
    for (String file in files) {
      Generate generate = _convertForLanguage[l];
      if (generate != null) {
        String content = File(file).readAsStringSync();
        try {
          var result = await generate(content);
          saveDartCode(result.dartCode, file, p.join(workspace, l));
          for (var f in result.moreFileDependencies) {
            await processPath(f, workspace, language);
          }
        } catch (e) {
          logger.severe('filePath: ${file}\nerror: $e');
        }
      }
    }
  }
}

void saveDartCode(String dartCode, String sourcePath, String workspace) {
  Directory(workspace).createSync();
  String fileName =
      p.setExtension(p.basenameWithoutExtension(sourcePath), '.dart');
  String dartPath = p.join(workspace, fileName);
  File(dartPath).writeAsStringSync(dartCode);
}

void updatePubspec(String path) {
  // TODO: update pubspec
}

void createFlutter(String template, String projectName, String output) {
  // TODO: test output path
  Directory(output).createSync(recursive: true);
  String command = 'create --template=$template --project-name=$projectName';
  if (template == FlutterTemplates.plugin) {
    command += ' --platforms=android,ios';
  }
  command += ' $output';
  Process.runSync('flutter', command.split(' ')).log();
}

void formatDart(String path) {
  Process.runSync('flutter', ['format', path]).log();
}

extension LogProcessResult on ProcessResult {
  void log() {
    if (this.stdout != null) {
      logger.info(this.stdout);
    } else if (this.stderr != null) {
      logger.severe(this.stderr);
    }
  }
}
