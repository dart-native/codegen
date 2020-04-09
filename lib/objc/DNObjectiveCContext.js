

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

class DNArgumentContext extends DNContext {
    constructor(internal, name, type) {
        super(internal)
        this.name = name
        this.type = type
    }
}

class DNMethodContext extends DNContext {
    constructor(internal) {
        super(internal)
        this.methodName = null;
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
        var result = '  ' + (this.isClassMethod ? 'static ' : '') + this.returnType + ' ' + this.methodDeclaration() + '(' + this.methodArgs() + ')' + ' {\n'
        result += '    ' +  this.methodImpl()
        result += '  }'
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
        });
        methodDeclaration = methodDeclaration ? methodDeclaration : this.methodName
        return methodDeclaration
    }

    methodImpl(noArg){
        var funcName = ''
        this.args.forEach((_element, index) => {
            funcName += this.names[index] + (this.args.length >= 1 ?  ':' : '')
        });
        funcName = funcName ? funcName : this.methodName
        var callerPrefix = (this.isClassMethod ? ' Class(\'' + this.parent.name + '\').' : ' ')
        var args = noArg ? '' :  ', args: [' + this.args.map(arg => arg.name) + ']'
        return 'return' +  callerPrefix + 'perform(\'' + funcName + '\'.toSEL()' + args + ');\n'
    }

    methodArgs(){
        var argList = ''
        this.args.forEach((element, index) => {
            if(index == this.args.length - 1){
                argList += element.type + ' ' + element.name
            }else{
                argList += element.type + ' ' + element.name + ', '
            }
        });
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
        return result;
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
            ' => perform(\'' + this.name + '\'.toSEL());';
        var set = '  ' + 'set ' + this.name + '(' + this.type + ' ' + this.name + ')' +
            ' => perform(\'set' + this.name.replace(/^\w/, c => c.toUpperCase()) + ':\'.toSEL(), args: [' + this.name + ']);';
        return get + '\n' + set;
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

class DNTopLevelContext extends DNContext {
    constructor(internal) {
        super(internal)
    }

    parse() {
        return this.children.map(ctx => ctx.parse()).join('\n\n')
    }
}


exports.DNTopLevelContext = DNTopLevelContext
exports.DNClassContext = DNClassContext
exports.DNCategoryContext = DNCategoryContext
exports.DNProtocolContext = DNProtocolContext
exports.DNMethodContext = DNMethodContext
exports.DNMethodDeclarationContext = DNMethodDeclarationContext
exports.DNPropertyContext = DNPropertyContext
exports.DNArgumentContext = DNArgumentContext


