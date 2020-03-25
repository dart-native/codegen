

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
        this.names = []
        this.args = []
        this.returnType = null
        this.isClassMethod = false
    }
}

class DNPropertyContext extends DNContext {
    constructor(internal) {
        super(internal)
        this.name = null
        this.type = null
        this.isClassProperty = false
    }
}

class DNProtocolContext extends DNContext {
    constructor(internal) {
        super(internal)
        this.name = internal.children[1].start.text
        this.supers = []
        this.properties = []
        this.methods = []
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
            result += '  ' + element.parse() + '\n'
        })
        this.methods.forEach(element => {
            result += '  ' + element.parse() + '\n'
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
exports.DNProtocolContext = DNPropertyContext
exports.DNMethodContext = DNMethodContext
exports.DNPropertyContext = DNPropertyContext
exports.DNArgumentContext = DNArgumentContext


