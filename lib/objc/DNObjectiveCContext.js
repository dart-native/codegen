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
        result += this.returnType + '(^' + this.defName + ')' + '(' + argList + ');' 
        return result
    }
}

class DNEnumDefContext extends DNContext {
    constructor(internal) {
        super(internal)
        this.defName = null
        this.enumNames = []
    } 

    parse() {
        var enumNameList = ''
        this.enumNames.forEach((element,index) => {
            if(index == 0){
                enumNameList += '  ' + element + ' = 0,\n'
            }else{
                enumNameList += '  ' + element + ',\n'
            }
        })
        var result = 'typedef enum {\n'
        result += enumNameList
        result += "} " + this.defName + ';'
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

        var result = '  ' + (this.isClassMethod ? 'static ' : '') + this.convertMutableTypeIfNeed(this.returnType) + ' ' + this.methodDeclaration() + '(' + this.methodArgs() + ')' + ' {\n'
        result += this.preHandleMutableArgsIfNeed() + '    ' +  this.methodImpl()
        result += '  }'
        return result
    }

    preHandleMutableArgsIfNeed(){
        var result = ''
        this.args.forEach((element) => {
            var isGeneric = element.type.indexOf('<') > -1 ||  element.type.indexOf('>') > -1
            var rawType = isGeneric ? element.type.substring(0,element.type.indexOf('<')) : element.type
            if(DNMethodContext.SupportMutableTypes.indexOf(rawType) > -1){
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
        var funcName = ''
        this.args.forEach((_element, index) => {
            funcName += this.names[index] + (this.args.length >= 1 ?  ':' : '')
        })
        funcName = funcName ? funcName : this.methodName
        var callerPrefix = (this.isClassMethod ? ' Class(\'' + this.parent.name + '\').' : ' ')
        var args = noArg ? '' :  ', args: [' + this.args.map(arg => arg.name) + ']'
        var impl = callerPrefix + 'perform(\'' + funcName + '\'.toSEL()' + args + ');\n'
        var isMutableReturn = DNMethodContext.SupportMutableTypes.indexOf(this.returnType) > -1
        if(isMutableReturn){
            // TO-DO:Need to consider duplicate names
            var newImpl = 'NSObject _result = ' + impl
            newImpl += '    return ' + this.returnType + '.fromPointer(_result.pointer).value;\n'
            return newImpl
        }
        return (this.returnType == 'void' ? '' : 'return') + impl
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
        var isGeneric = type.indexOf('<') > -1 ||  type.indexOf('>') > -1
        var rawType = isGeneric ? type.substring(0,type.indexOf('<')) : type
        var dartType = DNMethodContext.SupportMutableTypesMap[rawType]
        var ret =  dartType ? type.replace(rawType,dartType) : type
        return ret
    }
}
DNMethodContext.SupportMutableTypes = ['NSMutableArray','NSMutableSet','NSMutableDictionary']
DNMethodContext.SupportMutableTypesMap = {'NSMutableArray' : 'List','NSMutableSet' : 'Set','NSMutableDictionary' : 'Map'}
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
        this.name = internal.children[1].start.text
        this.superClass = internal.children[3].start.text
        this.properties = []
        this.methods = []
        this.protocols = []
    }

    parse() {
        var result = 'class ' + this.name + ' extends ' + this.superClass
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


