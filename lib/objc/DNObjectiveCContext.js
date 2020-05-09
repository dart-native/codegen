var DNObjectiveCTypeConverter = require('./DNObjectiveCTypeConverter').DNObjectiveCTypeConverter
class DNContext {
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

class DNBlockDefContext extends DNContext {
    constructor(internal) {
        super(internal)
        this.returnType = ''
        this.defName = null
        this.args = []
    } 

    parse() {
        var argList = ''
        this.args.forEach((element, index) => {
            if(index == this.args.length - 1){
                argList += element.type + ' ' + element.name
            }else{
                argList += element.type + ' ' + element.name + ', '
            }
        })
        var result = 'typedef '
        result += this.returnType + ' ' + this.defName + '(' + argList + ');' 
        return result
    }
}

class DNEnumDefContext extends DNContext {

    constructor(internal) {
        super(internal)
        this.defName = null
        this.type = null
        this.enumMap = {}
    }
    
    parse() {
        var result = '\n'
        var superClass = 'NSEnum'
        if (this.type == 'NS_OPTIONS') {
            superClass = 'NSOptions'
        }
        result += 'class ' + this.defName + ' extends ' + superClass + ' {\n' +
            '  const ' + this.defName + '(int raw) : super(raw);\n\n' +
            '  ' + this.defName + ' operator |(' + this.defName + ' other) {\n' +
            '    return ' + this.defName + '(this.raw|other.raw);\n' +
            '  }\n\n' +
            '  ' + this.defName + ' operator &(' + this.defName + ' other) {\n' +
            '    return ' + this.defName + '(this.raw&other.raw);\n' +
            '  }\n' +
            '}\n\n'


        for (const key in this.enumMap) {
            result += 'const ' + this.defName + ' ' + key + ' = ' + 
            this.defName + '(' + this.enumMap[key] + ');\n'
        }
        return result
    }
}

class DNArgumentContext extends DNContext {
    constructor(internal, name, type) {
        super(internal)
        this.name = name
        this.type = type
        this.anonDef = null
    }
}

class DNMethodContext extends DNContext {
    constructor(internal) {
        super(internal)
        this.methodName = null
        this.names = []
        this.args = []
        this.returnType = null
        this.isClassMethod = false
    }

    parse() {
        if(this.args.length == 0 && this.hasSameMethodDeclaration()){
            return ''
        }else if(this.args.length == 1 && this.hasSameMethodDeclaration()){
            return this.parseForOptionalSingleArg()
        }

        var isInstanceConstr = (this.returnType == this.parent.name) && !this.isClassMethod
        if(isInstanceConstr){
            return this.constructorImpl()
        }else{
            var result = '  ' + (this.isClassMethod ? 'static ' : '') + this.convertMutableTypeIfNeed(this.returnType) + ' ' + this.methodDeclaration() + '(' + this.methodArgs() + ')' + ' {\n'
            result += this.preHandleMutableArgsIfNeed() + '    ' +  this.methodImpl()
            result += '  }'
            return result
        }
    }

    preHandleMutableArgsIfNeed(){
        var result = ''
        this.args.forEach((element) => {
            var rawType = this.rawGenericType(element.type)
            if(DNObjectiveCTypeConverter.SupportMutableTypes.indexOf(rawType) > -1){
                var tmpArgName = '_' + element.name
                result += '    ' + rawType + ' ' + tmpArgName + ' = ' + rawType + '(' + element.name +')\n' 
                element.name = tmpArgName
            }
        })
        return result
    }

    hasSameMethodDeclaration(){
        var methods = this.parent.methods
        for(var i = 0 ; i < methods.length; i++){
            var method = methods[i]
            if(this != method && this.methodDeclaration() == method.methodDeclaration() && this.isClassMethod == method.isClassMethod){
                return true
            }
        }
        return false
    }

    methodDeclaration(){
        var methodDeclaration = ''  
        this.args.forEach((_element, index) => {
            methodDeclaration += index >= 1 ? this.names[index].replace(/^\w/, c => c.toUpperCase()) : this.names[index]
        })
        methodDeclaration = methodDeclaration ? methodDeclaration : this.methodName
        return methodDeclaration
    }

