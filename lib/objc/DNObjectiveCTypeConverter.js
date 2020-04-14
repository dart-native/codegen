//Not yet confirmed what type need to convert
const DNObjectiveCTypeMap = {
//  objc type            ||        dart type
    'int8_t'                :       'int',
    'int16_t'               :       'int',
    'int32_t'               :       'int',
    'int64_t'               :       'int',
    'uint8_t'               :       'int',
    'uint16_t'              :       'int',
    'uint32_t'              :       'int',
    'uint64_t'              :       'int',
    'CGFloat'               :       'double',
    'id'                    :       'dynamic',
    'BOOL'                  :       'bool',
    '_Bool'                 :       'bool',
    'void *'                :       'Pointer<Void>',             
    'char *'                :       'String',
    'NSString'              :       'String',
    'NSMutableString'       :       'String',
    'NSArray'               :       'List',
    'NSMutableArray'        :       'List',
    'NSDictionary'          :       'Map',
    'NSMutableDictionary'   :       'Map',
    'NSSet'                 :       'Set',
    'NSMutableSet'          :       'Set',
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