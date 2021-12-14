import DNObjectiveCTypeConverter from './DNObjectiveCTypeConverter.js'
import { rawGenericType, convertMutableTypeIfNeed, addOptionalTypeIfNeed } from '../common/utils.js'

export class DNResult {
    constructor(dartCode, packages, enumeratorTypeNames) {
        this.dartCode = dartCode
        this.packages = packages
        this.enumeratorTypeNames = enumeratorTypeNames
    }
}

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

export class DNOSVersionContext extends DNContext {
    constructor(internal) {
        super(internal)
        this.os = internal.os.start.text
        this.min = internal.min.text
        if (internal.max) {
            this.max = internal.max.text
        }
    }

    parse() {
        var result = this.os
        if (this.max) {
            result += ': ' + '[\'' + this.min + '\', \'' + this.max + '\']'
        } else {
            result += ': ' + '\'' + this.min + '\''
        }
        return result
    }
}

export class DNAvailabilityContext extends DNContext {
    constructor(internal) {
        super(internal)
        this.name = internal.start.text
        this.messages = internal.messages.map((ctx) => {
            return ctx.children[0].children.map((s) => {
                return s.symbol.text
            }).join('')
        })
        this.osVersions = internal.osVersions.map((ctx) => {
            return new DNOSVersionContext(ctx);
        })
    }

    parse() {
        var result = '@'
        result += this.name.split('_').map((c) => {
            if (c == 'API') {
                return 'Native'
            }
            return c.capitalize()
        }).join('')
        result += '('
        var messages = this.messages.join(', ')
        var osVersions = this.osVersions.map((os) => os.parse()).join(', ')
        result += [messages, osVersions].filter((s) => s.length > 0).join(', ')
        result += ')'
        return result
    }
}

export class DNBlockDefContext extends DNContext {
    constructor(internal) {
        super(internal)
        this.returnType = ''
        this.defName = null
        this.args = []
    }

    parse() {
        var argList = ''
        this.args.forEach((element, index) => {
            var elementType = addOptionalTypeIfNeed(element.type)
            argList += elementType + ' ' + element.name
            if (index != this.args.length - 1) {
                argList += ', '
            }
        })
        var returnType = addOptionalTypeIfNeed(this.returnType)
        const result = 'typedef ' + this.defName + ' = ' + returnType + ' Function(' + argList + ');'
        return result
    }
}

export class DNEnumItemContext extends DNContext {
    constructor(internal) {
        super(internal)
        this.name = internal.name.start.text
        this.type = null
        this.value = null
        this.macros = []
        this.availability = []
    }

    parse() {
        var result = this.availability.map((a) => a.parse()).join(' ') + '\n'
        this.value = this.value.toString().replace('UL','')
        if (this.type) {
            result += 'const ' + this.type + ' ' + this.name + ' = ' + this.value + ';\n'
        } else {
            result += 'const int ' + this.name + ' = ' + this.value + ';\n'
        }
        return result
    }
}

export class DNEnumDefContext extends DNContext {
    constructor(internal) {
        super(internal)
        if (internal.name) {
            this.defName = internal.name.start.text
        }
        this.type = null
        this.enumMap = {}
        this.macros = []
        this.availability = []
    }

    parse() {
        var result = '\n'
        if (this.defName) {
            var availability = this.availability.map((a) => a.parse()).join(' ') + '\n'
            var aliasType = 'NSEnum'
            if (this.type == 'NS_OPTIONS') {
                aliasType = 'NSOptions'
            }
            result += availability +
                'typedef ' + this.defName + ' = ' + aliasType + ';\n\n'
        }

        for (const key in this.enumMap) {
            result += this.enumMap[key].parse()
        }
        return result
    }
}

export class DNArgumentContext extends DNContext {
    constructor(internal) {
        super(internal)
        // For keywordDeclarator
        if (internal.name && internal.types) {
            this.name = internal.name.start.text
        }
        this.type = ''
        this.isBlock = false   //user for block arguement
        this.isNullable = false
        this.isOutParam = false
    }
}

