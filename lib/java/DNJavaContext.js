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
        var internalChildren = internal.children[1].children
        this.methodName = internalChildren[1].start.text
        this.returnType = internalChildren[0].start.text
        this.args = []
    }

    parse() {
        var result = '  ' +  this.returnType + ' ' + this.methodName + '(' + this.methodArgs() + ')' + ' {\n'
        result += '    ' + this.methodImpl()
        result += '   }'
        return result
    }

    methodImpl(){
        var callerPrefix = (this.isClassMethod ? ' invoke(\'' + this.parent.methodName + '\').' : ' ')
        var args = '[' + this.args.map(arg => arg.name) + ']'
        return 'return' +  callerPrefix + args + ');\n'
    }

    methodArgs(){
        var argList = ''
        this.args.forEach((element, index) => {
            if(index == this.args.length - 1){
                argList += element.type + ' ' + element.name
            }else{
                argList += element.type + ' ' + element.name + ', '
            }
        })
        return argList
    }
}


class DNClassContext extends DNContext {
    constructor(internal) {
        super(internal)
        var internalChildren = internal.children[0]
        this.name = internalChildren.children[2].start.text
        this.superClass = []
        this.properties = []
        this.methods = []
        this.protocols = []
    }

    parse() {
        var result = 'class ' + this.name + ' extends JObject'
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
exports.DNClassContext = DNClassContext
exports.DNMethodContext = DNMethodContext
exports.DNArgumentContext = DNArgumentContext
