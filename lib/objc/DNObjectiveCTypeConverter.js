//Not yet confirmed what type need to convert
const DNObjectiveCTypeMap = {
//  objc                    :       dart
    'id'                    :       'dynamic',
    'BOOL'                  :       'bool',
    'NSString'              :       'string',
    'NSMutableString'       :       'string',
    'NSArray'               :       'List',
    'NSMutableArray'        :       'List',
    'NSDictionary'          :       'Map',
    'NSMutableDictionary'   :       'Map',
}

class DNObjectiveCTypeConverter {
    DNObjectiveCTypeConverter() {
      if (!DNObjectiveCTypeConverter.instance) {
        DNObjectiveCTypeConverter.instance = this
      }
      return DNObjectiveCTypeConverter.instance
    }

    convert(objcType){
        var convertRet = DNObjectiveCTypeMap[objcType]
        return convertRet ? convertRet : objcType
    }
  }

exports.DNObjectiveCTypeConverter = DNObjectiveCTypeConverter