import DNObjectiveCTypeConverter from '../objc/DNObjectiveCTypeConverter.js'

String.prototype.capitalize = function () {
    return this.charAt(0).toUpperCase() + this.slice(1).toLowerCase()
}

export function rawGenericType(type) {
    var isGeneric = type.indexOf('<') > -1 && type.indexOf('>') > -1
    var rawType = isGeneric ? type.substring(0, type.indexOf('<')) : type
    return rawType
}

export function convertMutableTypeIfNeed(type) {
    var rawType = rawGenericType(type)
    var dartType = DNObjectiveCTypeConverter.SupportMutableTypesMap[rawType]
    var ret = dartType ? type.replace(rawType, dartType) : type
    return ret
}