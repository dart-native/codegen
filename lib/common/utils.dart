String rawGenericType(String type) {
  if (type == null) {
    return '';
  }
  bool isGeneric = type.indexOf('<') > -1 && type.indexOf('>') > -1;
  String rawType = isGeneric ? type.substring(0, type.indexOf('<')) : type;
  return rawType;
}