    methodImpl(noArg){
        var callerPrefix = (this.isClassMethod ? ' Class(\'' + this.parent.name + '\').' : ' ')
        var args = noArg ? '' :  ', args: [' + this.args.map(arg => arg.name) + ']'
        var impl = callerPrefix + 'perform(\'' + this.ocMethodName() + '\'.toSEL()' + args + ');\n'

        var rawRetType = this.rawGenericType(this.returnType) //remove <> symbol
        if(DNObjectiveCTypeConverter.SupportMutableTypes.indexOf(rawRetType) > -1){
            // TO-DO:Need to consider duplicate names
            var newImpl = 'NSObject _result = ' + impl
            newImpl += '    return ' + rawRetType + '.fromPointer(_result.pointer).value;\n'
            return newImpl
        }
        return (this.returnType == 'void' ? '' : 'return') + impl
    }

    constructorImpl(){
        var result = ''
        if(this.isSingleInstanceConstr){
             // such as NSError(arg x)
            result += '  ' + this.parent.name + '(' + this.methodArgs() + ')\n'
        }else{
            // such as NSError.initWithxxxx(arg x)
            result += '  ' + this.parent.name + '.' + this.methodDeclaration() + '(' + this.methodArgs() + ')\n'
        }
        result += '     : super.fromPointer(_' + this.methodDeclaration() + '(' +this.args.map(arg => arg.name) + '));\n'
        result += '\n';
        result += '  static Pointer<Void> _' + this.methodDeclaration() + '(' + this.methodArgs() + ')' + ' {\n'
        result += this.preHandleMutableArgsIfNeed() 
        result +='    Pointer<Void> target = alloc(Class(\'' + this.parent.name + '\'));\n'
        result += '    SEL sel = \'' + this.ocMethodName() + '\'.toSEL();\n'
        result += '    return msgSend(target, sel, ' + 'args: [' + this.args.map(arg => arg.name) + ']' + ', decodeRetVal: false);\n'
        result += '  }\n'
        return result
    }

    methodArgs(){
        var argList = ''
        this.args.forEach((element, index) => {
            var arg = element.anonDef ? element.anonDef : this.convertMutableTypeIfNeed(element.type) + ' ' + element.name
            argList += arg + (index == this.args.length - 1 ? '' : ', ')
        })
        return argList
    }

    parseForOptionalSingleArg(){
        var optionalArgType = this.args[0].type
        var optionalArgName = this.args[0].name
        var result = '  ' + (this.isClassMethod ? 'static ' : '') + this.returnType + ' ' + this.methodDeclaration() + '([' + optionalArgType + ' ' + optionalArgName + '])' + ' {\n'
        result += '    if (' + optionalArgName + ' != null) {\n'
        result += '         ' + this.methodImpl()
        result += '    } else { \n'
        result += '         ' + this.methodImpl(true)
        result += '    }\n'
        result += '  }'
        return result
    }

    convertMutableTypeIfNeed(type){
        var rawType = this.rawGenericType(type)
        var dartType = DNObjectiveCTypeConverter.SupportMutableTypesMap[rawType]
        var ret =  dartType ? type.replace(rawType,dartType) : type
        return ret
    }

    rawGenericType(type){
        var isGeneric = type.indexOf('<') > -1 &&  type.indexOf('>') > -1
        var rawType = isGeneric ? type.substring(0,type.indexOf('<')) : type
        return rawType
    }

    ocMethodName(){
        var funcName = ''
        this.args.forEach((_element, index) => {
            funcName += this.names[index] + (this.args.length >= 1 ?  ':' : '')
        })
        funcName = funcName ? funcName : this.methodName
        return funcName
    }
}
class DNMethodDeclarationContext extends DNMethodContext{
    constructor(internal) {
        super(internal)
    }

