String.prototype.capitalize = function () {
    return this.charAt(0).toUpperCase() + this.slice(1).toLowerCase()
}

function rawGenericType(type) {
    var isGeneric = type.indexOf('<') > -1 && type.indexOf('>') > -1
    var rawType = isGeneric ? type.substring(0, type.indexOf('<')) : type
    return rawType
}

exports.rawGenericType = rawGenericType