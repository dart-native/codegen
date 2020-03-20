

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
        this.isClassMethod = false
    }
}

class DNPropertyContext extends DNContext {
    constructor(internal, name, type) {
        super(internal)
        this.name = name
        this.type = type
        this.isClassProperty = false
    }
}

class DNProtocolContext extends DNContext {
    constructor(internal, name) {
        super(internal)
        this.name = name
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
}

class DNCategoryContext extends DNContext {
    constructor(internal, name, host) {
        super(internal)
        this.name = name
        this.host = host
        this.properties = []
        this.methods = []
        this.protocols = []
    }
}

class DNTopLevelContext extends DNContext {
    constructor(internal) {
        super(internal)
    }
}


exports.DNTopLevelContext = DNTopLevelContext
exports.DNClassContext = DNClassContext
exports.DNCategoryContext = DNCategoryContext
exports.DNProtocolContext = DNPropertyContext
exports.DNMethodContext = DNMethodContext
exports.DNPropertyContext = DNPropertyContext
exports.DNArgumentContext = DNArgumentContext