export class DNMethodContext extends DNContext {
    constructor(internal) {
        super(internal)
        this.methodName = null
        this.names = []
        this.args = []
        this.returnType = null
        this.callFromPointer = false
        this.isClassMethod = false
        this.macros = []
        this.availability = []
    }

    parse() {
        // If two methods have the same name, one has no arguments and the other has one argument. 
        // Only the latter is generated, with optional arguments.
        if (this.args.length == 0 && this.hasSameMethodDeclaration()) {
            return ''
        } else if (this.args.length == 1 && this.hasSameMethodDeclaration()) {
            return this.parseForOptionalSingleArg()
        }
        //fix:Extensions can't declare constructors
        var isExtensionMethod = this.parent instanceof DNCategoryContext
        var isInstanceConstr = (this.returnType == this.parent.name) && !this.isClassMethod && !isExtensionMethod
        if (isInstanceConstr) {
            return this.constructorImpl()
        } else {
            var result = '  ' + this.availability.map((a) => a.parse()).join(' ') + '\n'
            var returnType = addOptionalTypeIfNeed(convertMutableTypeIfNeed(this.returnType))
            result += '  ' + (this.isClassMethod ? 'static ' : '') + returnType + ' ' + this.methodDeclaration() + this.methodArgs() + ' {\n'
            result += this.preHandleMutableArgsIfNeed() + '    ' + this.methodImpl()
            result += '  }'
            return result
        }
    }

    preHandleMutableArgsIfNeed() {
        var result = ''
        this.args.forEach((element) => {
            var rawType = rawGenericType(element.type)
            if (DNObjectiveCTypeConverter.SupportMutableTypes.indexOf(rawType) > -1) {
                var tmpArgName = '_' + element.name
                result += '    ' + rawType + ' ' + tmpArgName + ' = ' + rawType + '(' + element.name + ');\n'
                element.name = tmpArgName
            }
        })
        return result
    }

    hasSameMethodDeclaration() {
        var methods = this.parent.methods
        for (var i = 0; i < methods.length; i++) {
            var method = methods[i]
            if (this != method && this.methodDeclaration() == method.methodDeclaration() && this.isClassMethod == method.isClassMethod) {
                return true
            }
        }
        return false
    }

    methodDeclaration() {
        var methodDeclaration = ''
        this.args.forEach((_element, index) => {
            methodDeclaration += index >= 1 ? this.names[index].replace(/^\w/, c => c.toUpperCase()) : this.names[index]
        })
        methodDeclaration = methodDeclaration ? methodDeclaration : this.methodName
        return methodDeclaration
    }

    methodImpl(noArg) {
        if (!noArg) {
            noArg = this.args.length == 0
        }
        var callerPrefix = (this.isClassMethod ? ' Class(\'' + this.parent.name + '\').' : ' ')
        var args = noArg ? '' : ', args: [' + this.args.map(arg => arg.name) + ']'
        var impl = callerPrefix + 'perform(SEL(\'' + this.ocMethodName() + '\')' + args + ');\n'

        var rawRetType = rawGenericType(this.returnType) //remove <> symbol
        var isMutableRetType = DNObjectiveCTypeConverter.SupportMutableTypes.indexOf(rawRetType) > -1

        if (!isMutableRetType && !this.callFromPointer) {
            return (this.returnType == 'void' ? '' : 'return') + impl
        }

        var newImpl = 'Pointer<Void> result =' + impl.replace(');\n', '') + ', decodeRetVal: false);\n'
        if (this.callFromPointer) {
            var supportType = DNObjectiveCTypeConverter.DNDartToOCMap[rawRetType]
            if (supportType) {
                newImpl += '    return ' + supportType + '.fromPointer(result).raw;\n'
            } else if (isMutableRetType) {
                newImpl += '    return ' + rawRetType + '.fromPointer(result).raw;\n'
            } else {
                newImpl += '    return ' + rawRetType + '.fromPointer(result);\n'
            }
        }
        return newImpl
    }

