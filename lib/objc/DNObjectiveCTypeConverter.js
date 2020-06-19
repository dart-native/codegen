class DNObjectiveCTypeConverter {
    DNObjectiveCTypeConverter() {
        if (!DNObjectiveCTypeConverter.instance) {
            DNObjectiveCTypeConverter.instance = this
        }
        return DNObjectiveCTypeConverter.instance
    }

    convert(objcType, isMethodArg) {
        var rawObjcType = objcType
        //basic type not need to remove * symbol
        if(!DNObjectiveCTypeConverter.ObjcBasicType.includes(objcType)) {
            rawObjcType = objcType.replace(/\s+\*+/g,"")
        }
        var convertRet = DNObjectiveCTypeConverter.DNOCToDartMap[rawObjcType]
        convertRet = (!convertRet && !isMethodArg) ? DNObjectiveCTypeConverter.SupportMutableTypesMap[objcType] : convertRet
        return convertRet ? convertRet : rawObjcType
    }
}

//Not yet confirmed what type need to convert
DNObjectiveCTypeConverter.DNOCToDartMap = {
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
    'char *': 'CString',
    'NSString': 'String',
    'NSArray': 'List',
    'NSDictionary': 'Map',
    'NSSet': 'Set',
}

DNObjectiveCTypeConverter.basicAutoConvertReturnTypes = [
    'int',
    'double',
    'bool',
    'CString',
    'Pointer<Void>',
    // TODO: built-in Structs
]

DNObjectiveCTypeConverter.ObjcBasicType = [
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
]

//ignore mutable type
DNObjectiveCTypeConverter.DNDartToOCMap = {
    //  dart type            ||        objc type
    'String': 'NSString',
    'List': 'NSArray',
    'Map': 'NSDictionary',
    'Set': 'NSSet',
}

// dart-native support mutable types
DNObjectiveCTypeConverter.SupportMutableTypes = [
    'NSMutableString',
    'NSMutableArray',
    'NSMutableSet',
    'NSMutableDictionary'
]

DNObjectiveCTypeConverter.SupportMutableTypesMap = {
    'NSMutableString': 'String',
    'NSMutableArray': 'List',
    'NSMutableSet': 'Set',
    'NSMutableDictionary': 'Map'
}

exports.DNObjectiveCTypeConverter = DNObjectiveCTypeConverter