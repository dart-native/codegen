class DNContext {
    constructor(internal) {
        this.internal = internal
    }

    parse() {
        return ''
    }
}

class DNArgumentContext extends DNContext {
    constructor(internal, name) {
        super(internal)
        this.name = name
        this.type = null
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
    constructor(internal, name) {
        super(internal)
        this.name = name
        this.type = null
        this.isClassProperty = false
    }
}

class DNProtocolContext extends DNContext {
    constructor(internal, name) {
        this.name = name
        this.supers = []
        this.properties = []
        this.methods = []
    }
}

class DNClassContext extends DNContext {
    constructor(internal, name, superClass) {
        super(internal)
        this.name = name
        this.superClass = superClass
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
        this.children = []
    }
}


exports.DNTopLevelContext = DNTopLevelContext
exports.DNClassContext = DNClassContext
exports.DNCategoryContext = DNCategoryContext
exports.DNProtocolContext = DNPropertyContext
exports.DNMethodContext = DNMethodContext
exports.DNPropertyContext = DNPropertyContext
exports.DNArgumentContext = DNArgumentContext


