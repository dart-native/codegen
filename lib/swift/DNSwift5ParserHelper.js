export function fullTypeNameForType_identifierContext(ctx) {
    var result = ctx.type_name().start.text
    var next = ctx.type_identifier()
    while (next) {
        result += '.' + next.type_name().start.text
        next = next.type_identifier()
    }
    return result
}