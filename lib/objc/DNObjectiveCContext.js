

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
        var funcName = ''
        var argList = ''
        var returnType = this.returnType == 'instancetype' ? this.parent.name : this.returnType 
        this.args.forEach((element, index) => {
            funcName += this.names[index] + (this.args.length >= 1 ?  ':' : '')
            if(index == this.args.length - 1){
                argList += element.type + ' ' + element.name
            }else{
                argList += element.type + ' ' + element.name + ', '
            }
        });
        funcName = funcName ? funcName : this.methodName
        var callerPrefix = (this.isClassMethod ? ' Class(\'' + this.parent.name + '\').' : ' ')
        var result = '  ' + (this.isClassMethod ? 'static ' : '') + returnType + ' ' + this.methodName + '(' + argList + ')' + ' {\n'
        result += '    return' +  callerPrefix + 'perform(\'' + funcName + '\'.toSEL(), args: [' + this.args.map(arg => arg.name) + ']);\n'
        result += '  }'
        return result
    }
}

class DNMethodDeclarationContext extends DNMethodContext{
    constructor(internal) {
        super(internal)
    }

    parse() {
        var argList = ''
        var returnType = this.returnType == 'instancetype' ? this.parent.name : this.returnType 
        this.args.forEach((element, index) => {
            if(index == this.args.length - 1){
                argList += element.type + ' ' + element.name
            }else{
                argList += element.type + ' ' + element.name + ', '
            }
        });
        return '  ' + (this.isClassMethod ? 'static ' : '') + returnType + ' ' + this.names[0] + '(' + argList + ');'
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
            result += ' implements ' + this.protocols.join(',')
        }
        result += ' {\n'
        result += '  ' + this.name + '([Class isa]) : super(Class(\'' + this.name + '\'));\n'
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


