import DNJavaTypeConverter from './DNJavaTypeConverter.js'

let JC = new DNJavaTypeConverter
export class DNContext {
    constructor(internal) {
        this.internal = internal
        this.parent = null
        this.children = []
    }

    addChild(ctx) {
        ctx.parent = this
        this.children.push(ctx)
    }

    parse() {
        return ''
    }
}

var packageName = ''
var basic_type_signature = new Map([
    ['char', 'C'],
    ['int', 'I'],
    ['double', 'D'],
    ['float', 'F'],
    ['byte', 'B'],
    ['short', 'S'],
    ['long', 'J'],
    ['boolean', 'Z'],
    ['void', 'V']
])

var intArray = ['short', 'byte', 'long']

var basic_type_conversion = function (type) {
    if(type === 'float') return 'double'
    
    if(intArray.includes(type)) return 'int'

    if(type === 'boolean') return 'bool'

    return type;
}

var basic_type_wrapper = ['byte', 'short', 'long', 'long', 'float', 'char']

export class DNArgumentContext extends DNContext {
    constructor(internal, name, type) {
        super(internal)
        this.name = name
        this.type = type
    }
}

export class DNMethodContext extends DNContext {
    constructor(internal) {
        super(internal)
        var internalChildren = internal.children[1].children
        this.methodName = internalChildren[1].start.text
        this.returnType = internalChildren[0].start.text
        this.args = []
    }

    parse() {
        var type = DNJavaTypeConverter.DNJava2DartBasicTypeMap[this.returnType]
        var result = '\n  ' + (type == null ? this.returnType : type) + ' ' + this.methodName + '(' + this.methodArgs() + ')' + ' {\n'
        result += '    ' + this.methodImpl()
        result += '  }'
        return result
    }

    methodImpl() {
        // this.basicTypeWrapper()
        var callerPrefix = JC.convertToDartInvoke(this.returnType) + '(\'' + this.methodName + '\', '
        var args = 'args: [' + this.basicTypeWrapper() + '] '
        return 'return ' + callerPrefix + args + ');\n'
    }

    basicTypeWrapper() {
        var types = this.args.map(arg => arg.type)
        var argNames = this.args.map(arg => arg.name)
        var wrapperArgs = ''
        for(var i = 0; i < argNames.length; i++) {
            wrapperArgs += JC.convertToDartArgument(types[i], argNames[i]);
            if(i != argNames.length - 1) {
                wrapperArgs += ','
            }
        }
        return wrapperArgs
    }

    methodArgs() {
        var argList = ''
        this.args.forEach((element, index) => {
            var argType = DNJavaTypeConverter.DNJava2DartBasicTypeMap[element.type]
            argList += (argType == null ? element.type : argType) + ' ' + element.name
            if(index != this.args.length - 1){
                argList += ','
            }
        })
        return argList
    }
}


export class DNClassContext extends DNContext {
    constructor(internal) {
        super(internal)
        var internalChildren = internal.children[0]
        this.name = internalChildren.children[2].start.text
        this.superClass = []
        this.methods = []
        this.args = []
    }

    parse() {
        var result = '@native(javaClass: \'' + packageName + this.name + '\')\n'
        result += 'class ' + this.name + ' extends JObject'
        result += ' {\n'
        if (this.args.length != 0) {
            result += this.name + '.withParameters(' + this.methodArgs() + ') : super(args: [' + this.basicTypeWrapper() + ']);\n'
        } else {
            result += this.name + '() : super();\n'
        } 
        result += this.name + '.fromPointer(Pointer<Void> pointer) : super.fromPointer(pointer);\n'
        this.methods.forEach(element => {
            var parseRet = element.parse()
            result += parseRet ? parseRet + '\n' : ''
        })
        result += '\n}'
        return result
    }

    methodArgs() {
        var argList = ''
        this.args.forEach((element, index) => {
            var argType = DNJavaTypeConverter.DNJava2DartBasicTypeMap[element.type]
            argList += (argType == null ? element.type : argType) + ' ' + element.name
            if(index != this.args.length - 1){
                argList += ','
            }
        })
        return argList
    }

    basicTypeWrapper() {
        var types = this.args.map(arg => arg.type)
        var argNames = this.args.map(arg => arg.name)
        var wrapperArgs = ''
        for(var i = 0; i < argNames.length; i++) {
            wrapperArgs += JC.convertToDartArgument(types[i], argNames[i]);
            if(i != argNames.length - 1) {
                wrapperArgs += ','
            }
        }
        return wrapperArgs
    }
}

export class DNImportContext extends DNContext {
    constructor(internal) {
        super(internal)
        var frameworkCtx = internal.frameworkName
        var headerCtx = internal.headerName
        if (frameworkCtx) {
            this.package = frameworkCtx.start.text
        }
        if (headerCtx) {
            this.header = headerCtx.start.text
        }
        if (!frameworkCtx && !headerCtx) {
            if (internal.children.length == 2 && internal.children[1]) {
                var content = internal.children[1].children[1].symbol.text
                var components = content.split('/')
                if (components.length == 2) {
                    this.package = components[0]
                    this.header = components[1]
                } else {
                    this.header = content
                }
            }
        }
    }

    parse() {
        var packageName = null
        var result = 'import \''
        if (this.package) {
            packageName = this.package.toLowerCase()
            result += 'package:' + packageName + '/'
        }
        if (this.header) {
            result += this.header.toLowerCase().replace(/\.h$/g, '') + '.dart\';'
        } else if (packageName) {
            result += packageName + '.dart\';'
        }
        
        return result
    }
}

export class DNPackageContext extends DNContext {
    constructor(internal) {
        super(internal)
        packageName += internal.stop.text + '/'
    }
}

export class DNRootContext extends DNContext {
    constructor(internal) {
        super(internal)
    }

    parse() {
        var result = ""
        var packageSet = new Set()
        result += '// Generated by @dartnative/codegen:\n// https://www.npmjs.com/package/@dartnative/codegen\n\n'
        result += "import 'dart:ffi';\n"
        result += "import 'package:dart_native/dart_native.dart';\n"
        result += "import 'package:dart_native_gen/dart_native_gen.dart';\n"
        result += this.children.map(ctx => ctx.parse()).join('\n\n')
        packageSet.add('dart_native')
        packageSet.add('dart_native_gen')
        return {
            dartCode: result,
            packages: packageSet
        }
    }
}

