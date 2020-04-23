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

var basic_type_conversion = function (type) {
    if(type === 'float') return 'double'

    var intArray = ['short', 'byte', 'long']
    if(intArray.includes(type)) return 'int'

    if(type === 'boolean') return 'bool'

    if(type === 'char') return 'String'
    
    return type;
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
        var result = '\n  ' +  this.methodReturnType() + ' ' + this.methodName + '(' + this.methodArgs() + ')' + ' {\n'
        result += '    ' + this.methodImpl()
        result += '  }'
        return result
    }

    methodReturnType() {
        return basic_type_conversion(this.returnType);
    }

    methodImpl(){
        var callerPrefix = ' invoke(\'' + this.methodName + '\', '
        var signature = '\'' + this.methodSignature() + '\', '
        var args = '[' + this.args.map(arg => arg.name) + ']'
        return 'return' + callerPrefix + signature + args + ');\n'
    }

    methodSignature(){
        var signature = '('
        this.args.forEach((element, index) => {
            signature += basic_type_signature.get(element.type)
        })
        signature += ')' + basic_type_signature.get(this.returnType)
        return signature
    }

    methodArgs(){
        var argList = ''
        this.args.forEach((element, index) => {
            var argType = basic_type_conversion(element.type)
            if(index == this.args.length - 1){
                argList += argType + ' ' + element.name
            }else{
                argList += argType + ' ' + element.name + ', '
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
        this.methods = []
    }

    parse() {
        var result = 'class ' + this.name + ' extends JObject'
        result += ' {\n'
        result += '  ' + this.name + '() : super(\"' + packageName + this.name + '\");\n'
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

class DNPackageContext extends DNContext {
    constructor(internal) {
        super(internal)
        packageName += internal.stop.text + '/'
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
exports.DNPackageContext = DNPackageContext
exports.DNImportContext = DNImportContext
exports.DNClassContext = DNClassContext
exports.DNMethodContext = DNMethodContext
exports.DNArgumentContext = DNArgumentContext
