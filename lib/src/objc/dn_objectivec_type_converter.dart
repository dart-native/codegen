import 'dart:core';

class DNObjectiveCTypeConverter {
  static final DNObjectiveCTypeConverter _instance =
      DNObjectiveCTypeConverter._internal();
  DNObjectiveCTypeConverter._internal();
  factory DNObjectiveCTypeConverter() => _instance;
  static DNObjectiveCTypeConverter get shared => _instance;

  convert(String objcType, [bool isTypeInBlock = false]) {
    String result = objcType;
    //basic type not need to remove * symbol
    if (!basicType.contains(result)) {
      result.replaceAll(RegExp(r"/\s+\*+/g"), '');
    }
    var convertRet;
    if (isTypeInBlock) {
      convertRet = blockTypeToDartMap[result];
    } else {
      convertRet = builtinTypeToDartMap[result];
    }
    return convertRet != null ? convertRet : result;
  }

  //Not yet confirmed what type need to convert
  static final Map<String, String> builtinTypeToDartMap = {
    //   objc type            ||        dart type
    'int8_t': 'int',
    'int16_t': 'int',
    'int32_t': 'int',
    'int64_t': 'int',
    'uint8_t': 'int',
    'uint16_t': 'int',
    'uint32_t': 'int',
    'uint64_t': 'int',
    'intptr_t': 'int',
    'uintptr_t': 'int',
    'float': 'double',
    'CGFloat': 'double',
    'id': 'NSObject',
    'BOOL': 'bool',
    '_Bool': 'bool',
    'void *': 'Pointer<Void>',
    'char *': 'String',
    'NSString': 'String',
    'NSArray': 'List',
    'NSDictionary': 'Map',
    'NSSet': 'Set',
  };

  static final Map<String, String> blockTypeToDartMap = {
    //   objc type            ||        dart type
    '_Bool': 'BOOL',
    'void *': 'Pointer<Void>',
    'char *': 'CString',
  };

  static final List<String> basicAutoConvertReturnTypes = [
    'int',
    'double',
    'bool',
    'CString',
    'Pointer<Void>',
    // TODO: built-in Structs
  ];

  static final List<String> basicType = [
    'void',
    'void *',
    'int',
    'int8_t',
    'int16_t',
    'int32_t',
    'int64_t',
    'uint8_t',
    'uint16_t',
    'uint32_t',
    'uint64_t',
    'char',
    'char *',
    'unsigned char',
    'short',
    'unsigned short',
    'long',
    'unsigned long',
    'long long',
    'unsigned long long',
    'NSInteger',
    'NSUInteger',
    'size_t',
    'float',
    'double',
    'CGFloat',
    'BOOL',
    'bool',
    '_Bool'
  ];

  //ignore mutable type
  static final Map<String, String> dartToOCMap = {
    //  dart type            ||        objc type
    'String': 'NSString',
    'List': 'NSArray',
    'Map': 'NSDictionary',
    'Set': 'NSSet',
  };

  // dart-native support mutable types
  static final List<String> supportMutableTypes = [
    'NSMutableString',
    'NSMutableArray',
    'NSMutableSet',
    'NSMutableDictionary'
  ];

  static final Map<String, String> supportMutableTypesMap = {
    'NSMutableString': 'String',
    'NSMutableArray': 'List',
    'NSMutableSet': 'Set',
    'NSMutableDictionary': 'Map'
  };
}
