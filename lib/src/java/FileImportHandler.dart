import 'dart:io';

enum _FileType { SOURCE, JAR, UNKNOWN }

// 文件属性
class _FileEntity {
  _FileType fileType = _FileType.UNKNOWN;
  String filePath;
  String fileName;
}

// import属性
class _ImportEntity extends _FileEntity {
  String statement = '';

  // 在source下才有值，表示该import下所有的文件集
  List<_FileEntity> importFiles = [];

  void populate(ClassEntity refClassEntity) async {
    String refPackage = refClassEntity.packageName;
    String refPath = refClassEntity.filePath;

    // win ?
    String fileSep = "/";
    String rootFilePath =
        refPath.replaceAll(refPackage.replaceAll(".", fileSep), "");
    String destFilePath =
        rootFilePath + fileSep + statement.replaceAll(".", fileSep);

    if (destFilePath.endsWith("*")) {
      destFilePath = destFilePath.replaceAll('${fileSep}*', fileSep);
    } else {
      // kotlin ?
      destFilePath = destFilePath + ".java";
    }

    File destFile = new File(destFilePath);
    bool exist = await destFile.exists();
    if (!exist) {
      fileType = _FileType.JAR;
    } else {
      fileType = _FileType.SOURCE;
      filePath = destFilePath;
      fileName = destFilePath.split(fileSep).last;
      // dir ? file ?
    }
  }
}

// class属性
class ClassEntity extends _FileEntity {
  String packageName;
  String className;
  List<String> importsStr = [];
  List<_ImportEntity> importClasses = [];

  Map<String, ClassEntity> idClassInfo = {};

  void addImport(String import) {
    importsStr.add(import);
  }

  // 增加
  void addID(String idClassName) {
    ClassEntity newClassEntity = new ClassEntity();
    newClassEntity.className = idClassName;
    idClassInfo[idClassName] = newClassEntity;
  }

  void populate() async {
    if (filePath == null) {
      fileType = _FileType.JAR;
      idClassInfo.forEach((k, v) {
        v.fileType = _FileType.JAR;
      });
      return;
    }
    fileType = _FileType.SOURCE;
    _populateImport();
  }

  void _populateImport() async {
    // 如果 A -> B，A和B位于同一文件层级下，则A可以不写import B，为了归一处理，这里
    importsStr.add(packageName + ".*");
    importsStr.forEach((importStr) {
      _ImportEntity _importEntity = new _ImportEntity();
      _importEntity.statement = importStr;
      _importEntity.populate(this);
    });
  }
}
