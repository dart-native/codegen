import 'dart:io';

import 'package:args/args.dart';
import 'package:dart_native_codegen/src/common.dart';
import 'package:dart_native_codegen/src/java/dn_java_generater.dart';
import 'package:dart_native_codegen/src/objc/dn_objectivec_generater.dart';
import 'package:glob/glob.dart';
import 'package:logging/logging.dart';
import 'package:path/path.dart' as p;
import 'package:pubspec/pubspec.dart';

class OptionNames {
  static const version = 'version';
  static const help = 'help';
  static const input = 'input';
  static const output = 'output';
  static const language = 'language';
  static const template = 'template';
  static const projectName = 'project-name';
}

class FlutterTemplates {
  static const package = 'package';
  static const plugin = 'plugin';
}

class Languages {
  static const java = 'java';
  static const objc = 'objc';
}

class Platforms {
  static const ios = 'ios';
  static const android = 'android';
}

class FileExtensions {
  static const java = 'java';
  static const header = 'h';
}

const Map<String, String> _extensionForLanguage = {
  Languages.java: FileExtensions.java,
  Languages.objc: FileExtensions.header
};

const Map<String, String> _platformForLanguage = {
  Languages.java: Platforms.android,
  Languages.objc: Platforms.ios
};

typedef Generate = Future<GenerateResult> Function(GenerateRequest content);

const Map<String, Generate> _convertForLanguage = {
  Languages.java: DNJavaGenerater.generate,
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
        logger.info('0.0.1');
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
        logger.info(parser.usage);
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
  bool generatePackage = template != null && projectName != null;
  if (generatePackage) {
    workspace = p.join(workspace, projectName);
    createFlutter(template, projectName, workspace);
    workspace = p.join(workspace, 'lib');
  }

  // process native files and return packages depended.
  var packageDependencies = await processInput(input, workspace, language);

  // format generated dart files.
  formatDart(workspace);

  // add packages dependency
  if (generatePackage) {
    // back to parent.
    workspace = p.dirname(workspace);
    await updatePackageDependencies(packageDependencies, Directory(workspace));
  }
}

/// Generate dart code from [input] file/directory.
///
/// Input code may depend on other files. This function would process files in
/// relative path recursively. Packages depended by input code will be returned.
Future<Set<String>> processInput(
    String input, String savePath, List<String> languages,
    {String inputRoot}) async {
  Set<String> packageDependencies = Set();
  for (var l in languages) {
    String ext = _extensionForLanguage[l];
    List<String> files = [];
    if (File(input).existsSync()) {
      if (inputRoot == null) {
        inputRoot = p.dirname(input);
      }
      files = [input];
    } else if (Directory(input).existsSync()) {
      if (inputRoot == null) {
        inputRoot = input;
      }
      files = Glob('**.$ext').listSync(root: input).map((e) => e.path).toList();
    }
    for (String file in files) {
      Generate generate = _convertForLanguage[l];
      if (generate != null) {
        String content = File(file).readAsStringSync();
        try {
          var request = GenerateRequest(inputRoot, file, content);
          var result = await generate(request);
          packageDependencies.addAll(result.packageDependencies ?? []);
          var platform = _platformForLanguage[l];
          saveDartCode(
              result.dartCode, inputRoot, file, p.join(savePath, platform));
          for (var f in result.fileDependencies) {
            if (p.isRelative(f)) {
              f = p.normalize(p.join(p.dirname(file), f));
            }
            var packages = await processInput(f, savePath, languages,
                inputRoot: inputRoot);
            packageDependencies.addAll(packages ?? []);
          }
        } catch (e) {
          logger.severe('filePath: ${file}\nerror: $e');
        }
      }
    }
  }
  return packageDependencies;
}

void saveDartCode(String dartCode, String sourceRootPath, String sourcePath,
    String workspace) {
  String fileName =
      p.setExtension(p.basenameWithoutExtension(sourcePath), '.dart');
  String dirPath = p.join(
      workspace, p.dirname(p.relative(sourcePath, from: sourceRootPath)));
  Directory(dirPath).createSync(recursive: true);
  String dartPath = p.join(dirPath, fileName);
  File(dartPath).writeAsStringSync(dartCode);
}

Future<void> updatePackageDependencies(
    Set<String> packages, Directory workspace) async {
  var pubspec = await PubSpec.load(workspace);
  var dependencies = pubspec.dependencies;
  for (var p in packages) {
    dependencies[p] = DependencyReference.fromJson('any');
  }
  await pubspec.copy(dependencies: dependencies).save(workspace);
}

void createFlutter(String template, String projectName, String output) {
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