    parse() {
        if(this.args.length == 0 && this.hasSameMethodDeclaration()){
            return ''
        }else if(this.args.length == 1 && this.hasSameMethodDeclaration()){
            return '  ' + (this.isClassMethod ? 'static ' : '') + this.returnType + ' ' + this.methodDeclaration() + '([' + this.methodArgs() + ']);'
        }
        return '  ' + (this.isClassMethod ? 'static ' : '') + this.returnType + ' ' + this.methodDeclaration() + '(' + this.methodArgs() + ');'
    }
}

class DNPropertyContext extends DNContext {
    constructor(internal) {
        super(internal)
        this.name = null
        this.type = null
        this.isClassProperty = false
        this.isReadOnly = false
    }

    parse() {
        var get = '  ' + this.type + ' get ' + this.name + 
            ' => perform(\'' + this.name + '\'.toSEL());'
        var set = '  ' + 'set ' + this.name + '(' + this.type + ' ' + this.name + ')' +
            ' => perform(\'set' + this.name.replace(/^\w/, c => c.toUpperCase()) + ':\'.toSEL(), args: [' + this.name + ']);'
        return get + '\n' + set
    }
}

class DNProtocolContext extends DNContext {
    constructor(internal) {
        super(internal)
        this.name = internal.children[1].start.text
        this.supers = []
        this.properties = []
        this.methods = []
        this.protocols = []
    }

    parse(){
        var result = 'abstract class ' + this.name
        if (typeof this.protocols !== 'undefined' && this.protocols.length > 0) {
            result += ' implements ' + this.protocols.join(',')
        }
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

class DNClassContext extends DNContext {
    constructor(internal) {
        super(internal)
        this.name = internal.className.start.text
        this.superClass = internal.superclassName.start.text
        this.properties = []
        this.methods = []
        this.protocols = []
    }

    parse() {
        this.preMarkConstructMethods()
        var result = '@native\nclass ' + this.name + ' extends ' + this.superClass
        if (typeof this.protocols !== 'undefined' && this.protocols.length > 0) {
            result += ' with ' + this.protocols.join(',')
        }
        result += ' {\n'
        result += '  ' + this.name + '([Class isa]) : super(Class(\'' + this.name + '\'));\n'
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
    preMarkConstructMethods(){
        var markMethod
        var hasOneInstanceConstr = false
        for(var i = 0 ; i < this.methods.length; i++){
            var method = this.methods[i]
            var isInstanceConstr = (method.returnType == this.name) && !method.isClassMethod
            if(isInstanceConstr){
                if(hasOneInstanceConstr){
                    markMethod.isSingleInstanceConstr = false
                    break
                }else{
                    hasOneInstanceConstr = true
                    method.isSingleInstanceConstr = true
                    markMethod = method
                }
            }
        }
    }
}

class DNCategoryContext extends DNContext {
    constructor(internal) {
        super(internal)
        this.name = internal.children[1].start.text
        this.host = internal.children[3].start.text
        this.properties = []
        this.methods = []
        this.protocols = []
    }

    parse() {
        var result = 'extension ' + this.name + this.host + ' on ' + this.name
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

class DNImportContext extends DNContext {
    constructor(internal,needExport) {
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
        }
        if (this.header) {
            result += this.header.toLowerCase().replace(/\.h$/g, '') + '.dart\';'
        } else if (packageName) {
            result += packageName + '.dart\';'
        }
        
        return result
    }
}

class DNRootContext extends DNContext {
    constructor(internal) {
        super(internal)
    }

    parse() {
        // TODO: check if needs export
        var result = "import 'package:dart_native/dart_native.dart';\n"
        result += "import 'package:dart_native_gen/dart_native_gen.dart';\n"
        result += this.children.map(ctx => ctx.parse()).join('\n\n')
        return result
    }
}


exports.DNRootContext = DNRootContext
exports.DNImportContext = DNImportContext
exports.DNBlockDefContext = DNBlockDefContext
exports.DNEnumDefContext = DNEnumDefContext
exports.DNClassContext = DNClassContext
exports.DNCategoryContext = DNCategoryContext
exports.DNProtocolContext = DNProtocolContext
exports.DNMethodContext = DNMethodContext
exports.DNMethodDeclarationContext = DNMethodDeclarationContext
exports.DNPropertyContext = DNPropertyContext
exports.DNArgumentContext = DNArgumentContext