    constructorImpl() {
        var result = ''
        if (this.isSingleInstanceConstr) {
            // such as NSError(arg x)
            result += '  ' + this.parent.name + this.methodArgs() + '\n'
        } else {
            // such as NSError.initWithxxxx(arg x)
            result += '  ' + this.parent.name + '.' + this.methodDeclaration() + this.methodArgs() + '\n'
        }
        result += '     : super.fromPointer(_' + this.methodDeclaration() + '(' + this.args.map(arg => arg.name) + '));\n'
        result += '\n';
        result += '  static Pointer<Void> _' + this.methodDeclaration() + this.methodArgs() + ' {\n'
        result += this.preHandleMutableArgsIfNeed()
        result += '    Pointer<Void> target = alloc(Class(\'' + this.parent.name + '\'));\n'
        result += '    SEL sel = SEL(\'' + this.ocMethodName() + '\');\n'
        result += '    return msgSend(target, sel, ' + 'args: [' + this.args.map(arg => arg.name) + ']' + ', decodeRetVal: false);\n'
        result += '  }\n'
        return result
    }

    methodArgs(optional) {
        //convert as follows: int a, String b, {int c, String d}
        var argList = optional ? '([' : '('
        var nullableArgs = []
        this.args.forEach((element, index) => {
            if (element.isNullable) {
                nullableArgs.push(element)
            } else {
                var argType = element.isOutParam ? 'NSObjectRef<' + element.type + '>' : element.type
                var arg = element.isBlock ? argType : convertMutableTypeIfNeed(argType) + ' ' + element.name
                argList += arg + (index == this.args.length - 1 && nullableArgs.length == 0 ? '' : ', ')
            }
        })

        if (nullableArgs.length > 0) {
            argList += '{'
            nullableArgs.forEach((element, index) => {
                var argType = element.isOutParam ? 'NSObjectRef<' + element.type + '>' : element.type
                var arg = element.isBlock ? argType : convertMutableTypeIfNeed(argType) + ' ' + element.name
                argList += arg + (index == nullableArgs.length - 1 ? '' : ', ')
            })
            argList += '}'
        }
        argList += optional ? '])' : ')'
        return argList
    }

    parseForOptionalSingleArg() {
        var optionalArgType = this.args[0].type
        var optionalArgName = this.args[0].name
        var returnType = addOptionalTypeIfNeed(convertMutableTypeIfNeed(this.returnType))
        var result = '  ' + (this.isClassMethod ? 'static ' : '') + returnType + ' ' + this.methodDeclaration() + '([' + optionalArgType + ' ' + optionalArgName + '])' + ' {\n'
        result += '    if (' + optionalArgName + ' != null) {\n'
        result += '         ' + this.methodImpl()
        result += '    } else { \n'
        result += '         ' + this.methodImpl(true)
        result += '    }\n'
        result += '  }'
        return result
    }

    ocMethodName() {
        var funcName = ''
        this.args.forEach((_element, index) => {
            funcName += this.names[index] + (this.args.length >= 1 ? ':' : '')
        })
        funcName = funcName ? funcName : this.methodName
        return funcName
    }
}
export class DNMethodDeclarationContext extends DNMethodContext {
    constructor(internal) {
        super(internal)
    }

    parse() {
        // We have to ignore static methods due to this issue: https://github.com/dart-lang/language/issues/356
        if (this.isClassMethod || (this.args.length == 0 && this.hasSameMethodDeclaration())) {
            return ''
        }

        var result = '  ' + this.availability.map((a) => a.parse()).join(' ') + '\n'
        var returnType = addOptionalTypeIfNeed(convertMutableTypeIfNeed(this.returnType))
        result += '  ' + returnType + ' ' + this.methodDeclaration()

        if (this.args.length == 1 && this.hasSameMethodDeclaration()) {
            result += this.methodArgs(true) + ';'
        }
        result += this.methodArgs() + ';'
        return result;
    }
}

