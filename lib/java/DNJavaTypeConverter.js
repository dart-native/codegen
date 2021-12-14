export default class DNJavaTypeConverter {
    DNJavaTypeConverter() {
        if (!DNJavaTypeConverter.instance) {
            DNJavaTypeConverter.instance = this
        }
        return DNJavaTypeConverter.instance
    }

    convertToDartArgument(javaType, argName) {
        if (javaType == 'char') {
            return 'jchar(' + argName + '.codeUnitAt(0))'
        }
        if (javaType == 'int' || javaType == 'double' || javaType == 'boolean') {
            return argName;
        }

        var wrapperType = DNJavaTypeConverter.DNJava2DartWrapperTypeMap[javaType]
        if (wrapperType != null) {
            return wrapperType + '(' + argName + ')'
        }

        return argName
    }

    convertToDartInvoke(returnType) {
        var invokeType = DNJavaTypeConverter.DNDartInvokeMap[returnType]
        if (invokeType != null) {
            return 'invoke' + invokeType
        }

        return 'invokeObject<' + returnType + '>';
    }
}

DNJavaTypeConverter.DNJava2DartBasicTypeMap = {
    // java type | dart type
    'byte' : 'int',
    'short' : 'int',
    'char' : 'String',
    'int' : 'int',
    'long' : 'int',
    'float' : 'double',
    'double' : 'double',
    'boolean' : 'bool',
    'Set' : 'Set',
    'HashSet' : 'Set',
    'Map' : 'Map',
    'HashMap' : 'Map',
    'List' : 'List',
    'ArrayList' : 'List',
}


DNJavaTypeConverter.DNJava2DartWrapperTypeMap = {
    // java type | dart wrapper type
    'byte' : 'byte',
    'int' : 'int',
    'short' : 'short',
    'char' : 'jchar',
    'float' : 'float',
    'long' : 'long',
    'double' : 'double',
    'boolean' : 'boolean',
    'Set' : 'JSet',
    'HashSet' : 'JHashSet',
    'Map' : 'JMap',
    'HashMap' : 'JHashMap',
    'List' : 'JList',
    'ArrayList' : 'JArrayList',
    'Boolean' : 'JBoolean',
    'Byte' : 'JByte',
    'Character' : 'JCharacter',
    'Double' : 'JDouble',
    'Float' : 'JFloat',
    'Integer' : 'JInteger',
    'Long' : 'JLong',
    'Short' : 'JShort',
}

DNJavaTypeConverter.DNDartInvokeMap = {
    // java type | dart invoke type
    'int' : 'Int',
    'byte' : 'Byte',
    'short' : 'Short',
    'long' : 'Long',
    'char' : 'Char',
    'boolean' : 'Bool',
    'void' : 'Void',
    'String' : 'String',
    'float' : 'Float',
    'double' : 'Double',
    'Set' : 'Set',
    'HashSet' : 'HashSet',
    'Map' : 'Map',
    'HashMap' : 'HashMap',
    'List' : 'List',
    'ArrayList' : 'ArrayList',
}

DNJavaTypeConverter.javaBasicType = ['int', 'byte', 'short', 'long', 'char', 'boolean', 'float', 'double', 'void']