export class DNPropertyContext extends DNContext {
    constructor(internal) {
        super(internal)
        this.name = null
        this.type = null
        this.isClassProperty = false
        this.isReadOnly = false
        this.isDartPointerType = false
        this.macros = []
        this.availability = []
    }

    parse() {
        if (!this.name) {
            return ''
        }
        if (!this.type) {
            this.type = 'dynamic'
        }
        var annotation = '  ' + this.availability.map((a) => a.parse()).join(' ') + '\n'
        var isClassPrefix = (this.isClassProperty ? ' Class(\'' + this.parent.name + '\').' : ' ')
        let convertedType = convertMutableTypeIfNeed(this.type)
        var get = annotation + '  ' + convertedType + ' get ' + this.name + ' {\n' +
            this.handleGetter(isClassPrefix) + '\n}'
        if (!this.isReadOnly) {
            var set = annotation + '  ' + 'set ' + this.name + '(' + convertedType + ' ' + this.name + ')' +
                ' =>' + isClassPrefix + 'perform(SEL(\'set' + this.name.replace(/^\w/, c => c.toUpperCase()) + ':\'), args: [' + this.name + ']);'
        }
        return get + '\n' + set
    }

    handleGetter(isClassPrefix) {
        var impl = isClassPrefix + 'perform(SEL(\'' + this.name + '\')' + ');\n'
        var rawRetType = rawGenericType(this.type) //remove <> symbol
        var isMutableRetType = DNObjectiveCTypeConverter.SupportMutableTypes.indexOf(rawRetType) > -1

        if (!isMutableRetType && !this.isDartPointerType) {
            return (this.type == 'void' ? '' : 'return') + impl
        }

        var newImpl = 'Pointer<Void> result =' + impl.replace(');\n', '') + ', decodeRetVal: false);\n'
        if (this.isDartPointerType) {
            var supportType = DNObjectiveCTypeConverter.DNDartToOCMap[rawRetType]
            if (supportType) {
                newImpl += '    return ' + supportType + '.fromPointer(result).raw;\n'
            } else if (isMutableRetType) {
                newImpl += '    return ' + rawRetType + '.fromPointer(result).raw;\n'
            } else {
                newImpl += '    return ' + rawRetType + '.fromPointer(result);\n'
            }
        }
        return newImpl
    }
}

export class DNProtocolContext extends DNContext {
    constructor(internal) {
        super(internal)
        this.name = internal.name.start.text
        this.properties = []
        this.methods = []
        let protocols = internal.protocols
        this.protocols = protocols ? protocols.list.map((p) => {
            return p.name.start.text
        }) : []
        this.macros = []
        this.availability = []
    }

    addRegister() {
        var result = '  register' + this.name + '() {\n'
        this.methods.forEach(element => {
            result += '    registerProtocolCallback(this, ' + element.methodDeclaration() + ', \'' + element.ocMethodName() + '\', ' + this.name + ');\n'
        })
        result += '  }\n'
        return result
    }

    parse() {
        var result = this.availability.map((a) => a.parse()).join(' ') + '\n'
        result += 'abstract class ' + this.name
        if (typeof this.protocols !== 'undefined' && this.protocols.length > 0) {
            result += ' implements ' + this.protocols.join(',')
        }
        result += ' {\n'
        result += this.addRegister()
        this.properties.forEach(element => {
            result += element.parse() + '\n'
        })
        this.methods.forEach(element => {
            result += element.parse()
        })
        result += '\n}'
        return result
    }
}

export class DNClassContext extends DNContext {
    constructor(internal) {
        super(internal)
        this.name = internal.className.start.text
        if (internal.superclassName) {
            this.superClass = internal.superclassName.start.text
        }
        this.properties = []
        this.methods = []
        let protocols = internal.protocols
        this.protocols = protocols ? protocols.list.map((p) => {
            return p.name.start.text
        }) : []
        this.macros = []
        this.availability = []
    }

    parse() {
        this.preMarkConstructMethods()
        var result = this.availability.map((a) => a.parse()).join(' ') + '\n'
        result += '@native()\nclass ' + this.name
        if (this.superClass) {
            result += ' extends ' + this.superClass
        }
        if (typeof this.protocols !== 'undefined' && this.protocols.length > 0) {
            result += ' with ' + this.protocols.join(',')
        }
        result += ' {\n'
        result += '  ' + this.name + '([Class? isa]) : super(isa ?? Class(\'' + this.name + '\'));\n'
        result += '  ' + this.name + '.fromPointer(Pointer<Void> ptr) : super.fromPointer(ptr);\n'
        this.properties.forEach(element => {
            var parseRet = element.parse()
            result += parseRet ? parseRet + '\n' : ''
        })
        this.methods.forEach(element => {
            var parseRet = element.parse()
            result += parseRet ? parseRet + '\n' : ''
        })
        result += '\n}'
        return result
    }

    // mark the method if the class has only one instance construction
    preMarkConstructMethods() {
        var markMethod
        var hasOneInstanceConstr = false
        for (var i = 0; i < this.methods.length; i++) {
            var method = this.methods[i]
            var isInstanceConstr = (method.returnType == this.name) && !method.isClassMethod
            if (isInstanceConstr) {
                if (hasOneInstanceConstr) {
                    markMethod.isSingleInstanceConstr = false
                    break
                } else {
                    hasOneInstanceConstr = true
                    method.isSingleInstanceConstr = true
                    markMethod = method
                }
            }
        }
    }
}

export class DNCategoryContext extends DNContext {
    constructor(internal) {
        super(internal)
        this.host = internal.className.start.text
        if (internal.categoryName) {
            this.name = internal.categoryName.start.text
        } else {
            this.name = 'DartNative'
        }
        this.properties = []
        this.methods = []
        let protocols = internal.protocols
        this.protocols = protocols ? protocols.list.map((p) => {
            return p.name.start.text
        }) : []
    }

    parse() {
        var result = 'extension ' + this.host + this.name + ' on ' + this.host
        result += ' {\n'
        this.properties.forEach(element => {
            result += element.parse() + '\n'
        })
        this.methods.forEach(element => {
            result += element.parse() + '\n'
        })
        result += '\n}'
        return result
    }
}

export class DNImportContext extends DNContext {
    constructor(internal, needExport) {
        super(internal)
        this.needExport = needExport
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
        var result = this.needExport ? 'export \'' : 'import \''
        if (this.package) {
            packageName = this.package.toLowerCase()
            result += (this.needExport ? '' : 'package:') + packageName + '/'
            // TODO: delete me when foundation and uikit done.
            if (!this.needExport) {
                result = '// You can uncomment this line when this package is ready.\n// ' + result
            }
        }
        if (this.header) {
            result += this.header.toLowerCase().replace(/\.h$/g, '') + '.dart\';'
        } else if (packageName) {
            result += packageName + '.dart\';'
        }

        return result
    }
}

export class DNRootContext extends DNContext {
    constructor(internal, needExport, isPartOfFile = false, enumeratorTypeNames = []) {
        super(internal)
        this.needExport = needExport
        this.isPartOfFile = isPartOfFile
        this.enumeratorTypeNames = enumeratorTypeNames
    }

    parse() {
        var result = ''
        if (!this.isPartOfFile) {
            result += '// Generated by @dartnative/codegen:\n// https://www.npmjs.com/package/@dartnative/codegen\n\n'
        }
        var packageSet = new Set()
        if (!this.needExport && !this.isPartOfFile) {
            result += "import 'dart:ffi';\n\n"
            result += "import 'package:dart_native/dart_native.dart';\n"
            result += "import 'package:dart_native_gen/dart_native_gen.dart';\n"
            packageSet.add('dart_native')
            packageSet.add('dart_native_gen')
        }
        result += this.children.map(ctx => {
            var childResult = ctx.parse()
            if (!(ctx instanceof DNImportContext)) {
                childResult = '\n' + childResult
            } else {
                packageSet.add(ctx.package)
            }
            return childResult
        }).join('\n')
        return new DNResult(result, packageSet, this.enumeratorTypeNames)
    }
}


