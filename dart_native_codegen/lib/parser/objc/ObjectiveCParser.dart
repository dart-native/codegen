// Generated from ObjectiveCParser.g4 by ANTLR 4.9
// ignore_for_file: unused_import, unused_local_variable, prefer_single_quotes
import 'package:antlr4/antlr4.dart';
import 'dart:io';

import 'ObjectiveCParserListener.dart';
import 'ObjectiveCParserBaseListener.dart';
const int RULE_translationUnit = 0, RULE_topLevelDeclaration = 1, RULE_importDeclaration = 2, 
          RULE_classInterface = 3, RULE_categoryInterface = 4, RULE_classImplementation = 5, 
          RULE_categoryImplementation = 6, RULE_genericTypeSpecifier = 7, 
          RULE_protocolDeclaration = 8, RULE_protocolDeclarationSection = 9, 
          RULE_protocolDeclarationList = 10, RULE_classDeclaration = 11, 
          RULE_classDeclarationList = 12, RULE_protocolList = 13, RULE_propertyDeclaration = 14, 
          RULE_propertyAttributesList = 15, RULE_propertyAttribute = 16, 
          RULE_protocolName = 17, RULE_instanceVariables = 18, RULE_visibilitySection = 19, 
          RULE_accessModifier = 20, RULE_interfaceDeclarationList = 21, 
          RULE_classMethodDeclaration = 22, RULE_instanceMethodDeclaration = 23, 
          RULE_methodDeclaration = 24, RULE_implementationDefinitionList = 25, 
          RULE_classMethodDefinition = 26, RULE_instanceMethodDefinition = 27, 
          RULE_methodDefinition = 28, RULE_methodSelector = 29, RULE_keywordDeclarator = 30, 
          RULE_selector = 31, RULE_methodType = 32, RULE_propertyImplementation = 33, 
          RULE_propertySynthesizeList = 34, RULE_propertySynthesizeItem = 35, 
          RULE_blockType = 36, RULE_genericsSpecifier = 37, RULE_typeSpecifierWithPrefixes = 38, 
          RULE_dictionaryExpression = 39, RULE_dictionaryPair = 40, RULE_arrayExpression = 41, 
          RULE_boxExpression = 42, RULE_blockParameters = 43, RULE_typeVariableDeclaratorOrName = 44, 
          RULE_blockExpression = 45, RULE_messageExpression = 46, RULE_receiver = 47, 
          RULE_messageSelector = 48, RULE_keywordArgument = 49, RULE_keywordArgumentType = 50, 
          RULE_selectorExpression = 51, RULE_selectorName = 52, RULE_protocolExpression = 53, 
          RULE_encodeExpression = 54, RULE_typeVariableDeclarator = 55, 
          RULE_throwStatement = 56, RULE_tryBlock = 57, RULE_catchStatement = 58, 
          RULE_synchronizedStatement = 59, RULE_autoreleaseStatement = 60, 
          RULE_functionDeclaration = 61, RULE_functionDefinition = 62, RULE_functionSignature = 63, 
          RULE_functionPointer = 64, RULE_attribute = 65, RULE_attributeName = 66, 
          RULE_attributeParameters = 67, RULE_attributeParameterList = 68, 
          RULE_attributeParameter = 69, RULE_attributeParameterAssignment = 70, 
          RULE_declaration = 71, RULE_functionCallExpression = 72, RULE_enumDeclaration = 73, 
          RULE_varDeclaration = 74, RULE_typedefDeclaration = 75, RULE_typeDeclaratorList = 76, 
          RULE_typeDeclarator = 77, RULE_commonSpecifiers = 78, RULE_declarationSpecifiers = 79, 
          RULE_pointerQualifier = 80, RULE_attributeSpecifier = 81, RULE_initDeclaratorList = 82, 
          RULE_initDeclarator = 83, RULE_structOrUnionSpecifier = 84, RULE_fieldDeclaration = 85, 
          RULE_specifierQualifierList = 86, RULE_ibOutletQualifier = 87, 
          RULE_arcBehaviourSpecifier = 88, RULE_nullabilitySpecifier = 89, 
          RULE_storageClassSpecifier = 90, RULE_typePrefix = 91, RULE_typeQualifier = 92, 
          RULE_protocolQualifier = 93, RULE_typeSpecifier = 94, RULE_typeofExpression = 95, 
          RULE_fieldDeclaratorList = 96, RULE_fieldDeclarator = 97, RULE_enumSpecifier = 98, 
          RULE_enumeratorList = 99, RULE_enumerator = 100, RULE_enumeratorIdentifier = 101, 
          RULE_directDeclarator = 102, RULE_declaratorSuffix = 103, RULE_parameterList = 104, 
          RULE_pointer = 105, RULE_macro = 106, RULE_arrayInitializer = 107, 
          RULE_structInitializer = 108, RULE_initializerList = 109, RULE_typeName = 110, 
          RULE_abstractDeclarator = 111, RULE_abstractDeclaratorSuffix = 112, 
          RULE_parameterDeclarationList = 113, RULE_parameterDeclaration = 114, 
          RULE_declarator = 115, RULE_statement = 116, RULE_labeledStatement = 117, 
          RULE_rangeExpression = 118, RULE_compoundStatement = 119, RULE_selectionStatement = 120, 
          RULE_switchStatement = 121, RULE_switchBlock = 122, RULE_switchSection = 123, 
          RULE_switchLabel = 124, RULE_iterationStatement = 125, RULE_whileStatement = 126, 
          RULE_doStatement = 127, RULE_forStatement = 128, RULE_forLoopInitializer = 129, 
          RULE_forInStatement = 130, RULE_jumpStatement = 131, RULE_expressions = 132, 
          RULE_expression = 133, RULE_assignmentOperator = 134, RULE_castExpression = 135, 
          RULE_initializer = 136, RULE_constantExpression = 137, RULE_unaryExpression = 138, 
          RULE_unaryOperator = 139, RULE_postfixExpression = 140, RULE_postfix = 141, 
          RULE_argumentExpressionList = 142, RULE_argumentExpression = 143, 
          RULE_osVersion = 144, RULE_primaryExpression = 145, RULE_constant = 146, 
          RULE_stringLiteral = 147, RULE_identifier = 148;
class ObjectiveCParser extends Parser {
  static final checkVersion = () => RuntimeMetaData.checkVersion('4.9', RuntimeMetaData.VERSION);
  static const int TOKEN_EOF = IntStream.EOF;

  static final List<DFA> _decisionToDFA = List.generate(
      _ATN.numberOfDecisions, (i) => DFA(_ATN.getDecisionState(i), i));
  static final PredictionContextCache _sharedContextCache = PredictionContextCache();
  static const int TOKEN_AUTO = 1, TOKEN_BREAK = 2, TOKEN_CASE = 3, TOKEN_CHAR = 4, 
                   TOKEN_CONST = 5, TOKEN_CONTINUE = 6, TOKEN_DEFAULT = 7, 
                   TOKEN_DO = 8, TOKEN_DOUBLE = 9, TOKEN_ELSE = 10, TOKEN_ENUM = 11, 
                   TOKEN_EXTERN = 12, TOKEN_FLOAT = 13, TOKEN_FOR = 14, 
                   TOKEN_GOTO = 15, TOKEN_IF = 16, TOKEN_INLINE = 17, TOKEN_INT = 18, 
                   TOKEN_LONG = 19, TOKEN_REGISTER = 20, TOKEN_RESTRICT = 21, 
                   TOKEN_RETURN = 22, TOKEN_SHORT = 23, TOKEN_SIGNED = 24, 
                   TOKEN_SIZEOF = 25, TOKEN_STATIC = 26, TOKEN_STRUCT = 27, 
                   TOKEN_SWITCH = 28, TOKEN_TYPEDEF = 29, TOKEN_UNION = 30, 
                   TOKEN_UNSIGNED = 31, TOKEN_VOID = 32, TOKEN_VOLATILE = 33, 
                   TOKEN_WHILE = 34, TOKEN_BOOL_ = 35, TOKEN_COMPLEX = 36, 
                   TOKEN_IMAGINERY = 37, TOKEN_TRUE = 38, TOKEN_FALSE = 39, 
                   TOKEN_BOOL = 40, TOKEN_Class = 41, TOKEN_BYCOPY = 42, 
                   TOKEN_BYREF = 43, TOKEN_ID = 44, TOKEN_IMP = 45, TOKEN_IN = 46, 
                   TOKEN_INOUT = 47, TOKEN_NIL = 48, TOKEN_NO = 49, TOKEN_NULL = 50, 
                   TOKEN_ONEWAY = 51, TOKEN_OUT = 52, TOKEN_PROTOCOL_ = 53, 
                   TOKEN_SEL = 54, TOKEN_SELF = 55, TOKEN_SUPER = 56, TOKEN_YES = 57, 
                   TOKEN_AUTORELEASEPOOL = 58, TOKEN_CATCH = 59, TOKEN_CLASS = 60, 
                   TOKEN_DYNAMIC = 61, TOKEN_ENCODE = 62, TOKEN_END = 63, 
                   TOKEN_FINALLY = 64, TOKEN_IMPLEMENTATION = 65, TOKEN_INTERFACE = 66, 
                   TOKEN_IMPORT = 67, TOKEN_PACKAGE = 68, TOKEN_PROTOCOL = 69, 
                   TOKEN_OPTIONAL = 70, TOKEN_PRIVATE = 71, TOKEN_PROPERTY = 72, 
                   TOKEN_PROTECTED = 73, TOKEN_PUBLIC = 74, TOKEN_REQUIRED = 75, 
                   TOKEN_SELECTOR = 76, TOKEN_SYNCHRONIZED = 77, TOKEN_SYNTHESIZE = 78, 
                   TOKEN_THROW = 79, TOKEN_TRY = 80, TOKEN_ATOMIC = 81, 
                   TOKEN_NONATOMIC = 82, TOKEN_RETAIN = 83, TOKEN_ATTRIBUTE = 84, 
                   TOKEN_AUTORELEASING_QUALIFIER = 85, TOKEN_BLOCK = 86, 
                   TOKEN_BRIDGE = 87, TOKEN_BRIDGE_RETAINED = 88, TOKEN_BRIDGE_TRANSFER = 89, 
                   TOKEN_COVARIANT = 90, TOKEN_CONTRAVARIANT = 91, TOKEN_DEPRECATED = 92, 
                   TOKEN_KINDOF = 93, TOKEN_STRONG_QUALIFIER = 94, TOKEN_TYPEOF = 95, 
                   TOKEN_UNSAFE_UNRETAINED_QUALIFIER = 96, TOKEN_UNUSED = 97, 
                   TOKEN_WEAK_QUALIFIER = 98, TOKEN_NULL_UNSPECIFIED = 99, 
                   TOKEN_NULLABLE = 100, TOKEN_NONNULL = 101, TOKEN_NULL_RESETTABLE = 102, 
                   TOKEN_NS_INLINE = 103, TOKEN_NS_ENUM = 104, TOKEN_NS_OPTIONS = 105, 
                   TOKEN_NS_CLOSED_ENUM = 106, TOKEN_NS_TYPED_EXTENSIBLE_ENUM = 107, 
                   TOKEN_NS_ERROR_ENUM = 108, TOKEN_ASSIGN = 109, TOKEN_COPY = 110, 
                   TOKEN_GETTER = 111, TOKEN_SETTER = 112, TOKEN_STRONG = 113, 
                   TOKEN_READONLY = 114, TOKEN_READWRITE = 115, TOKEN_WEAK = 116, 
                   TOKEN_UNSAFE_UNRETAINED = 117, TOKEN_IB_OUTLET = 118, 
                   TOKEN_IB_OUTLET_COLLECTION = 119, TOKEN_IB_INSPECTABLE = 120, 
                   TOKEN_IB_DESIGNABLE = 121, TOKEN_NS_ASSUME_NONNULL_BEGIN = 122, 
                   TOKEN_NS_ASSUME_NONNULL_END = 123, TOKEN_EXTERN_SUFFIX = 124, 
                   TOKEN_IOS_SUFFIX = 125, TOKEN_MAC_SUFFIX = 126, TOKEN_TVOS_PROHIBITED = 127, 
                   TOKEN_NS_NOESCAPE = 128, TOKEN_EXPORT_SUFFIX = 129, TOKEN_NS_RETURNS_RETAINED = 130, 
                   TOKEN_NS_RETURNS_NOT_RETAINED = 131, TOKEN_NS_RETURNS_INNER_POINTER = 132, 
                   TOKEN_CF_RETURNS_RETAINED = 133, TOKEN_CF_RETURNS_NOT_RETAINED = 134, 
                   TOKEN_CF_CONSUMED = 135, TOKEN_IDENTIFIER = 136, TOKEN_LP = 137, 
                   TOKEN_RP = 138, TOKEN_LBRACE = 139, TOKEN_RBRACE = 140, 
                   TOKEN_LBRACK = 141, TOKEN_RBRACK = 142, TOKEN_SEMI = 143, 
                   TOKEN_COMMA = 144, TOKEN_DOT = 145, TOKEN_STRUCTACCESS = 146, 
                   TOKEN_AT = 147, TOKEN_ASSIGNMENT = 148, TOKEN_GT = 149, 
                   TOKEN_LT = 150, TOKEN_BANG = 151, TOKEN_TILDE = 152, 
                   TOKEN_QUESTION = 153, TOKEN_COLON = 154, TOKEN_EQUAL = 155, 
                   TOKEN_LE = 156, TOKEN_GE = 157, TOKEN_NOTEQUAL = 158, 
                   TOKEN_AND = 159, TOKEN_OR = 160, TOKEN_INC = 161, TOKEN_DEC = 162, 
                   TOKEN_ADD = 163, TOKEN_SUB = 164, TOKEN_MUL = 165, TOKEN_DIV = 166, 
                   TOKEN_BITAND = 167, TOKEN_BITOR = 168, TOKEN_BITXOR = 169, 
                   TOKEN_MOD = 170, TOKEN_ADD_ASSIGN = 171, TOKEN_SUB_ASSIGN = 172, 
                   TOKEN_MUL_ASSIGN = 173, TOKEN_DIV_ASSIGN = 174, TOKEN_AND_ASSIGN = 175, 
                   TOKEN_OR_ASSIGN = 176, TOKEN_XOR_ASSIGN = 177, TOKEN_MOD_ASSIGN = 178, 
                   TOKEN_LSHIFT_ASSIGN = 179, TOKEN_RSHIFT_ASSIGN = 180, 
                   TOKEN_ELIPSIS = 181, TOKEN_CHARACTER_LITERAL = 182, TOKEN_STRING_START = 183, 
                   TOKEN_HEX_LITERAL = 184, TOKEN_OCTAL_LITERAL = 185, TOKEN_BINARY_LITERAL = 186, 
                   TOKEN_DECIMAL_LITERAL = 187, TOKEN_FLOATING_POINT_LITERAL = 188, 
                   TOKEN_VERSION_SEMATIC = 189, TOKEN_WS = 190, TOKEN_MULTI_COMMENT = 191, 
                   TOKEN_SINGLE_COMMENT = 192, TOKEN_BACKSLASH = 193, TOKEN_SHARP = 194, 
                   TOKEN_STRING_NEWLINE = 195, TOKEN_STRING_END = 196, TOKEN_STRING_VALUE = 197, 
                   TOKEN_DIRECTIVE_IMPORT = 198, TOKEN_DIRECTIVE_INCLUDE = 199, 
                   TOKEN_DIRECTIVE_PRAGMA = 200, TOKEN_DIRECTIVE_DEFINE = 201, 
                   TOKEN_DIRECTIVE_DEFINED = 202, TOKEN_DIRECTIVE_IF = 203, 
                   TOKEN_DIRECTIVE_ELIF = 204, TOKEN_DIRECTIVE_ELSE = 205, 
                   TOKEN_DIRECTIVE_UNDEF = 206, TOKEN_DIRECTIVE_IFDEF = 207, 
                   TOKEN_DIRECTIVE_IFNDEF = 208, TOKEN_DIRECTIVE_ENDIF = 209, 
                   TOKEN_DIRECTIVE_TRUE = 210, TOKEN_DIRECTIVE_FALSE = 211, 
                   TOKEN_DIRECTIVE_ERROR = 212, TOKEN_DIRECTIVE_WARNING = 213, 
                   TOKEN_DIRECTIVE_BANG = 214, TOKEN_DIRECTIVE_LP = 215, 
                   TOKEN_DIRECTIVE_RP = 216, TOKEN_DIRECTIVE_EQUAL = 217, 
                   TOKEN_DIRECTIVE_NOTEQUAL = 218, TOKEN_DIRECTIVE_AND = 219, 
                   TOKEN_DIRECTIVE_OR = 220, TOKEN_DIRECTIVE_LT = 221, TOKEN_DIRECTIVE_GT = 222, 
                   TOKEN_DIRECTIVE_LE = 223, TOKEN_DIRECTIVE_GE = 224, TOKEN_DIRECTIVE_ADD = 225, 
                   TOKEN_DIRECTIVE_SUB = 226, TOKEN_DIRECTIVE_MUL = 227, 
                   TOKEN_DIRECTIVE_DIV = 228, TOKEN_DIRECTIVE_BITAND = 229, 
                   TOKEN_DIRECTIVE_BITOR = 230, TOKEN_DIRECTIVE_BITXOR = 231, 
                   TOKEN_DIRECTIVE_MOD = 232, TOKEN_DIRECTIVE_DOT = 233, 
                   TOKEN_DIRECTIVE_STRING = 234, TOKEN_DIRECTIVE_ID = 235, 
                   TOKEN_DIRECTIVE_DECIMAL_LITERAL = 236, TOKEN_DIRECTIVE_FLOAT = 237, 
                   TOKEN_DIRECTIVE_NEWLINE = 238, TOKEN_DIRECTIVE_MULTI_COMMENT = 239, 
                   TOKEN_DIRECTIVE_SINGLE_COMMENT = 240, TOKEN_DIRECTIVE_BACKSLASH_NEWLINE = 241, 
                   TOKEN_DIRECTIVE_TEXT_NEWLINE = 242, TOKEN_DIRECTIVE_TEXT = 243;

  @override
  final List<String> ruleNames = [
    'translationUnit', 'topLevelDeclaration', 'importDeclaration', 'classInterface', 
    'categoryInterface', 'classImplementation', 'categoryImplementation', 
    'genericTypeSpecifier', 'protocolDeclaration', 'protocolDeclarationSection', 
    'protocolDeclarationList', 'classDeclaration', 'classDeclarationList', 
    'protocolList', 'propertyDeclaration', 'propertyAttributesList', 'propertyAttribute', 
    'protocolName', 'instanceVariables', 'visibilitySection', 'accessModifier', 
    'interfaceDeclarationList', 'classMethodDeclaration', 'instanceMethodDeclaration', 
    'methodDeclaration', 'implementationDefinitionList', 'classMethodDefinition', 
    'instanceMethodDefinition', 'methodDefinition', 'methodSelector', 'keywordDeclarator', 
    'selector', 'methodType', 'propertyImplementation', 'propertySynthesizeList', 
    'propertySynthesizeItem', 'blockType', 'genericsSpecifier', 'typeSpecifierWithPrefixes', 
    'dictionaryExpression', 'dictionaryPair', 'arrayExpression', 'boxExpression', 
    'blockParameters', 'typeVariableDeclaratorOrName', 'blockExpression', 
    'messageExpression', 'receiver', 'messageSelector', 'keywordArgument', 
    'keywordArgumentType', 'selectorExpression', 'selectorName', 'protocolExpression', 
    'encodeExpression', 'typeVariableDeclarator', 'throwStatement', 'tryBlock', 
    'catchStatement', 'synchronizedStatement', 'autoreleaseStatement', 'functionDeclaration', 
    'functionDefinition', 'functionSignature', 'functionPointer', 'attribute', 
    'attributeName', 'attributeParameters', 'attributeParameterList', 'attributeParameter', 
    'attributeParameterAssignment', 'declaration', 'functionCallExpression', 
    'enumDeclaration', 'varDeclaration', 'typedefDeclaration', 'typeDeclaratorList', 
    'typeDeclarator', 'commonSpecifiers', 'declarationSpecifiers', 'pointerQualifier', 
    'attributeSpecifier', 'initDeclaratorList', 'initDeclarator', 'structOrUnionSpecifier', 
    'fieldDeclaration', 'specifierQualifierList', 'ibOutletQualifier', 'arcBehaviourSpecifier', 
    'nullabilitySpecifier', 'storageClassSpecifier', 'typePrefix', 'typeQualifier', 
    'protocolQualifier', 'typeSpecifier', 'typeofExpression', 'fieldDeclaratorList', 
    'fieldDeclarator', 'enumSpecifier', 'enumeratorList', 'enumerator', 
    'enumeratorIdentifier', 'directDeclarator', 'declaratorSuffix', 'parameterList', 
    'pointer', 'macro', 'arrayInitializer', 'structInitializer', 'initializerList', 
    'typeName', 'abstractDeclarator', 'abstractDeclaratorSuffix', 'parameterDeclarationList', 
    'parameterDeclaration', 'declarator', 'statement', 'labeledStatement', 
    'rangeExpression', 'compoundStatement', 'selectionStatement', 'switchStatement', 
    'switchBlock', 'switchSection', 'switchLabel', 'iterationStatement', 
    'whileStatement', 'doStatement', 'forStatement', 'forLoopInitializer', 
    'forInStatement', 'jumpStatement', 'expressions', 'expression', 'assignmentOperator', 
    'castExpression', 'initializer', 'constantExpression', 'unaryExpression', 
    'unaryOperator', 'postfixExpression', 'postfix', 'argumentExpressionList', 
    'argumentExpression', 'osVersion', 'primaryExpression', 'constant', 
    'stringLiteral', 'identifier'
  ];

  static final List<String> _LITERAL_NAMES = [
      null, "'auto'", "'break'", "'case'", "'char'", "'const'", "'continue'", 
      "'default'", "'do'", "'double'", null, "'enum'", "'extern'", "'float'", 
      "'for'", "'goto'", null, "'inline'", "'int'", "'long'", "'register'", 
      "'restrict'", "'return'", "'short'", "'signed'", "'sizeof'", "'static'", 
      "'struct'", "'switch'", "'typedef'", "'union'", "'unsigned'", "'void'", 
      "'volatile'", "'while'", "'_Bool'", "'_Complex'", "'_Imaginery'", 
      "'true'", "'false'", "'BOOL'", "'Class'", "'bycopy'", "'byref'", "'id'", 
      "'IMP'", "'in'", "'inout'", "'nil'", "'NO'", "'NULL'", "'oneway'", 
      "'out'", "'Protocol'", "'SEL'", "'self'", "'super'", "'YES'", "'@autoreleasepool'", 
      "'@catch'", "'@class'", "'@dynamic'", "'@encode'", "'@end'", "'@finally'", 
      "'@implementation'", "'@interface'", null, "'@package'", "'@protocol'", 
      "'@optional'", "'@private'", "'@property'", "'@protected'", "'@public'", 
      "'@required'", "'@selector'", "'@synchronized'", "'@synthesize'", 
      "'@throw'", "'@try'", "'atomic'", "'nonatomic'", "'retain'", "'__attribute__'", 
      "'__autoreleasing'", "'__block'", "'__bridge'", "'__bridge_retained'", 
      "'__bridge_transfer'", "'__covariant'", "'__contravariant'", "'__deprecated'", 
      "'__kindof'", "'__strong'", null, "'__unsafe_unretained'", "'__unused'", 
      "'__weak'", null, null, null, "'null_resettable'", "'NS_INLINE'", 
      "'NS_ENUM'", "'NS_OPTIONS'", "'NS_CLOSED_ENUM'", "'NS_TYPED_EXTENSIBLE_ENUM'", 
      "'NS_ERROR_ENUM'", "'assign'", "'copy'", "'getter'", "'setter'", "'strong'", 
      "'readonly'", "'readwrite'", "'weak'", "'unsafe_unretained'", "'IBOutlet'", 
      "'IBOutletCollection'", "'IBInspectable'", "'IB_DESIGNABLE'", null, 
      null, null, null, null, "'__TVOS_PROHIBITED'", "'NS_NOESCAPE'", null, 
      "'NS_RETURNS_RETAINED'", "'NS_RETURNS_NOT_RETAINED'", "'NS_RETURNS_INNER_POINTER'", 
      "'CF_RETURNS_RETAINED'", "'CF_RETURNS_NOT_RETAINED'", "'CF_CONSUMED'", 
      null, null, null, "'{'", "'}'", "'['", "']'", "';'", "','", null, 
      "'->'", "'@'", "'='", null, null, null, "'~'", "'?'", "':'", null, 
      null, null, null, null, null, "'++'", "'--'", null, null, null, null, 
      null, null, null, null, "'+='", "'-='", "'*='", "'/='", "'&='", "'|='", 
      "'^='", "'%='", "'<<='", "'>>='", "'...'", null, null, null, null, 
      null, null, null, null, null, null, null, "'\\'", null, null, null, 
      null, null, null, null, null, "'defined'", null, "'elif'", null, "'undef'", 
      "'ifdef'", "'ifndef'", "'endif'"
  ];
  static final List<String> _SYMBOLIC_NAMES = [
      null, "AUTO", "BREAK", "CASE", "CHAR", "CONST", "CONTINUE", "DEFAULT", 
      "DO", "DOUBLE", "ELSE", "ENUM", "EXTERN", "FLOAT", "FOR", "GOTO", 
      "IF", "INLINE", "INT", "LONG", "REGISTER", "RESTRICT", "RETURN", "SHORT", 
      "SIGNED", "SIZEOF", "STATIC", "STRUCT", "SWITCH", "TYPEDEF", "UNION", 
      "UNSIGNED", "VOID", "VOLATILE", "WHILE", "BOOL_", "COMPLEX", "IMAGINERY", 
      "TRUE", "FALSE", "BOOL", "Class", "BYCOPY", "BYREF", "ID", "IMP", 
      "IN", "INOUT", "NIL", "NO", "NULL", "ONEWAY", "OUT", "PROTOCOL_", 
      "SEL", "SELF", "SUPER", "YES", "AUTORELEASEPOOL", "CATCH", "CLASS", 
      "DYNAMIC", "ENCODE", "END", "FINALLY", "IMPLEMENTATION", "INTERFACE", 
      "IMPORT", "PACKAGE", "PROTOCOL", "OPTIONAL", "PRIVATE", "PROPERTY", 
      "PROTECTED", "PUBLIC", "REQUIRED", "SELECTOR", "SYNCHRONIZED", "SYNTHESIZE", 
      "THROW", "TRY", "ATOMIC", "NONATOMIC", "RETAIN", "ATTRIBUTE", "AUTORELEASING_QUALIFIER", 
      "BLOCK", "BRIDGE", "BRIDGE_RETAINED", "BRIDGE_TRANSFER", "COVARIANT", 
      "CONTRAVARIANT", "DEPRECATED", "KINDOF", "STRONG_QUALIFIER", "TYPEOF", 
      "UNSAFE_UNRETAINED_QUALIFIER", "UNUSED", "WEAK_QUALIFIER", "NULL_UNSPECIFIED", 
      "NULLABLE", "NONNULL", "NULL_RESETTABLE", "NS_INLINE", "NS_ENUM", 
      "NS_OPTIONS", "NS_CLOSED_ENUM", "NS_TYPED_EXTENSIBLE_ENUM", "NS_ERROR_ENUM", 
      "ASSIGN", "COPY", "GETTER", "SETTER", "STRONG", "READONLY", "READWRITE", 
      "WEAK", "UNSAFE_UNRETAINED", "IB_OUTLET", "IB_OUTLET_COLLECTION", 
      "IB_INSPECTABLE", "IB_DESIGNABLE", "NS_ASSUME_NONNULL_BEGIN", "NS_ASSUME_NONNULL_END", 
      "EXTERN_SUFFIX", "IOS_SUFFIX", "MAC_SUFFIX", "TVOS_PROHIBITED", "NS_NOESCAPE", 
      "EXPORT_SUFFIX", "NS_RETURNS_RETAINED", "NS_RETURNS_NOT_RETAINED", 
      "NS_RETURNS_INNER_POINTER", "CF_RETURNS_RETAINED", "CF_RETURNS_NOT_RETAINED", 
      "CF_CONSUMED", "IDENTIFIER", "LP", "RP", "LBRACE", "RBRACE", "LBRACK", 
      "RBRACK", "SEMI", "COMMA", "DOT", "STRUCTACCESS", "AT", "ASSIGNMENT", 
      "GT", "LT", "BANG", "TILDE", "QUESTION", "COLON", "EQUAL", "LE", "GE", 
      "NOTEQUAL", "AND", "OR", "INC", "DEC", "ADD", "SUB", "MUL", "DIV", 
      "BITAND", "BITOR", "BITXOR", "MOD", "ADD_ASSIGN", "SUB_ASSIGN", "MUL_ASSIGN", 
      "DIV_ASSIGN", "AND_ASSIGN", "OR_ASSIGN", "XOR_ASSIGN", "MOD_ASSIGN", 
      "LSHIFT_ASSIGN", "RSHIFT_ASSIGN", "ELIPSIS", "CHARACTER_LITERAL", 
      "STRING_START", "HEX_LITERAL", "OCTAL_LITERAL", "BINARY_LITERAL", 
      "DECIMAL_LITERAL", "FLOATING_POINT_LITERAL", "VERSION_SEMATIC", "WS", 
      "MULTI_COMMENT", "SINGLE_COMMENT", "BACKSLASH", "SHARP", "STRING_NEWLINE", 
      "STRING_END", "STRING_VALUE", "DIRECTIVE_IMPORT", "DIRECTIVE_INCLUDE", 
      "DIRECTIVE_PRAGMA", "DIRECTIVE_DEFINE", "DIRECTIVE_DEFINED", "DIRECTIVE_IF", 
      "DIRECTIVE_ELIF", "DIRECTIVE_ELSE", "DIRECTIVE_UNDEF", "DIRECTIVE_IFDEF", 
      "DIRECTIVE_IFNDEF", "DIRECTIVE_ENDIF", "DIRECTIVE_TRUE", "DIRECTIVE_FALSE", 
      "DIRECTIVE_ERROR", "DIRECTIVE_WARNING", "DIRECTIVE_BANG", "DIRECTIVE_LP", 
      "DIRECTIVE_RP", "DIRECTIVE_EQUAL", "DIRECTIVE_NOTEQUAL", "DIRECTIVE_AND", 
      "DIRECTIVE_OR", "DIRECTIVE_LT", "DIRECTIVE_GT", "DIRECTIVE_LE", "DIRECTIVE_GE", 
      "DIRECTIVE_ADD", "DIRECTIVE_SUB", "DIRECTIVE_MUL", "DIRECTIVE_DIV", 
      "DIRECTIVE_BITAND", "DIRECTIVE_BITOR", "DIRECTIVE_BITXOR", "DIRECTIVE_MOD", 
      "DIRECTIVE_DOT", "DIRECTIVE_STRING", "DIRECTIVE_ID", "DIRECTIVE_DECIMAL_LITERAL", 
      "DIRECTIVE_FLOAT", "DIRECTIVE_NEWLINE", "DIRECTIVE_MULTI_COMMENT", 
      "DIRECTIVE_SINGLE_COMMENT", "DIRECTIVE_BACKSLASH_NEWLINE", "DIRECTIVE_TEXT_NEWLINE", 
      "DIRECTIVE_TEXT"
  ];
  static final Vocabulary VOCABULARY = VocabularyImpl(_LITERAL_NAMES, _SYMBOLIC_NAMES);

  @override
  Vocabulary get vocabulary {
    return VOCABULARY;
  }

  @override
  String get grammarFileName => 'ObjectiveCParser.g4';

  @override
  String get serializedATN => _serializedATN;

  @override
  ATN getATN() {
   return _ATN;
  }

  ObjectiveCParser(TokenStream input) : super(input) {
    interpreter = ParserATNSimulator(this, _ATN, _decisionToDFA, _sharedContextCache);
  }

  TranslationUnitContext translationUnit() {
    dynamic _localctx = TranslationUnitContext(context, state);
    enterRule(_localctx, 0, RULE_translationUnit);
    int _la;
    try {
      enterOuterAlt(_localctx, 1);
      state = 301;
      errorHandler.sync(this);
      _la = tokenStream.LA(1);
      while ((((_la) & ~0x3f) == 0 && ((BigInt.one << _la) & ((BigInt.one << TOKEN_AUTO) | (BigInt.one << TOKEN_CHAR) | (BigInt.one << TOKEN_CONST) | (BigInt.one << TOKEN_DOUBLE) | (BigInt.one << TOKEN_ENUM) | (BigInt.one << TOKEN_EXTERN) | (BigInt.one << TOKEN_FLOAT) | (BigInt.one << TOKEN_INLINE) | (BigInt.one << TOKEN_INT) | (BigInt.one << TOKEN_LONG) | (BigInt.one << TOKEN_REGISTER) | (BigInt.one << TOKEN_RESTRICT) | (BigInt.one << TOKEN_SHORT) | (BigInt.one << TOKEN_SIGNED) | (BigInt.one << TOKEN_STATIC) | (BigInt.one << TOKEN_STRUCT) | (BigInt.one << TOKEN_TYPEDEF) | (BigInt.one << TOKEN_UNION) | (BigInt.one << TOKEN_UNSIGNED) | (BigInt.one << TOKEN_VOID) | (BigInt.one << TOKEN_VOLATILE) | (BigInt.one << TOKEN_BOOL) | (BigInt.one << TOKEN_Class) | (BigInt.one << TOKEN_BYCOPY) | (BigInt.one << TOKEN_BYREF) | (BigInt.one << TOKEN_ID) | (BigInt.one << TOKEN_IMP) | (BigInt.one << TOKEN_IN) | (BigInt.one << TOKEN_INOUT) | (BigInt.one << TOKEN_ONEWAY) | (BigInt.one << TOKEN_OUT) | (BigInt.one << TOKEN_PROTOCOL_) | (BigInt.one << TOKEN_SEL) | (BigInt.one << TOKEN_SELF) | (BigInt.one << TOKEN_SUPER) | (BigInt.one << TOKEN_CLASS))) != BigInt.zero) || ((((_la - 65)) & ~0x3f) == 0 && ((BigInt.one << (_la - 65)) & ((BigInt.one << (TOKEN_IMPLEMENTATION - 65)) | (BigInt.one << (TOKEN_INTERFACE - 65)) | (BigInt.one << (TOKEN_IMPORT - 65)) | (BigInt.one << (TOKEN_PROTOCOL - 65)) | (BigInt.one << (TOKEN_ATOMIC - 65)) | (BigInt.one << (TOKEN_NONATOMIC - 65)) | (BigInt.one << (TOKEN_RETAIN - 65)) | (BigInt.one << (TOKEN_ATTRIBUTE - 65)) | (BigInt.one << (TOKEN_AUTORELEASING_QUALIFIER - 65)) | (BigInt.one << (TOKEN_BLOCK - 65)) | (BigInt.one << (TOKEN_BRIDGE - 65)) | (BigInt.one << (TOKEN_BRIDGE_RETAINED - 65)) | (BigInt.one << (TOKEN_BRIDGE_TRANSFER - 65)) | (BigInt.one << (TOKEN_COVARIANT - 65)) | (BigInt.one << (TOKEN_CONTRAVARIANT - 65)) | (BigInt.one << (TOKEN_DEPRECATED - 65)) | (BigInt.one << (TOKEN_KINDOF - 65)) | (BigInt.one << (TOKEN_STRONG_QUALIFIER - 65)) | (BigInt.one << (TOKEN_TYPEOF - 65)) | (BigInt.one << (TOKEN_UNSAFE_UNRETAINED_QUALIFIER - 65)) | (BigInt.one << (TOKEN_UNUSED - 65)) | (BigInt.one << (TOKEN_WEAK_QUALIFIER - 65)) | (BigInt.one << (TOKEN_NULL_UNSPECIFIED - 65)) | (BigInt.one << (TOKEN_NULLABLE - 65)) | (BigInt.one << (TOKEN_NONNULL - 65)) | (BigInt.one << (TOKEN_NULL_RESETTABLE - 65)) | (BigInt.one << (TOKEN_NS_INLINE - 65)) | (BigInt.one << (TOKEN_NS_ENUM - 65)) | (BigInt.one << (TOKEN_NS_OPTIONS - 65)) | (BigInt.one << (TOKEN_NS_CLOSED_ENUM - 65)) | (BigInt.one << (TOKEN_NS_ERROR_ENUM - 65)) | (BigInt.one << (TOKEN_ASSIGN - 65)) | (BigInt.one << (TOKEN_COPY - 65)) | (BigInt.one << (TOKEN_GETTER - 65)) | (BigInt.one << (TOKEN_SETTER - 65)) | (BigInt.one << (TOKEN_STRONG - 65)) | (BigInt.one << (TOKEN_READONLY - 65)) | (BigInt.one << (TOKEN_READWRITE - 65)) | (BigInt.one << (TOKEN_WEAK - 65)) | (BigInt.one << (TOKEN_UNSAFE_UNRETAINED - 65)) | (BigInt.one << (TOKEN_IB_OUTLET - 65)) | (BigInt.one << (TOKEN_IB_OUTLET_COLLECTION - 65)) | (BigInt.one << (TOKEN_IB_INSPECTABLE - 65)) | (BigInt.one << (TOKEN_IB_DESIGNABLE - 65)))) != BigInt.zero) || _la == TOKEN_IDENTIFIER) {
        state = 298;
        topLevelDeclaration();
        state = 303;
        errorHandler.sync(this);
        _la = tokenStream.LA(1);
      }
      state = 304;
      match(TOKEN_EOF);
    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return _localctx;
  }

  TopLevelDeclarationContext topLevelDeclaration() {
    dynamic _localctx = TopLevelDeclarationContext(context, state);
    enterRule(_localctx, 2, RULE_topLevelDeclaration);
    try {
      state = 317;
      errorHandler.sync(this);
      switch (interpreter.adaptivePredict(tokenStream, 1, context)) {
      case 1:
        enterOuterAlt(_localctx, 1);
        state = 306;
        importDeclaration();
        break;
      case 2:
        enterOuterAlt(_localctx, 2);
        state = 307;
        functionDeclaration();
        break;
      case 3:
        enterOuterAlt(_localctx, 3);
        state = 308;
        declaration();
        break;
      case 4:
        enterOuterAlt(_localctx, 4);
        state = 309;
        classInterface();
        break;
      case 5:
        enterOuterAlt(_localctx, 5);
        state = 310;
        classImplementation();
        break;
      case 6:
        enterOuterAlt(_localctx, 6);
        state = 311;
        categoryInterface();
        break;
      case 7:
        enterOuterAlt(_localctx, 7);
        state = 312;
        categoryImplementation();
        break;
      case 8:
        enterOuterAlt(_localctx, 8);
        state = 313;
        protocolDeclaration();
        break;
      case 9:
        enterOuterAlt(_localctx, 9);
        state = 314;
        protocolDeclarationList();
        break;
      case 10:
        enterOuterAlt(_localctx, 10);
        state = 315;
        classDeclarationList();
        break;
      case 11:
        enterOuterAlt(_localctx, 11);
        state = 316;
        functionDefinition();
        break;
      }
    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return _localctx;
  }

  ImportDeclarationContext importDeclaration() {
    dynamic _localctx = ImportDeclarationContext(context, state);
    enterRule(_localctx, 4, RULE_importDeclaration);
    int _la;
    try {
      enterOuterAlt(_localctx, 1);
      state = 319;
      match(TOKEN_IMPORT);
      state = 336;
      errorHandler.sync(this);
      switch (tokenStream.LA(1)) {
      case TOKEN_BOOL:
      case TOKEN_Class:
      case TOKEN_BYCOPY:
      case TOKEN_BYREF:
      case TOKEN_ID:
      case TOKEN_IMP:
      case TOKEN_IN:
      case TOKEN_INOUT:
      case TOKEN_ONEWAY:
      case TOKEN_OUT:
      case TOKEN_PROTOCOL_:
      case TOKEN_SEL:
      case TOKEN_SELF:
      case TOKEN_SUPER:
      case TOKEN_ATOMIC:
      case TOKEN_NONATOMIC:
      case TOKEN_RETAIN:
      case TOKEN_AUTORELEASING_QUALIFIER:
      case TOKEN_BLOCK:
      case TOKEN_BRIDGE_RETAINED:
      case TOKEN_BRIDGE_TRANSFER:
      case TOKEN_COVARIANT:
      case TOKEN_CONTRAVARIANT:
      case TOKEN_DEPRECATED:
      case TOKEN_KINDOF:
      case TOKEN_UNUSED:
      case TOKEN_NULL_UNSPECIFIED:
      case TOKEN_NULLABLE:
      case TOKEN_NONNULL:
      case TOKEN_NULL_RESETTABLE:
      case TOKEN_NS_INLINE:
      case TOKEN_NS_ENUM:
      case TOKEN_NS_OPTIONS:
      case TOKEN_ASSIGN:
      case TOKEN_COPY:
      case TOKEN_GETTER:
      case TOKEN_SETTER:
      case TOKEN_STRONG:
      case TOKEN_READONLY:
      case TOKEN_READWRITE:
      case TOKEN_WEAK:
      case TOKEN_UNSAFE_UNRETAINED:
      case TOKEN_IB_OUTLET:
      case TOKEN_IB_OUTLET_COLLECTION:
      case TOKEN_IB_INSPECTABLE:
      case TOKEN_IB_DESIGNABLE:
      case TOKEN_IDENTIFIER:
        state = 320;
        _localctx.frameworkName = identifier();
        state = 321;
        match(TOKEN_SEMI);
        break;
      case TOKEN_LT:
        state = 323;
        match(TOKEN_LT);
        state = 325;
        errorHandler.sync(this);
        switch (interpreter.adaptivePredict(tokenStream, 2, context)) {
        case 1:
          state = 324;
          _localctx.frameworkName = identifier();
          break;
        }
        state = 328;
        errorHandler.sync(this);
        _la = tokenStream.LA(1);
        if (_la == TOKEN_DIV) {
          state = 327;
          match(TOKEN_DIV);
        }

        state = 330;
        _localctx.headerName = identifier();
        state = 331;
        match(TOKEN_DOT);
        state = 332;
        match(TOKEN_IDENTIFIER);
        state = 333;
        match(TOKEN_GT);
        break;
      case TOKEN_STRING_START:
        state = 335;
        stringLiteral();
        break;
      default:
        throw NoViableAltException(this);
      }
    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return _localctx;
  }

  ClassInterfaceContext classInterface() {
    dynamic _localctx = ClassInterfaceContext(context, state);
    enterRule(_localctx, 6, RULE_classInterface);
    int _la;
    try {
      enterOuterAlt(_localctx, 1);
      state = 339;
      errorHandler.sync(this);
      switch (interpreter.adaptivePredict(tokenStream, 5, context)) {
      case 1:
        state = 338;
        match(TOKEN_IB_DESIGNABLE);
        break;
      }
      state = 345;
      errorHandler.sync(this);
      _la = tokenStream.LA(1);
      while ((((_la) & ~0x3f) == 0 && ((BigInt.one << _la) & ((BigInt.one << TOKEN_BOOL) | (BigInt.one << TOKEN_Class) | (BigInt.one << TOKEN_BYCOPY) | (BigInt.one << TOKEN_BYREF) | (BigInt.one << TOKEN_ID) | (BigInt.one << TOKEN_IMP) | (BigInt.one << TOKEN_IN) | (BigInt.one << TOKEN_INOUT) | (BigInt.one << TOKEN_ONEWAY) | (BigInt.one << TOKEN_OUT) | (BigInt.one << TOKEN_PROTOCOL_) | (BigInt.one << TOKEN_SEL) | (BigInt.one << TOKEN_SELF) | (BigInt.one << TOKEN_SUPER))) != BigInt.zero) || ((((_la - 81)) & ~0x3f) == 0 && ((BigInt.one << (_la - 81)) & ((BigInt.one << (TOKEN_ATOMIC - 81)) | (BigInt.one << (TOKEN_NONATOMIC - 81)) | (BigInt.one << (TOKEN_RETAIN - 81)) | (BigInt.one << (TOKEN_ATTRIBUTE - 81)) | (BigInt.one << (TOKEN_AUTORELEASING_QUALIFIER - 81)) | (BigInt.one << (TOKEN_BLOCK - 81)) | (BigInt.one << (TOKEN_BRIDGE_RETAINED - 81)) | (BigInt.one << (TOKEN_BRIDGE_TRANSFER - 81)) | (BigInt.one << (TOKEN_COVARIANT - 81)) | (BigInt.one << (TOKEN_CONTRAVARIANT - 81)) | (BigInt.one << (TOKEN_DEPRECATED - 81)) | (BigInt.one << (TOKEN_KINDOF - 81)) | (BigInt.one << (TOKEN_UNUSED - 81)) | (BigInt.one << (TOKEN_NULL_UNSPECIFIED - 81)) | (BigInt.one << (TOKEN_NULLABLE - 81)) | (BigInt.one << (TOKEN_NONNULL - 81)) | (BigInt.one << (TOKEN_NULL_RESETTABLE - 81)) | (BigInt.one << (TOKEN_NS_INLINE - 81)) | (BigInt.one << (TOKEN_NS_ENUM - 81)) | (BigInt.one << (TOKEN_NS_OPTIONS - 81)) | (BigInt.one << (TOKEN_ASSIGN - 81)) | (BigInt.one << (TOKEN_COPY - 81)) | (BigInt.one << (TOKEN_GETTER - 81)) | (BigInt.one << (TOKEN_SETTER - 81)) | (BigInt.one << (TOKEN_STRONG - 81)) | (BigInt.one << (TOKEN_READONLY - 81)) | (BigInt.one << (TOKEN_READWRITE - 81)) | (BigInt.one << (TOKEN_WEAK - 81)) | (BigInt.one << (TOKEN_UNSAFE_UNRETAINED - 81)) | (BigInt.one << (TOKEN_IB_OUTLET - 81)) | (BigInt.one << (TOKEN_IB_OUTLET_COLLECTION - 81)) | (BigInt.one << (TOKEN_IB_INSPECTABLE - 81)) | (BigInt.one << (TOKEN_IB_DESIGNABLE - 81)) | (BigInt.one << (TOKEN_IDENTIFIER - 81)))) != BigInt.zero)) {
        state = 343;
        errorHandler.sync(this);
        switch (tokenStream.LA(1)) {
        case TOKEN_BOOL:
        case TOKEN_Class:
        case TOKEN_BYCOPY:
        case TOKEN_BYREF:
        case TOKEN_ID:
        case TOKEN_IMP:
        case TOKEN_IN:
        case TOKEN_INOUT:
        case TOKEN_ONEWAY:
        case TOKEN_OUT:
        case TOKEN_PROTOCOL_:
        case TOKEN_SEL:
        case TOKEN_SELF:
        case TOKEN_SUPER:
        case TOKEN_ATOMIC:
        case TOKEN_NONATOMIC:
        case TOKEN_RETAIN:
        case TOKEN_AUTORELEASING_QUALIFIER:
        case TOKEN_BLOCK:
        case TOKEN_BRIDGE_RETAINED:
        case TOKEN_BRIDGE_TRANSFER:
        case TOKEN_COVARIANT:
        case TOKEN_CONTRAVARIANT:
        case TOKEN_DEPRECATED:
        case TOKEN_KINDOF:
        case TOKEN_UNUSED:
        case TOKEN_NULL_UNSPECIFIED:
        case TOKEN_NULLABLE:
        case TOKEN_NONNULL:
        case TOKEN_NULL_RESETTABLE:
        case TOKEN_NS_INLINE:
        case TOKEN_NS_ENUM:
        case TOKEN_NS_OPTIONS:
        case TOKEN_ASSIGN:
        case TOKEN_COPY:
        case TOKEN_GETTER:
        case TOKEN_SETTER:
        case TOKEN_STRONG:
        case TOKEN_READONLY:
        case TOKEN_READWRITE:
        case TOKEN_WEAK:
        case TOKEN_UNSAFE_UNRETAINED:
        case TOKEN_IB_OUTLET:
        case TOKEN_IB_OUTLET_COLLECTION:
        case TOKEN_IB_INSPECTABLE:
        case TOKEN_IB_DESIGNABLE:
        case TOKEN_IDENTIFIER:
          state = 341;
          macro();
          break;
        case TOKEN_ATTRIBUTE:
          state = 342;
          attributeSpecifier();
          break;
        default:
          throw NoViableAltException(this);
        }
        state = 347;
        errorHandler.sync(this);
        _la = tokenStream.LA(1);
      }
      state = 348;
      match(TOKEN_INTERFACE);
      state = 349;
      _localctx.className = genericTypeSpecifier();
      state = 352;
      errorHandler.sync(this);
      _la = tokenStream.LA(1);
      if (_la == TOKEN_COLON) {
        state = 350;
        match(TOKEN_COLON);
        state = 351;
        _localctx.superclassName = identifier();
      }

      state = 358;
      errorHandler.sync(this);
      _la = tokenStream.LA(1);
      if (_la == TOKEN_LT) {
        state = 354;
        match(TOKEN_LT);
        state = 355;
        _localctx.protocols = protocolList();
        state = 356;
        match(TOKEN_GT);
      }

      state = 361;
      errorHandler.sync(this);
      _la = tokenStream.LA(1);
      if (_la == TOKEN_LBRACE) {
        state = 360;
        instanceVariables();
      }

      state = 364;
      errorHandler.sync(this);
      _la = tokenStream.LA(1);
      if ((((_la) & ~0x3f) == 0 && ((BigInt.one << _la) & ((BigInt.one << TOKEN_AUTO) | (BigInt.one << TOKEN_CHAR) | (BigInt.one << TOKEN_CONST) | (BigInt.one << TOKEN_DOUBLE) | (BigInt.one << TOKEN_ENUM) | (BigInt.one << TOKEN_EXTERN) | (BigInt.one << TOKEN_FLOAT) | (BigInt.one << TOKEN_INLINE) | (BigInt.one << TOKEN_INT) | (BigInt.one << TOKEN_LONG) | (BigInt.one << TOKEN_REGISTER) | (BigInt.one << TOKEN_RESTRICT) | (BigInt.one << TOKEN_SHORT) | (BigInt.one << TOKEN_SIGNED) | (BigInt.one << TOKEN_STATIC) | (BigInt.one << TOKEN_STRUCT) | (BigInt.one << TOKEN_TYPEDEF) | (BigInt.one << TOKEN_UNION) | (BigInt.one << TOKEN_UNSIGNED) | (BigInt.one << TOKEN_VOID) | (BigInt.one << TOKEN_VOLATILE) | (BigInt.one << TOKEN_BOOL) | (BigInt.one << TOKEN_Class) | (BigInt.one << TOKEN_BYCOPY) | (BigInt.one << TOKEN_BYREF) | (BigInt.one << TOKEN_ID) | (BigInt.one << TOKEN_IMP) | (BigInt.one << TOKEN_IN) | (BigInt.one << TOKEN_INOUT) | (BigInt.one << TOKEN_ONEWAY) | (BigInt.one << TOKEN_OUT) | (BigInt.one << TOKEN_PROTOCOL_) | (BigInt.one << TOKEN_SEL) | (BigInt.one << TOKEN_SELF) | (BigInt.one << TOKEN_SUPER))) != BigInt.zero) || ((((_la - 72)) & ~0x3f) == 0 && ((BigInt.one << (_la - 72)) & ((BigInt.one << (TOKEN_PROPERTY - 72)) | (BigInt.one << (TOKEN_ATOMIC - 72)) | (BigInt.one << (TOKEN_NONATOMIC - 72)) | (BigInt.one << (TOKEN_RETAIN - 72)) | (BigInt.one << (TOKEN_ATTRIBUTE - 72)) | (BigInt.one << (TOKEN_AUTORELEASING_QUALIFIER - 72)) | (BigInt.one << (TOKEN_BLOCK - 72)) | (BigInt.one << (TOKEN_BRIDGE - 72)) | (BigInt.one << (TOKEN_BRIDGE_RETAINED - 72)) | (BigInt.one << (TOKEN_BRIDGE_TRANSFER - 72)) | (BigInt.one << (TOKEN_COVARIANT - 72)) | (BigInt.one << (TOKEN_CONTRAVARIANT - 72)) | (BigInt.one << (TOKEN_DEPRECATED - 72)) | (BigInt.one << (TOKEN_KINDOF - 72)) | (BigInt.one << (TOKEN_STRONG_QUALIFIER - 72)) | (BigInt.one << (TOKEN_TYPEOF - 72)) | (BigInt.one << (TOKEN_UNSAFE_UNRETAINED_QUALIFIER - 72)) | (BigInt.one << (TOKEN_UNUSED - 72)) | (BigInt.one << (TOKEN_WEAK_QUALIFIER - 72)) | (BigInt.one << (TOKEN_NULL_UNSPECIFIED - 72)) | (BigInt.one << (TOKEN_NULLABLE - 72)) | (BigInt.one << (TOKEN_NONNULL - 72)) | (BigInt.one << (TOKEN_NULL_RESETTABLE - 72)) | (BigInt.one << (TOKEN_NS_INLINE - 72)) | (BigInt.one << (TOKEN_NS_ENUM - 72)) | (BigInt.one << (TOKEN_NS_OPTIONS - 72)) | (BigInt.one << (TOKEN_NS_CLOSED_ENUM - 72)) | (BigInt.one << (TOKEN_NS_ERROR_ENUM - 72)) | (BigInt.one << (TOKEN_ASSIGN - 72)) | (BigInt.one << (TOKEN_COPY - 72)) | (BigInt.one << (TOKEN_GETTER - 72)) | (BigInt.one << (TOKEN_SETTER - 72)) | (BigInt.one << (TOKEN_STRONG - 72)) | (BigInt.one << (TOKEN_READONLY - 72)) | (BigInt.one << (TOKEN_READWRITE - 72)) | (BigInt.one << (TOKEN_WEAK - 72)) | (BigInt.one << (TOKEN_UNSAFE_UNRETAINED - 72)) | (BigInt.one << (TOKEN_IB_OUTLET - 72)) | (BigInt.one << (TOKEN_IB_OUTLET_COLLECTION - 72)) | (BigInt.one << (TOKEN_IB_INSPECTABLE - 72)) | (BigInt.one << (TOKEN_IB_DESIGNABLE - 72)))) != BigInt.zero) || ((((_la - 136)) & ~0x3f) == 0 && ((BigInt.one << (_la - 136)) & ((BigInt.one << (TOKEN_IDENTIFIER - 136)) | (BigInt.one << (TOKEN_ADD - 136)) | (BigInt.one << (TOKEN_SUB - 136)))) != BigInt.zero)) {
        state = 363;
        interfaceDeclarationList();
      }

      state = 366;
      match(TOKEN_END);
    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return _localctx;
  }

  CategoryInterfaceContext categoryInterface() {
    dynamic _localctx = CategoryInterfaceContext(context, state);
    enterRule(_localctx, 8, RULE_categoryInterface);
    int _la;
    try {
      enterOuterAlt(_localctx, 1);
      state = 372;
      errorHandler.sync(this);
      _la = tokenStream.LA(1);
      while ((((_la) & ~0x3f) == 0 && ((BigInt.one << _la) & ((BigInt.one << TOKEN_BOOL) | (BigInt.one << TOKEN_Class) | (BigInt.one << TOKEN_BYCOPY) | (BigInt.one << TOKEN_BYREF) | (BigInt.one << TOKEN_ID) | (BigInt.one << TOKEN_IMP) | (BigInt.one << TOKEN_IN) | (BigInt.one << TOKEN_INOUT) | (BigInt.one << TOKEN_ONEWAY) | (BigInt.one << TOKEN_OUT) | (BigInt.one << TOKEN_PROTOCOL_) | (BigInt.one << TOKEN_SEL) | (BigInt.one << TOKEN_SELF) | (BigInt.one << TOKEN_SUPER))) != BigInt.zero) || ((((_la - 81)) & ~0x3f) == 0 && ((BigInt.one << (_la - 81)) & ((BigInt.one << (TOKEN_ATOMIC - 81)) | (BigInt.one << (TOKEN_NONATOMIC - 81)) | (BigInt.one << (TOKEN_RETAIN - 81)) | (BigInt.one << (TOKEN_ATTRIBUTE - 81)) | (BigInt.one << (TOKEN_AUTORELEASING_QUALIFIER - 81)) | (BigInt.one << (TOKEN_BLOCK - 81)) | (BigInt.one << (TOKEN_BRIDGE_RETAINED - 81)) | (BigInt.one << (TOKEN_BRIDGE_TRANSFER - 81)) | (BigInt.one << (TOKEN_COVARIANT - 81)) | (BigInt.one << (TOKEN_CONTRAVARIANT - 81)) | (BigInt.one << (TOKEN_DEPRECATED - 81)) | (BigInt.one << (TOKEN_KINDOF - 81)) | (BigInt.one << (TOKEN_UNUSED - 81)) | (BigInt.one << (TOKEN_NULL_UNSPECIFIED - 81)) | (BigInt.one << (TOKEN_NULLABLE - 81)) | (BigInt.one << (TOKEN_NONNULL - 81)) | (BigInt.one << (TOKEN_NULL_RESETTABLE - 81)) | (BigInt.one << (TOKEN_NS_INLINE - 81)) | (BigInt.one << (TOKEN_NS_ENUM - 81)) | (BigInt.one << (TOKEN_NS_OPTIONS - 81)) | (BigInt.one << (TOKEN_ASSIGN - 81)) | (BigInt.one << (TOKEN_COPY - 81)) | (BigInt.one << (TOKEN_GETTER - 81)) | (BigInt.one << (TOKEN_SETTER - 81)) | (BigInt.one << (TOKEN_STRONG - 81)) | (BigInt.one << (TOKEN_READONLY - 81)) | (BigInt.one << (TOKEN_READWRITE - 81)) | (BigInt.one << (TOKEN_WEAK - 81)) | (BigInt.one << (TOKEN_UNSAFE_UNRETAINED - 81)) | (BigInt.one << (TOKEN_IB_OUTLET - 81)) | (BigInt.one << (TOKEN_IB_OUTLET_COLLECTION - 81)) | (BigInt.one << (TOKEN_IB_INSPECTABLE - 81)) | (BigInt.one << (TOKEN_IB_DESIGNABLE - 81)) | (BigInt.one << (TOKEN_IDENTIFIER - 81)))) != BigInt.zero)) {
        state = 370;
        errorHandler.sync(this);
        switch (tokenStream.LA(1)) {
        case TOKEN_BOOL:
        case TOKEN_Class:
        case TOKEN_BYCOPY:
        case TOKEN_BYREF:
        case TOKEN_ID:
        case TOKEN_IMP:
        case TOKEN_IN:
        case TOKEN_INOUT:
        case TOKEN_ONEWAY:
        case TOKEN_OUT:
        case TOKEN_PROTOCOL_:
        case TOKEN_SEL:
        case TOKEN_SELF:
        case TOKEN_SUPER:
        case TOKEN_ATOMIC:
        case TOKEN_NONATOMIC:
        case TOKEN_RETAIN:
        case TOKEN_AUTORELEASING_QUALIFIER:
        case TOKEN_BLOCK:
        case TOKEN_BRIDGE_RETAINED:
        case TOKEN_BRIDGE_TRANSFER:
        case TOKEN_COVARIANT:
        case TOKEN_CONTRAVARIANT:
        case TOKEN_DEPRECATED:
        case TOKEN_KINDOF:
        case TOKEN_UNUSED:
        case TOKEN_NULL_UNSPECIFIED:
        case TOKEN_NULLABLE:
        case TOKEN_NONNULL:
        case TOKEN_NULL_RESETTABLE:
        case TOKEN_NS_INLINE:
        case TOKEN_NS_ENUM:
        case TOKEN_NS_OPTIONS:
        case TOKEN_ASSIGN:
        case TOKEN_COPY:
        case TOKEN_GETTER:
        case TOKEN_SETTER:
        case TOKEN_STRONG:
        case TOKEN_READONLY:
        case TOKEN_READWRITE:
        case TOKEN_WEAK:
        case TOKEN_UNSAFE_UNRETAINED:
        case TOKEN_IB_OUTLET:
        case TOKEN_IB_OUTLET_COLLECTION:
        case TOKEN_IB_INSPECTABLE:
        case TOKEN_IB_DESIGNABLE:
        case TOKEN_IDENTIFIER:
          state = 368;
          macro();
          break;
        case TOKEN_ATTRIBUTE:
          state = 369;
          attributeSpecifier();
          break;
        default:
          throw NoViableAltException(this);
        }
        state = 374;
        errorHandler.sync(this);
        _la = tokenStream.LA(1);
      }
      state = 375;
      match(TOKEN_INTERFACE);
      state = 376;
      _localctx.className = genericTypeSpecifier();
      state = 377;
      match(TOKEN_LP);
      state = 379;
      errorHandler.sync(this);
      _la = tokenStream.LA(1);
      if ((((_la) & ~0x3f) == 0 && ((BigInt.one << _la) & ((BigInt.one << TOKEN_BOOL) | (BigInt.one << TOKEN_Class) | (BigInt.one << TOKEN_BYCOPY) | (BigInt.one << TOKEN_BYREF) | (BigInt.one << TOKEN_ID) | (BigInt.one << TOKEN_IMP) | (BigInt.one << TOKEN_IN) | (BigInt.one << TOKEN_INOUT) | (BigInt.one << TOKEN_ONEWAY) | (BigInt.one << TOKEN_OUT) | (BigInt.one << TOKEN_PROTOCOL_) | (BigInt.one << TOKEN_SEL) | (BigInt.one << TOKEN_SELF) | (BigInt.one << TOKEN_SUPER))) != BigInt.zero) || ((((_la - 81)) & ~0x3f) == 0 && ((BigInt.one << (_la - 81)) & ((BigInt.one << (TOKEN_ATOMIC - 81)) | (BigInt.one << (TOKEN_NONATOMIC - 81)) | (BigInt.one << (TOKEN_RETAIN - 81)) | (BigInt.one << (TOKEN_AUTORELEASING_QUALIFIER - 81)) | (BigInt.one << (TOKEN_BLOCK - 81)) | (BigInt.one << (TOKEN_BRIDGE_RETAINED - 81)) | (BigInt.one << (TOKEN_BRIDGE_TRANSFER - 81)) | (BigInt.one << (TOKEN_COVARIANT - 81)) | (BigInt.one << (TOKEN_CONTRAVARIANT - 81)) | (BigInt.one << (TOKEN_DEPRECATED - 81)) | (BigInt.one << (TOKEN_KINDOF - 81)) | (BigInt.one << (TOKEN_UNUSED - 81)) | (BigInt.one << (TOKEN_NULL_UNSPECIFIED - 81)) | (BigInt.one << (TOKEN_NULLABLE - 81)) | (BigInt.one << (TOKEN_NONNULL - 81)) | (BigInt.one << (TOKEN_NULL_RESETTABLE - 81)) | (BigInt.one << (TOKEN_NS_INLINE - 81)) | (BigInt.one << (TOKEN_NS_ENUM - 81)) | (BigInt.one << (TOKEN_NS_OPTIONS - 81)) | (BigInt.one << (TOKEN_ASSIGN - 81)) | (BigInt.one << (TOKEN_COPY - 81)) | (BigInt.one << (TOKEN_GETTER - 81)) | (BigInt.one << (TOKEN_SETTER - 81)) | (BigInt.one << (TOKEN_STRONG - 81)) | (BigInt.one << (TOKEN_READONLY - 81)) | (BigInt.one << (TOKEN_READWRITE - 81)) | (BigInt.one << (TOKEN_WEAK - 81)) | (BigInt.one << (TOKEN_UNSAFE_UNRETAINED - 81)) | (BigInt.one << (TOKEN_IB_OUTLET - 81)) | (BigInt.one << (TOKEN_IB_OUTLET_COLLECTION - 81)) | (BigInt.one << (TOKEN_IB_INSPECTABLE - 81)) | (BigInt.one << (TOKEN_IB_DESIGNABLE - 81)) | (BigInt.one << (TOKEN_IDENTIFIER - 81)))) != BigInt.zero)) {
        state = 378;
        _localctx.categoryName = identifier();
      }

      state = 381;
      match(TOKEN_RP);
      state = 386;
      errorHandler.sync(this);
      _la = tokenStream.LA(1);
      if (_la == TOKEN_LT) {
        state = 382;
        match(TOKEN_LT);
        state = 383;
        _localctx.protocols = protocolList();
        state = 384;
        match(TOKEN_GT);
      }

      state = 389;
      errorHandler.sync(this);
      _la = tokenStream.LA(1);
      if (_la == TOKEN_LBRACE) {
        state = 388;
        instanceVariables();
      }

      state = 392;
      errorHandler.sync(this);
      _la = tokenStream.LA(1);
      if ((((_la) & ~0x3f) == 0 && ((BigInt.one << _la) & ((BigInt.one << TOKEN_AUTO) | (BigInt.one << TOKEN_CHAR) | (BigInt.one << TOKEN_CONST) | (BigInt.one << TOKEN_DOUBLE) | (BigInt.one << TOKEN_ENUM) | (BigInt.one << TOKEN_EXTERN) | (BigInt.one << TOKEN_FLOAT) | (BigInt.one << TOKEN_INLINE) | (BigInt.one << TOKEN_INT) | (BigInt.one << TOKEN_LONG) | (BigInt.one << TOKEN_REGISTER) | (BigInt.one << TOKEN_RESTRICT) | (BigInt.one << TOKEN_SHORT) | (BigInt.one << TOKEN_SIGNED) | (BigInt.one << TOKEN_STATIC) | (BigInt.one << TOKEN_STRUCT) | (BigInt.one << TOKEN_TYPEDEF) | (BigInt.one << TOKEN_UNION) | (BigInt.one << TOKEN_UNSIGNED) | (BigInt.one << TOKEN_VOID) | (BigInt.one << TOKEN_VOLATILE) | (BigInt.one << TOKEN_BOOL) | (BigInt.one << TOKEN_Class) | (BigInt.one << TOKEN_BYCOPY) | (BigInt.one << TOKEN_BYREF) | (BigInt.one << TOKEN_ID) | (BigInt.one << TOKEN_IMP) | (BigInt.one << TOKEN_IN) | (BigInt.one << TOKEN_INOUT) | (BigInt.one << TOKEN_ONEWAY) | (BigInt.one << TOKEN_OUT) | (BigInt.one << TOKEN_PROTOCOL_) | (BigInt.one << TOKEN_SEL) | (BigInt.one << TOKEN_SELF) | (BigInt.one << TOKEN_SUPER))) != BigInt.zero) || ((((_la - 72)) & ~0x3f) == 0 && ((BigInt.one << (_la - 72)) & ((BigInt.one << (TOKEN_PROPERTY - 72)) | (BigInt.one << (TOKEN_ATOMIC - 72)) | (BigInt.one << (TOKEN_NONATOMIC - 72)) | (BigInt.one << (TOKEN_RETAIN - 72)) | (BigInt.one << (TOKEN_ATTRIBUTE - 72)) | (BigInt.one << (TOKEN_AUTORELEASING_QUALIFIER - 72)) | (BigInt.one << (TOKEN_BLOCK - 72)) | (BigInt.one << (TOKEN_BRIDGE - 72)) | (BigInt.one << (TOKEN_BRIDGE_RETAINED - 72)) | (BigInt.one << (TOKEN_BRIDGE_TRANSFER - 72)) | (BigInt.one << (TOKEN_COVARIANT - 72)) | (BigInt.one << (TOKEN_CONTRAVARIANT - 72)) | (BigInt.one << (TOKEN_DEPRECATED - 72)) | (BigInt.one << (TOKEN_KINDOF - 72)) | (BigInt.one << (TOKEN_STRONG_QUALIFIER - 72)) | (BigInt.one << (TOKEN_TYPEOF - 72)) | (BigInt.one << (TOKEN_UNSAFE_UNRETAINED_QUALIFIER - 72)) | (BigInt.one << (TOKEN_UNUSED - 72)) | (BigInt.one << (TOKEN_WEAK_QUALIFIER - 72)) | (BigInt.one << (TOKEN_NULL_UNSPECIFIED - 72)) | (BigInt.one << (TOKEN_NULLABLE - 72)) | (BigInt.one << (TOKEN_NONNULL - 72)) | (BigInt.one << (TOKEN_NULL_RESETTABLE - 72)) | (BigInt.one << (TOKEN_NS_INLINE - 72)) | (BigInt.one << (TOKEN_NS_ENUM - 72)) | (BigInt.one << (TOKEN_NS_OPTIONS - 72)) | (BigInt.one << (TOKEN_NS_CLOSED_ENUM - 72)) | (BigInt.one << (TOKEN_NS_ERROR_ENUM - 72)) | (BigInt.one << (TOKEN_ASSIGN - 72)) | (BigInt.one << (TOKEN_COPY - 72)) | (BigInt.one << (TOKEN_GETTER - 72)) | (BigInt.one << (TOKEN_SETTER - 72)) | (BigInt.one << (TOKEN_STRONG - 72)) | (BigInt.one << (TOKEN_READONLY - 72)) | (BigInt.one << (TOKEN_READWRITE - 72)) | (BigInt.one << (TOKEN_WEAK - 72)) | (BigInt.one << (TOKEN_UNSAFE_UNRETAINED - 72)) | (BigInt.one << (TOKEN_IB_OUTLET - 72)) | (BigInt.one << (TOKEN_IB_OUTLET_COLLECTION - 72)) | (BigInt.one << (TOKEN_IB_INSPECTABLE - 72)) | (BigInt.one << (TOKEN_IB_DESIGNABLE - 72)))) != BigInt.zero) || ((((_la - 136)) & ~0x3f) == 0 && ((BigInt.one << (_la - 136)) & ((BigInt.one << (TOKEN_IDENTIFIER - 136)) | (BigInt.one << (TOKEN_ADD - 136)) | (BigInt.one << (TOKEN_SUB - 136)))) != BigInt.zero)) {
        state = 391;
        interfaceDeclarationList();
      }

      state = 394;
      match(TOKEN_END);
    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return _localctx;
  }

  ClassImplementationContext classImplementation() {
    dynamic _localctx = ClassImplementationContext(context, state);
    enterRule(_localctx, 10, RULE_classImplementation);
    int _la;
    try {
      enterOuterAlt(_localctx, 1);
      state = 396;
      match(TOKEN_IMPLEMENTATION);
      state = 397;
      _localctx.className = genericTypeSpecifier();
      state = 400;
      errorHandler.sync(this);
      _la = tokenStream.LA(1);
      if (_la == TOKEN_COLON) {
        state = 398;
        match(TOKEN_COLON);
        state = 399;
        _localctx.superclassName = identifier();
      }

      state = 403;
      errorHandler.sync(this);
      _la = tokenStream.LA(1);
      if (_la == TOKEN_LBRACE) {
        state = 402;
        instanceVariables();
      }

      state = 406;
      errorHandler.sync(this);
      _la = tokenStream.LA(1);
      if ((((_la) & ~0x3f) == 0 && ((BigInt.one << _la) & ((BigInt.one << TOKEN_AUTO) | (BigInt.one << TOKEN_CHAR) | (BigInt.one << TOKEN_CONST) | (BigInt.one << TOKEN_DOUBLE) | (BigInt.one << TOKEN_ENUM) | (BigInt.one << TOKEN_EXTERN) | (BigInt.one << TOKEN_FLOAT) | (BigInt.one << TOKEN_INLINE) | (BigInt.one << TOKEN_INT) | (BigInt.one << TOKEN_LONG) | (BigInt.one << TOKEN_REGISTER) | (BigInt.one << TOKEN_RESTRICT) | (BigInt.one << TOKEN_SHORT) | (BigInt.one << TOKEN_SIGNED) | (BigInt.one << TOKEN_STATIC) | (BigInt.one << TOKEN_STRUCT) | (BigInt.one << TOKEN_TYPEDEF) | (BigInt.one << TOKEN_UNION) | (BigInt.one << TOKEN_UNSIGNED) | (BigInt.one << TOKEN_VOID) | (BigInt.one << TOKEN_VOLATILE) | (BigInt.one << TOKEN_BOOL) | (BigInt.one << TOKEN_Class) | (BigInt.one << TOKEN_BYCOPY) | (BigInt.one << TOKEN_BYREF) | (BigInt.one << TOKEN_ID) | (BigInt.one << TOKEN_IMP) | (BigInt.one << TOKEN_IN) | (BigInt.one << TOKEN_INOUT) | (BigInt.one << TOKEN_ONEWAY) | (BigInt.one << TOKEN_OUT) | (BigInt.one << TOKEN_PROTOCOL_) | (BigInt.one << TOKEN_SEL) | (BigInt.one << TOKEN_SELF) | (BigInt.one << TOKEN_SUPER) | (BigInt.one << TOKEN_DYNAMIC))) != BigInt.zero) || ((((_la - 78)) & ~0x3f) == 0 && ((BigInt.one << (_la - 78)) & ((BigInt.one << (TOKEN_SYNTHESIZE - 78)) | (BigInt.one << (TOKEN_ATOMIC - 78)) | (BigInt.one << (TOKEN_NONATOMIC - 78)) | (BigInt.one << (TOKEN_RETAIN - 78)) | (BigInt.one << (TOKEN_ATTRIBUTE - 78)) | (BigInt.one << (TOKEN_AUTORELEASING_QUALIFIER - 78)) | (BigInt.one << (TOKEN_BLOCK - 78)) | (BigInt.one << (TOKEN_BRIDGE - 78)) | (BigInt.one << (TOKEN_BRIDGE_RETAINED - 78)) | (BigInt.one << (TOKEN_BRIDGE_TRANSFER - 78)) | (BigInt.one << (TOKEN_COVARIANT - 78)) | (BigInt.one << (TOKEN_CONTRAVARIANT - 78)) | (BigInt.one << (TOKEN_DEPRECATED - 78)) | (BigInt.one << (TOKEN_KINDOF - 78)) | (BigInt.one << (TOKEN_STRONG_QUALIFIER - 78)) | (BigInt.one << (TOKEN_TYPEOF - 78)) | (BigInt.one << (TOKEN_UNSAFE_UNRETAINED_QUALIFIER - 78)) | (BigInt.one << (TOKEN_UNUSED - 78)) | (BigInt.one << (TOKEN_WEAK_QUALIFIER - 78)) | (BigInt.one << (TOKEN_NULL_UNSPECIFIED - 78)) | (BigInt.one << (TOKEN_NULLABLE - 78)) | (BigInt.one << (TOKEN_NONNULL - 78)) | (BigInt.one << (TOKEN_NULL_RESETTABLE - 78)) | (BigInt.one << (TOKEN_NS_INLINE - 78)) | (BigInt.one << (TOKEN_NS_ENUM - 78)) | (BigInt.one << (TOKEN_NS_OPTIONS - 78)) | (BigInt.one << (TOKEN_NS_CLOSED_ENUM - 78)) | (BigInt.one << (TOKEN_NS_ERROR_ENUM - 78)) | (BigInt.one << (TOKEN_ASSIGN - 78)) | (BigInt.one << (TOKEN_COPY - 78)) | (BigInt.one << (TOKEN_GETTER - 78)) | (BigInt.one << (TOKEN_SETTER - 78)) | (BigInt.one << (TOKEN_STRONG - 78)) | (BigInt.one << (TOKEN_READONLY - 78)) | (BigInt.one << (TOKEN_READWRITE - 78)) | (BigInt.one << (TOKEN_WEAK - 78)) | (BigInt.one << (TOKEN_UNSAFE_UNRETAINED - 78)) | (BigInt.one << (TOKEN_IB_OUTLET - 78)) | (BigInt.one << (TOKEN_IB_OUTLET_COLLECTION - 78)) | (BigInt.one << (TOKEN_IB_INSPECTABLE - 78)) | (BigInt.one << (TOKEN_IB_DESIGNABLE - 78)) | (BigInt.one << (TOKEN_IDENTIFIER - 78)))) != BigInt.zero) || _la == TOKEN_ADD || _la == TOKEN_SUB) {
        state = 405;
        implementationDefinitionList();
      }

      state = 408;
      match(TOKEN_END);
    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return _localctx;
  }

  CategoryImplementationContext categoryImplementation() {
    dynamic _localctx = CategoryImplementationContext(context, state);
    enterRule(_localctx, 12, RULE_categoryImplementation);
    int _la;
    try {
      enterOuterAlt(_localctx, 1);
      state = 410;
      match(TOKEN_IMPLEMENTATION);
      state = 411;
      _localctx.className = genericTypeSpecifier();
      state = 412;
      match(TOKEN_LP);
      state = 413;
      _localctx.categoryName = identifier();
      state = 414;
      match(TOKEN_RP);
      state = 416;
      errorHandler.sync(this);
      _la = tokenStream.LA(1);
      if ((((_la) & ~0x3f) == 0 && ((BigInt.one << _la) & ((BigInt.one << TOKEN_AUTO) | (BigInt.one << TOKEN_CHAR) | (BigInt.one << TOKEN_CONST) | (BigInt.one << TOKEN_DOUBLE) | (BigInt.one << TOKEN_ENUM) | (BigInt.one << TOKEN_EXTERN) | (BigInt.one << TOKEN_FLOAT) | (BigInt.one << TOKEN_INLINE) | (BigInt.one << TOKEN_INT) | (BigInt.one << TOKEN_LONG) | (BigInt.one << TOKEN_REGISTER) | (BigInt.one << TOKEN_RESTRICT) | (BigInt.one << TOKEN_SHORT) | (BigInt.one << TOKEN_SIGNED) | (BigInt.one << TOKEN_STATIC) | (BigInt.one << TOKEN_STRUCT) | (BigInt.one << TOKEN_TYPEDEF) | (BigInt.one << TOKEN_UNION) | (BigInt.one << TOKEN_UNSIGNED) | (BigInt.one << TOKEN_VOID) | (BigInt.one << TOKEN_VOLATILE) | (BigInt.one << TOKEN_BOOL) | (BigInt.one << TOKEN_Class) | (BigInt.one << TOKEN_BYCOPY) | (BigInt.one << TOKEN_BYREF) | (BigInt.one << TOKEN_ID) | (BigInt.one << TOKEN_IMP) | (BigInt.one << TOKEN_IN) | (BigInt.one << TOKEN_INOUT) | (BigInt.one << TOKEN_ONEWAY) | (BigInt.one << TOKEN_OUT) | (BigInt.one << TOKEN_PROTOCOL_) | (BigInt.one << TOKEN_SEL) | (BigInt.one << TOKEN_SELF) | (BigInt.one << TOKEN_SUPER) | (BigInt.one << TOKEN_DYNAMIC))) != BigInt.zero) || ((((_la - 78)) & ~0x3f) == 0 && ((BigInt.one << (_la - 78)) & ((BigInt.one << (TOKEN_SYNTHESIZE - 78)) | (BigInt.one << (TOKEN_ATOMIC - 78)) | (BigInt.one << (TOKEN_NONATOMIC - 78)) | (BigInt.one << (TOKEN_RETAIN - 78)) | (BigInt.one << (TOKEN_ATTRIBUTE - 78)) | (BigInt.one << (TOKEN_AUTORELEASING_QUALIFIER - 78)) | (BigInt.one << (TOKEN_BLOCK - 78)) | (BigInt.one << (TOKEN_BRIDGE - 78)) | (BigInt.one << (TOKEN_BRIDGE_RETAINED - 78)) | (BigInt.one << (TOKEN_BRIDGE_TRANSFER - 78)) | (BigInt.one << (TOKEN_COVARIANT - 78)) | (BigInt.one << (TOKEN_CONTRAVARIANT - 78)) | (BigInt.one << (TOKEN_DEPRECATED - 78)) | (BigInt.one << (TOKEN_KINDOF - 78)) | (BigInt.one << (TOKEN_STRONG_QUALIFIER - 78)) | (BigInt.one << (TOKEN_TYPEOF - 78)) | (BigInt.one << (TOKEN_UNSAFE_UNRETAINED_QUALIFIER - 78)) | (BigInt.one << (TOKEN_UNUSED - 78)) | (BigInt.one << (TOKEN_WEAK_QUALIFIER - 78)) | (BigInt.one << (TOKEN_NULL_UNSPECIFIED - 78)) | (BigInt.one << (TOKEN_NULLABLE - 78)) | (BigInt.one << (TOKEN_NONNULL - 78)) | (BigInt.one << (TOKEN_NULL_RESETTABLE - 78)) | (BigInt.one << (TOKEN_NS_INLINE - 78)) | (BigInt.one << (TOKEN_NS_ENUM - 78)) | (BigInt.one << (TOKEN_NS_OPTIONS - 78)) | (BigInt.one << (TOKEN_NS_CLOSED_ENUM - 78)) | (BigInt.one << (TOKEN_NS_ERROR_ENUM - 78)) | (BigInt.one << (TOKEN_ASSIGN - 78)) | (BigInt.one << (TOKEN_COPY - 78)) | (BigInt.one << (TOKEN_GETTER - 78)) | (BigInt.one << (TOKEN_SETTER - 78)) | (BigInt.one << (TOKEN_STRONG - 78)) | (BigInt.one << (TOKEN_READONLY - 78)) | (BigInt.one << (TOKEN_READWRITE - 78)) | (BigInt.one << (TOKEN_WEAK - 78)) | (BigInt.one << (TOKEN_UNSAFE_UNRETAINED - 78)) | (BigInt.one << (TOKEN_IB_OUTLET - 78)) | (BigInt.one << (TOKEN_IB_OUTLET_COLLECTION - 78)) | (BigInt.one << (TOKEN_IB_INSPECTABLE - 78)) | (BigInt.one << (TOKEN_IB_DESIGNABLE - 78)) | (BigInt.one << (TOKEN_IDENTIFIER - 78)))) != BigInt.zero) || _la == TOKEN_ADD || _la == TOKEN_SUB) {
        state = 415;
        implementationDefinitionList();
      }

      state = 418;
      match(TOKEN_END);
    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return _localctx;
  }

  GenericTypeSpecifierContext genericTypeSpecifier() {
    dynamic _localctx = GenericTypeSpecifierContext(context, state);
    enterRule(_localctx, 14, RULE_genericTypeSpecifier);
    try {
      enterOuterAlt(_localctx, 1);
      state = 420;
      identifier();
      state = 426;
      errorHandler.sync(this);
      switch (interpreter.adaptivePredict(tokenStream, 22, context)) {
      case 1:
        state = 421;
        match(TOKEN_LT);
        state = 422;
        protocolList();
        state = 423;
        match(TOKEN_GT);
        break;
      case 2:
        state = 425;
        genericsSpecifier();
        break;
      }
    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return _localctx;
  }

  ProtocolDeclarationContext protocolDeclaration() {
    dynamic _localctx = ProtocolDeclarationContext(context, state);
    enterRule(_localctx, 16, RULE_protocolDeclaration);
    int _la;
    try {
      enterOuterAlt(_localctx, 1);
      state = 432;
      errorHandler.sync(this);
      _la = tokenStream.LA(1);
      while ((((_la) & ~0x3f) == 0 && ((BigInt.one << _la) & ((BigInt.one << TOKEN_BOOL) | (BigInt.one << TOKEN_Class) | (BigInt.one << TOKEN_BYCOPY) | (BigInt.one << TOKEN_BYREF) | (BigInt.one << TOKEN_ID) | (BigInt.one << TOKEN_IMP) | (BigInt.one << TOKEN_IN) | (BigInt.one << TOKEN_INOUT) | (BigInt.one << TOKEN_ONEWAY) | (BigInt.one << TOKEN_OUT) | (BigInt.one << TOKEN_PROTOCOL_) | (BigInt.one << TOKEN_SEL) | (BigInt.one << TOKEN_SELF) | (BigInt.one << TOKEN_SUPER))) != BigInt.zero) || ((((_la - 81)) & ~0x3f) == 0 && ((BigInt.one << (_la - 81)) & ((BigInt.one << (TOKEN_ATOMIC - 81)) | (BigInt.one << (TOKEN_NONATOMIC - 81)) | (BigInt.one << (TOKEN_RETAIN - 81)) | (BigInt.one << (TOKEN_ATTRIBUTE - 81)) | (BigInt.one << (TOKEN_AUTORELEASING_QUALIFIER - 81)) | (BigInt.one << (TOKEN_BLOCK - 81)) | (BigInt.one << (TOKEN_BRIDGE_RETAINED - 81)) | (BigInt.one << (TOKEN_BRIDGE_TRANSFER - 81)) | (BigInt.one << (TOKEN_COVARIANT - 81)) | (BigInt.one << (TOKEN_CONTRAVARIANT - 81)) | (BigInt.one << (TOKEN_DEPRECATED - 81)) | (BigInt.one << (TOKEN_KINDOF - 81)) | (BigInt.one << (TOKEN_UNUSED - 81)) | (BigInt.one << (TOKEN_NULL_UNSPECIFIED - 81)) | (BigInt.one << (TOKEN_NULLABLE - 81)) | (BigInt.one << (TOKEN_NONNULL - 81)) | (BigInt.one << (TOKEN_NULL_RESETTABLE - 81)) | (BigInt.one << (TOKEN_NS_INLINE - 81)) | (BigInt.one << (TOKEN_NS_ENUM - 81)) | (BigInt.one << (TOKEN_NS_OPTIONS - 81)) | (BigInt.one << (TOKEN_ASSIGN - 81)) | (BigInt.one << (TOKEN_COPY - 81)) | (BigInt.one << (TOKEN_GETTER - 81)) | (BigInt.one << (TOKEN_SETTER - 81)) | (BigInt.one << (TOKEN_STRONG - 81)) | (BigInt.one << (TOKEN_READONLY - 81)) | (BigInt.one << (TOKEN_READWRITE - 81)) | (BigInt.one << (TOKEN_WEAK - 81)) | (BigInt.one << (TOKEN_UNSAFE_UNRETAINED - 81)) | (BigInt.one << (TOKEN_IB_OUTLET - 81)) | (BigInt.one << (TOKEN_IB_OUTLET_COLLECTION - 81)) | (BigInt.one << (TOKEN_IB_INSPECTABLE - 81)) | (BigInt.one << (TOKEN_IB_DESIGNABLE - 81)) | (BigInt.one << (TOKEN_IDENTIFIER - 81)))) != BigInt.zero)) {
        state = 430;
        errorHandler.sync(this);
        switch (tokenStream.LA(1)) {
        case TOKEN_BOOL:
        case TOKEN_Class:
        case TOKEN_BYCOPY:
        case TOKEN_BYREF:
        case TOKEN_ID:
        case TOKEN_IMP:
        case TOKEN_IN:
        case TOKEN_INOUT:
        case TOKEN_ONEWAY:
        case TOKEN_OUT:
        case TOKEN_PROTOCOL_:
        case TOKEN_SEL:
        case TOKEN_SELF:
        case TOKEN_SUPER:
        case TOKEN_ATOMIC:
        case TOKEN_NONATOMIC:
        case TOKEN_RETAIN:
        case TOKEN_AUTORELEASING_QUALIFIER:
        case TOKEN_BLOCK:
        case TOKEN_BRIDGE_RETAINED:
        case TOKEN_BRIDGE_TRANSFER:
        case TOKEN_COVARIANT:
        case TOKEN_CONTRAVARIANT:
        case TOKEN_DEPRECATED:
        case TOKEN_KINDOF:
        case TOKEN_UNUSED:
        case TOKEN_NULL_UNSPECIFIED:
        case TOKEN_NULLABLE:
        case TOKEN_NONNULL:
        case TOKEN_NULL_RESETTABLE:
        case TOKEN_NS_INLINE:
        case TOKEN_NS_ENUM:
        case TOKEN_NS_OPTIONS:
        case TOKEN_ASSIGN:
        case TOKEN_COPY:
        case TOKEN_GETTER:
        case TOKEN_SETTER:
        case TOKEN_STRONG:
        case TOKEN_READONLY:
        case TOKEN_READWRITE:
        case TOKEN_WEAK:
        case TOKEN_UNSAFE_UNRETAINED:
        case TOKEN_IB_OUTLET:
        case TOKEN_IB_OUTLET_COLLECTION:
        case TOKEN_IB_INSPECTABLE:
        case TOKEN_IB_DESIGNABLE:
        case TOKEN_IDENTIFIER:
          state = 428;
          macro();
          break;
        case TOKEN_ATTRIBUTE:
          state = 429;
          attributeSpecifier();
          break;
        default:
          throw NoViableAltException(this);
        }
        state = 434;
        errorHandler.sync(this);
        _la = tokenStream.LA(1);
      }
      state = 435;
      match(TOKEN_PROTOCOL);
      state = 436;
      _localctx.name = protocolName();
      state = 441;
      errorHandler.sync(this);
      _la = tokenStream.LA(1);
      if (_la == TOKEN_LT) {
        state = 437;
        match(TOKEN_LT);
        state = 438;
        _localctx.protocols = protocolList();
        state = 439;
        match(TOKEN_GT);
      }

      state = 446;
      errorHandler.sync(this);
      _la = tokenStream.LA(1);
      while ((((_la) & ~0x3f) == 0 && ((BigInt.one << _la) & ((BigInt.one << TOKEN_AUTO) | (BigInt.one << TOKEN_CHAR) | (BigInt.one << TOKEN_CONST) | (BigInt.one << TOKEN_DOUBLE) | (BigInt.one << TOKEN_ENUM) | (BigInt.one << TOKEN_EXTERN) | (BigInt.one << TOKEN_FLOAT) | (BigInt.one << TOKEN_INLINE) | (BigInt.one << TOKEN_INT) | (BigInt.one << TOKEN_LONG) | (BigInt.one << TOKEN_REGISTER) | (BigInt.one << TOKEN_RESTRICT) | (BigInt.one << TOKEN_SHORT) | (BigInt.one << TOKEN_SIGNED) | (BigInt.one << TOKEN_STATIC) | (BigInt.one << TOKEN_STRUCT) | (BigInt.one << TOKEN_TYPEDEF) | (BigInt.one << TOKEN_UNION) | (BigInt.one << TOKEN_UNSIGNED) | (BigInt.one << TOKEN_VOID) | (BigInt.one << TOKEN_VOLATILE) | (BigInt.one << TOKEN_BOOL) | (BigInt.one << TOKEN_Class) | (BigInt.one << TOKEN_BYCOPY) | (BigInt.one << TOKEN_BYREF) | (BigInt.one << TOKEN_ID) | (BigInt.one << TOKEN_IMP) | (BigInt.one << TOKEN_IN) | (BigInt.one << TOKEN_INOUT) | (BigInt.one << TOKEN_ONEWAY) | (BigInt.one << TOKEN_OUT) | (BigInt.one << TOKEN_PROTOCOL_) | (BigInt.one << TOKEN_SEL) | (BigInt.one << TOKEN_SELF) | (BigInt.one << TOKEN_SUPER))) != BigInt.zero) || ((((_la - 70)) & ~0x3f) == 0 && ((BigInt.one << (_la - 70)) & ((BigInt.one << (TOKEN_OPTIONAL - 70)) | (BigInt.one << (TOKEN_PROPERTY - 70)) | (BigInt.one << (TOKEN_REQUIRED - 70)) | (BigInt.one << (TOKEN_ATOMIC - 70)) | (BigInt.one << (TOKEN_NONATOMIC - 70)) | (BigInt.one << (TOKEN_RETAIN - 70)) | (BigInt.one << (TOKEN_ATTRIBUTE - 70)) | (BigInt.one << (TOKEN_AUTORELEASING_QUALIFIER - 70)) | (BigInt.one << (TOKEN_BLOCK - 70)) | (BigInt.one << (TOKEN_BRIDGE - 70)) | (BigInt.one << (TOKEN_BRIDGE_RETAINED - 70)) | (BigInt.one << (TOKEN_BRIDGE_TRANSFER - 70)) | (BigInt.one << (TOKEN_COVARIANT - 70)) | (BigInt.one << (TOKEN_CONTRAVARIANT - 70)) | (BigInt.one << (TOKEN_DEPRECATED - 70)) | (BigInt.one << (TOKEN_KINDOF - 70)) | (BigInt.one << (TOKEN_STRONG_QUALIFIER - 70)) | (BigInt.one << (TOKEN_TYPEOF - 70)) | (BigInt.one << (TOKEN_UNSAFE_UNRETAINED_QUALIFIER - 70)) | (BigInt.one << (TOKEN_UNUSED - 70)) | (BigInt.one << (TOKEN_WEAK_QUALIFIER - 70)) | (BigInt.one << (TOKEN_NULL_UNSPECIFIED - 70)) | (BigInt.one << (TOKEN_NULLABLE - 70)) | (BigInt.one << (TOKEN_NONNULL - 70)) | (BigInt.one << (TOKEN_NULL_RESETTABLE - 70)) | (BigInt.one << (TOKEN_NS_INLINE - 70)) | (BigInt.one << (TOKEN_NS_ENUM - 70)) | (BigInt.one << (TOKEN_NS_OPTIONS - 70)) | (BigInt.one << (TOKEN_NS_CLOSED_ENUM - 70)) | (BigInt.one << (TOKEN_NS_ERROR_ENUM - 70)) | (BigInt.one << (TOKEN_ASSIGN - 70)) | (BigInt.one << (TOKEN_COPY - 70)) | (BigInt.one << (TOKEN_GETTER - 70)) | (BigInt.one << (TOKEN_SETTER - 70)) | (BigInt.one << (TOKEN_STRONG - 70)) | (BigInt.one << (TOKEN_READONLY - 70)) | (BigInt.one << (TOKEN_READWRITE - 70)) | (BigInt.one << (TOKEN_WEAK - 70)) | (BigInt.one << (TOKEN_UNSAFE_UNRETAINED - 70)) | (BigInt.one << (TOKEN_IB_OUTLET - 70)) | (BigInt.one << (TOKEN_IB_OUTLET_COLLECTION - 70)) | (BigInt.one << (TOKEN_IB_INSPECTABLE - 70)) | (BigInt.one << (TOKEN_IB_DESIGNABLE - 70)))) != BigInt.zero) || ((((_la - 136)) & ~0x3f) == 0 && ((BigInt.one << (_la - 136)) & ((BigInt.one << (TOKEN_IDENTIFIER - 136)) | (BigInt.one << (TOKEN_ADD - 136)) | (BigInt.one << (TOKEN_SUB - 136)))) != BigInt.zero)) {
        state = 443;
        protocolDeclarationSection();
        state = 448;
        errorHandler.sync(this);
        _la = tokenStream.LA(1);
      }
      state = 449;
      match(TOKEN_END);
    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return _localctx;
  }

  ProtocolDeclarationSectionContext protocolDeclarationSection() {
    dynamic _localctx = ProtocolDeclarationSectionContext(context, state);
    enterRule(_localctx, 18, RULE_protocolDeclarationSection);
    int _la;
    try {
      int _alt;
      state = 463;
      errorHandler.sync(this);
      switch (tokenStream.LA(1)) {
      case TOKEN_OPTIONAL:
      case TOKEN_REQUIRED:
        enterOuterAlt(_localctx, 1);
        state = 451;
        _localctx.modifier = tokenStream.LT(1);
        _la = tokenStream.LA(1);
        if (!(_la == TOKEN_OPTIONAL || _la == TOKEN_REQUIRED)) {
          _localctx.modifier = errorHandler.recoverInline(this);
        } else {
          if ( tokenStream.LA(1)==IntStream.EOF ) matchedEOF = true;
          errorHandler.reportMatch(this);
          consume();
        }
        state = 455;
        errorHandler.sync(this);
        _alt = interpreter.adaptivePredict(tokenStream, 27, context);
        while (_alt != 2 && _alt != ATN.INVALID_ALT_NUMBER) {
          if (_alt == 1) {
            state = 452;
            interfaceDeclarationList(); 
          }
          state = 457;
          errorHandler.sync(this);
          _alt = interpreter.adaptivePredict(tokenStream, 27, context);
        }
        break;
      case TOKEN_AUTO:
      case TOKEN_CHAR:
      case TOKEN_CONST:
      case TOKEN_DOUBLE:
      case TOKEN_ENUM:
      case TOKEN_EXTERN:
      case TOKEN_FLOAT:
      case TOKEN_INLINE:
      case TOKEN_INT:
      case TOKEN_LONG:
      case TOKEN_REGISTER:
      case TOKEN_RESTRICT:
      case TOKEN_SHORT:
      case TOKEN_SIGNED:
      case TOKEN_STATIC:
      case TOKEN_STRUCT:
      case TOKEN_TYPEDEF:
      case TOKEN_UNION:
      case TOKEN_UNSIGNED:
      case TOKEN_VOID:
      case TOKEN_VOLATILE:
      case TOKEN_BOOL:
      case TOKEN_Class:
      case TOKEN_BYCOPY:
      case TOKEN_BYREF:
      case TOKEN_ID:
      case TOKEN_IMP:
      case TOKEN_IN:
      case TOKEN_INOUT:
      case TOKEN_ONEWAY:
      case TOKEN_OUT:
      case TOKEN_PROTOCOL_:
      case TOKEN_SEL:
      case TOKEN_SELF:
      case TOKEN_SUPER:
      case TOKEN_PROPERTY:
      case TOKEN_ATOMIC:
      case TOKEN_NONATOMIC:
      case TOKEN_RETAIN:
      case TOKEN_ATTRIBUTE:
      case TOKEN_AUTORELEASING_QUALIFIER:
      case TOKEN_BLOCK:
      case TOKEN_BRIDGE:
      case TOKEN_BRIDGE_RETAINED:
      case TOKEN_BRIDGE_TRANSFER:
      case TOKEN_COVARIANT:
      case TOKEN_CONTRAVARIANT:
      case TOKEN_DEPRECATED:
      case TOKEN_KINDOF:
      case TOKEN_STRONG_QUALIFIER:
      case TOKEN_TYPEOF:
      case TOKEN_UNSAFE_UNRETAINED_QUALIFIER:
      case TOKEN_UNUSED:
      case TOKEN_WEAK_QUALIFIER:
      case TOKEN_NULL_UNSPECIFIED:
      case TOKEN_NULLABLE:
      case TOKEN_NONNULL:
      case TOKEN_NULL_RESETTABLE:
      case TOKEN_NS_INLINE:
      case TOKEN_NS_ENUM:
      case TOKEN_NS_OPTIONS:
      case TOKEN_NS_CLOSED_ENUM:
      case TOKEN_NS_ERROR_ENUM:
      case TOKEN_ASSIGN:
      case TOKEN_COPY:
      case TOKEN_GETTER:
      case TOKEN_SETTER:
      case TOKEN_STRONG:
      case TOKEN_READONLY:
      case TOKEN_READWRITE:
      case TOKEN_WEAK:
      case TOKEN_UNSAFE_UNRETAINED:
      case TOKEN_IB_OUTLET:
      case TOKEN_IB_OUTLET_COLLECTION:
      case TOKEN_IB_INSPECTABLE:
      case TOKEN_IB_DESIGNABLE:
      case TOKEN_IDENTIFIER:
      case TOKEN_ADD:
      case TOKEN_SUB:
        enterOuterAlt(_localctx, 2);
        state = 459; 
        errorHandler.sync(this);
        _alt = 1;
        do {
          switch (_alt) {
          case 1:
            state = 458;
            interfaceDeclarationList();
            break;
          default:
            throw NoViableAltException(this);
          }
          state = 461; 
          errorHandler.sync(this);
          _alt = interpreter.adaptivePredict(tokenStream, 28, context);
        } while (_alt != 2 && _alt != ATN.INVALID_ALT_NUMBER);
        break;
      default:
        throw NoViableAltException(this);
      }
    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return _localctx;
  }

  ProtocolDeclarationListContext protocolDeclarationList() {
    dynamic _localctx = ProtocolDeclarationListContext(context, state);
    enterRule(_localctx, 20, RULE_protocolDeclarationList);
    try {
      enterOuterAlt(_localctx, 1);
      state = 465;
      match(TOKEN_PROTOCOL);
      state = 466;
      protocolList();
      state = 467;
      match(TOKEN_SEMI);
    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return _localctx;
  }

  ClassDeclarationContext classDeclaration() {
    dynamic _localctx = ClassDeclarationContext(context, state);
    enterRule(_localctx, 22, RULE_classDeclaration);
    int _la;
    try {
      enterOuterAlt(_localctx, 1);
      state = 469;
      identifier();
      state = 474;
      errorHandler.sync(this);
      _la = tokenStream.LA(1);
      if (_la == TOKEN_LT) {
        state = 470;
        match(TOKEN_LT);
        state = 471;
        protocolList();
        state = 472;
        match(TOKEN_GT);
      }

    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return _localctx;
  }

  ClassDeclarationListContext classDeclarationList() {
    dynamic _localctx = ClassDeclarationListContext(context, state);
    enterRule(_localctx, 24, RULE_classDeclarationList);
    int _la;
    try {
      enterOuterAlt(_localctx, 1);
      state = 476;
      match(TOKEN_CLASS);
      state = 477;
      classDeclaration();
      state = 482;
      errorHandler.sync(this);
      _la = tokenStream.LA(1);
      while (_la == TOKEN_COMMA) {
        state = 478;
        match(TOKEN_COMMA);
        state = 479;
        classDeclaration();
        state = 484;
        errorHandler.sync(this);
        _la = tokenStream.LA(1);
      }
      state = 485;
      match(TOKEN_SEMI);
    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return _localctx;
  }

  ProtocolListContext protocolList() {
    dynamic _localctx = ProtocolListContext(context, state);
    enterRule(_localctx, 26, RULE_protocolList);
    int _la;
    try {
      enterOuterAlt(_localctx, 1);
      state = 487;
      _localctx._protocolName = protocolName();
      _localctx.list.add(_localctx._protocolName);
      state = 492;
      errorHandler.sync(this);
      _la = tokenStream.LA(1);
      while (_la == TOKEN_COMMA) {
        state = 488;
        match(TOKEN_COMMA);
        state = 489;
        _localctx._protocolName = protocolName();
        _localctx.list.add(_localctx._protocolName);
        state = 494;
        errorHandler.sync(this);
        _la = tokenStream.LA(1);
      }
    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return _localctx;
  }

  PropertyDeclarationContext propertyDeclaration() {
    dynamic _localctx = PropertyDeclarationContext(context, state);
    enterRule(_localctx, 28, RULE_propertyDeclaration);
    try {
      enterOuterAlt(_localctx, 1);
      state = 495;
      match(TOKEN_PROPERTY);
      state = 500;
      errorHandler.sync(this);
      switch (interpreter.adaptivePredict(tokenStream, 33, context)) {
      case 1:
        state = 496;
        match(TOKEN_LP);
        state = 497;
        propertyAttributesList();
        state = 498;
        match(TOKEN_RP);
        break;
      }
      state = 503;
      errorHandler.sync(this);
      switch (interpreter.adaptivePredict(tokenStream, 34, context)) {
      case 1:
        state = 502;
        ibOutletQualifier();
        break;
      }
      state = 506;
      errorHandler.sync(this);
      switch (interpreter.adaptivePredict(tokenStream, 35, context)) {
      case 1:
        state = 505;
        match(TOKEN_IB_INSPECTABLE);
        break;
      }
      state = 508;
      fieldDeclaration();
    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return _localctx;
  }

  PropertyAttributesListContext propertyAttributesList() {
    dynamic _localctx = PropertyAttributesListContext(context, state);
    enterRule(_localctx, 30, RULE_propertyAttributesList);
    int _la;
    try {
      enterOuterAlt(_localctx, 1);
      state = 510;
      propertyAttribute();
      state = 515;
      errorHandler.sync(this);
      _la = tokenStream.LA(1);
      while (_la == TOKEN_COMMA) {
        state = 511;
        match(TOKEN_COMMA);
        state = 512;
        propertyAttribute();
        state = 517;
        errorHandler.sync(this);
        _la = tokenStream.LA(1);
      }
    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return _localctx;
  }

  PropertyAttributeContext propertyAttribute() {
    dynamic _localctx = PropertyAttributeContext(context, state);
    enterRule(_localctx, 32, RULE_propertyAttribute);
    try {
      state = 538;
      errorHandler.sync(this);
      switch (interpreter.adaptivePredict(tokenStream, 37, context)) {
      case 1:
        enterOuterAlt(_localctx, 1);
        state = 518;
        match(TOKEN_ATOMIC);
        break;
      case 2:
        enterOuterAlt(_localctx, 2);
        state = 519;
        match(TOKEN_NONATOMIC);
        break;
      case 3:
        enterOuterAlt(_localctx, 3);
        state = 520;
        match(TOKEN_STRONG);
        break;
      case 4:
        enterOuterAlt(_localctx, 4);
        state = 521;
        match(TOKEN_WEAK);
        break;
      case 5:
        enterOuterAlt(_localctx, 5);
        state = 522;
        match(TOKEN_RETAIN);
        break;
      case 6:
        enterOuterAlt(_localctx, 6);
        state = 523;
        match(TOKEN_ASSIGN);
        break;
      case 7:
        enterOuterAlt(_localctx, 7);
        state = 524;
        match(TOKEN_UNSAFE_UNRETAINED);
        break;
      case 8:
        enterOuterAlt(_localctx, 8);
        state = 525;
        match(TOKEN_COPY);
        break;
      case 9:
        enterOuterAlt(_localctx, 9);
        state = 526;
        match(TOKEN_READONLY);
        break;
      case 10:
        enterOuterAlt(_localctx, 10);
        state = 527;
        match(TOKEN_READWRITE);
        break;
      case 11:
        enterOuterAlt(_localctx, 11);
        state = 528;
        match(TOKEN_GETTER);
        state = 529;
        match(TOKEN_ASSIGNMENT);
        state = 530;
        identifier();
        break;
      case 12:
        enterOuterAlt(_localctx, 12);
        state = 531;
        match(TOKEN_SETTER);
        state = 532;
        match(TOKEN_ASSIGNMENT);
        state = 533;
        identifier();
        state = 534;
        match(TOKEN_COLON);
        break;
      case 13:
        enterOuterAlt(_localctx, 13);
        state = 536;
        nullabilitySpecifier();
        break;
      case 14:
        enterOuterAlt(_localctx, 14);
        state = 537;
        identifier();
        break;
      }
    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return _localctx;
  }

  ProtocolNameContext protocolName() {
    dynamic _localctx = ProtocolNameContext(context, state);
    enterRule(_localctx, 34, RULE_protocolName);
    int _la;
    try {
      state = 552;
      errorHandler.sync(this);
      switch (tokenStream.LA(1)) {
      case TOKEN_LT:
        enterOuterAlt(_localctx, 1);
        state = 540;
        match(TOKEN_LT);
        state = 541;
        protocolList();
        state = 542;
        match(TOKEN_GT);
        break;
      case TOKEN_AUTO:
      case TOKEN_CHAR:
      case TOKEN_CONST:
      case TOKEN_DOUBLE:
      case TOKEN_ENUM:
      case TOKEN_EXTERN:
      case TOKEN_FLOAT:
      case TOKEN_INLINE:
      case TOKEN_INT:
      case TOKEN_LONG:
      case TOKEN_REGISTER:
      case TOKEN_RESTRICT:
      case TOKEN_SHORT:
      case TOKEN_SIGNED:
      case TOKEN_STATIC:
      case TOKEN_STRUCT:
      case TOKEN_UNION:
      case TOKEN_UNSIGNED:
      case TOKEN_VOID:
      case TOKEN_VOLATILE:
      case TOKEN_BOOL:
      case TOKEN_Class:
      case TOKEN_BYCOPY:
      case TOKEN_BYREF:
      case TOKEN_ID:
      case TOKEN_IMP:
      case TOKEN_IN:
      case TOKEN_INOUT:
      case TOKEN_ONEWAY:
      case TOKEN_OUT:
      case TOKEN_PROTOCOL_:
      case TOKEN_SEL:
      case TOKEN_SELF:
      case TOKEN_SUPER:
      case TOKEN_ATOMIC:
      case TOKEN_NONATOMIC:
      case TOKEN_RETAIN:
      case TOKEN_ATTRIBUTE:
      case TOKEN_AUTORELEASING_QUALIFIER:
      case TOKEN_BLOCK:
      case TOKEN_BRIDGE:
      case TOKEN_BRIDGE_RETAINED:
      case TOKEN_BRIDGE_TRANSFER:
      case TOKEN_COVARIANT:
      case TOKEN_CONTRAVARIANT:
      case TOKEN_DEPRECATED:
      case TOKEN_KINDOF:
      case TOKEN_STRONG_QUALIFIER:
      case TOKEN_TYPEOF:
      case TOKEN_UNSAFE_UNRETAINED_QUALIFIER:
      case TOKEN_UNUSED:
      case TOKEN_WEAK_QUALIFIER:
      case TOKEN_NULL_UNSPECIFIED:
      case TOKEN_NULLABLE:
      case TOKEN_NONNULL:
      case TOKEN_NULL_RESETTABLE:
      case TOKEN_NS_INLINE:
      case TOKEN_NS_ENUM:
      case TOKEN_NS_OPTIONS:
      case TOKEN_NS_CLOSED_ENUM:
      case TOKEN_NS_ERROR_ENUM:
      case TOKEN_ASSIGN:
      case TOKEN_COPY:
      case TOKEN_GETTER:
      case TOKEN_SETTER:
      case TOKEN_STRONG:
      case TOKEN_READONLY:
      case TOKEN_READWRITE:
      case TOKEN_WEAK:
      case TOKEN_UNSAFE_UNRETAINED:
      case TOKEN_IB_OUTLET:
      case TOKEN_IB_OUTLET_COLLECTION:
      case TOKEN_IB_INSPECTABLE:
      case TOKEN_IB_DESIGNABLE:
      case TOKEN_IDENTIFIER:
      case TOKEN_LP:
        enterOuterAlt(_localctx, 2);
        state = 545;
        errorHandler.sync(this);
        switch (interpreter.adaptivePredict(tokenStream, 38, context)) {
        case 1:
          state = 544;
          _la = tokenStream.LA(1);
          if (!(_la == TOKEN_COVARIANT || _la == TOKEN_CONTRAVARIANT)) {
          errorHandler.recoverInline(this);
          } else {
            if ( tokenStream.LA(1)==IntStream.EOF ) matchedEOF = true;
            errorHandler.reportMatch(this);
            consume();
          }
          break;
        }
        state = 547;
        _localctx.name = typeName();
        state = 550;
        errorHandler.sync(this);
        _la = tokenStream.LA(1);
        if (_la == TOKEN_COLON) {
          state = 548;
          match(TOKEN_COLON);
          state = 549;
          typeSpecifier();
        }

        break;
      default:
        throw NoViableAltException(this);
      }
    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return _localctx;
  }

  InstanceVariablesContext instanceVariables() {
    dynamic _localctx = InstanceVariablesContext(context, state);
    enterRule(_localctx, 36, RULE_instanceVariables);
    int _la;
    try {
      enterOuterAlt(_localctx, 1);
      state = 554;
      match(TOKEN_LBRACE);
      state = 558;
      errorHandler.sync(this);
      _la = tokenStream.LA(1);
      while ((((_la) & ~0x3f) == 0 && ((BigInt.one << _la) & ((BigInt.one << TOKEN_AUTO) | (BigInt.one << TOKEN_CHAR) | (BigInt.one << TOKEN_CONST) | (BigInt.one << TOKEN_DOUBLE) | (BigInt.one << TOKEN_ENUM) | (BigInt.one << TOKEN_EXTERN) | (BigInt.one << TOKEN_FLOAT) | (BigInt.one << TOKEN_INLINE) | (BigInt.one << TOKEN_INT) | (BigInt.one << TOKEN_LONG) | (BigInt.one << TOKEN_REGISTER) | (BigInt.one << TOKEN_RESTRICT) | (BigInt.one << TOKEN_SHORT) | (BigInt.one << TOKEN_SIGNED) | (BigInt.one << TOKEN_STATIC) | (BigInt.one << TOKEN_STRUCT) | (BigInt.one << TOKEN_UNION) | (BigInt.one << TOKEN_UNSIGNED) | (BigInt.one << TOKEN_VOID) | (BigInt.one << TOKEN_VOLATILE) | (BigInt.one << TOKEN_BOOL) | (BigInt.one << TOKEN_Class) | (BigInt.one << TOKEN_BYCOPY) | (BigInt.one << TOKEN_BYREF) | (BigInt.one << TOKEN_ID) | (BigInt.one << TOKEN_IMP) | (BigInt.one << TOKEN_IN) | (BigInt.one << TOKEN_INOUT) | (BigInt.one << TOKEN_ONEWAY) | (BigInt.one << TOKEN_OUT) | (BigInt.one << TOKEN_PROTOCOL_) | (BigInt.one << TOKEN_SEL) | (BigInt.one << TOKEN_SELF) | (BigInt.one << TOKEN_SUPER))) != BigInt.zero) || ((((_la - 68)) & ~0x3f) == 0 && ((BigInt.one << (_la - 68)) & ((BigInt.one << (TOKEN_PACKAGE - 68)) | (BigInt.one << (TOKEN_PRIVATE - 68)) | (BigInt.one << (TOKEN_PROTECTED - 68)) | (BigInt.one << (TOKEN_PUBLIC - 68)) | (BigInt.one << (TOKEN_ATOMIC - 68)) | (BigInt.one << (TOKEN_NONATOMIC - 68)) | (BigInt.one << (TOKEN_RETAIN - 68)) | (BigInt.one << (TOKEN_ATTRIBUTE - 68)) | (BigInt.one << (TOKEN_AUTORELEASING_QUALIFIER - 68)) | (BigInt.one << (TOKEN_BLOCK - 68)) | (BigInt.one << (TOKEN_BRIDGE - 68)) | (BigInt.one << (TOKEN_BRIDGE_RETAINED - 68)) | (BigInt.one << (TOKEN_BRIDGE_TRANSFER - 68)) | (BigInt.one << (TOKEN_COVARIANT - 68)) | (BigInt.one << (TOKEN_CONTRAVARIANT - 68)) | (BigInt.one << (TOKEN_DEPRECATED - 68)) | (BigInt.one << (TOKEN_KINDOF - 68)) | (BigInt.one << (TOKEN_STRONG_QUALIFIER - 68)) | (BigInt.one << (TOKEN_TYPEOF - 68)) | (BigInt.one << (TOKEN_UNSAFE_UNRETAINED_QUALIFIER - 68)) | (BigInt.one << (TOKEN_UNUSED - 68)) | (BigInt.one << (TOKEN_WEAK_QUALIFIER - 68)) | (BigInt.one << (TOKEN_NULL_UNSPECIFIED - 68)) | (BigInt.one << (TOKEN_NULLABLE - 68)) | (BigInt.one << (TOKEN_NONNULL - 68)) | (BigInt.one << (TOKEN_NULL_RESETTABLE - 68)) | (BigInt.one << (TOKEN_NS_INLINE - 68)) | (BigInt.one << (TOKEN_NS_ENUM - 68)) | (BigInt.one << (TOKEN_NS_OPTIONS - 68)) | (BigInt.one << (TOKEN_NS_CLOSED_ENUM - 68)) | (BigInt.one << (TOKEN_NS_ERROR_ENUM - 68)) | (BigInt.one << (TOKEN_ASSIGN - 68)) | (BigInt.one << (TOKEN_COPY - 68)) | (BigInt.one << (TOKEN_GETTER - 68)) | (BigInt.one << (TOKEN_SETTER - 68)) | (BigInt.one << (TOKEN_STRONG - 68)) | (BigInt.one << (TOKEN_READONLY - 68)) | (BigInt.one << (TOKEN_READWRITE - 68)) | (BigInt.one << (TOKEN_WEAK - 68)) | (BigInt.one << (TOKEN_UNSAFE_UNRETAINED - 68)) | (BigInt.one << (TOKEN_IB_OUTLET - 68)) | (BigInt.one << (TOKEN_IB_OUTLET_COLLECTION - 68)) | (BigInt.one << (TOKEN_IB_INSPECTABLE - 68)) | (BigInt.one << (TOKEN_IB_DESIGNABLE - 68)))) != BigInt.zero) || _la == TOKEN_IDENTIFIER || _la == TOKEN_LP) {
        state = 555;
        visibilitySection();
        state = 560;
        errorHandler.sync(this);
        _la = tokenStream.LA(1);
      }
      state = 561;
      match(TOKEN_RBRACE);
    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return _localctx;
  }

  VisibilitySectionContext visibilitySection() {
    dynamic _localctx = VisibilitySectionContext(context, state);
    enterRule(_localctx, 38, RULE_visibilitySection);
    try {
      int _alt;
      state = 575;
      errorHandler.sync(this);
      switch (tokenStream.LA(1)) {
      case TOKEN_PACKAGE:
      case TOKEN_PRIVATE:
      case TOKEN_PROTECTED:
      case TOKEN_PUBLIC:
        enterOuterAlt(_localctx, 1);
        state = 563;
        accessModifier();
        state = 567;
        errorHandler.sync(this);
        _alt = interpreter.adaptivePredict(tokenStream, 42, context);
        while (_alt != 2 && _alt != ATN.INVALID_ALT_NUMBER) {
          if (_alt == 1) {
            state = 564;
            fieldDeclaration(); 
          }
          state = 569;
          errorHandler.sync(this);
          _alt = interpreter.adaptivePredict(tokenStream, 42, context);
        }
        break;
      case TOKEN_AUTO:
      case TOKEN_CHAR:
      case TOKEN_CONST:
      case TOKEN_DOUBLE:
      case TOKEN_ENUM:
      case TOKEN_EXTERN:
      case TOKEN_FLOAT:
      case TOKEN_INLINE:
      case TOKEN_INT:
      case TOKEN_LONG:
      case TOKEN_REGISTER:
      case TOKEN_RESTRICT:
      case TOKEN_SHORT:
      case TOKEN_SIGNED:
      case TOKEN_STATIC:
      case TOKEN_STRUCT:
      case TOKEN_UNION:
      case TOKEN_UNSIGNED:
      case TOKEN_VOID:
      case TOKEN_VOLATILE:
      case TOKEN_BOOL:
      case TOKEN_Class:
      case TOKEN_BYCOPY:
      case TOKEN_BYREF:
      case TOKEN_ID:
      case TOKEN_IMP:
      case TOKEN_IN:
      case TOKEN_INOUT:
      case TOKEN_ONEWAY:
      case TOKEN_OUT:
      case TOKEN_PROTOCOL_:
      case TOKEN_SEL:
      case TOKEN_SELF:
      case TOKEN_SUPER:
      case TOKEN_ATOMIC:
      case TOKEN_NONATOMIC:
      case TOKEN_RETAIN:
      case TOKEN_ATTRIBUTE:
      case TOKEN_AUTORELEASING_QUALIFIER:
      case TOKEN_BLOCK:
      case TOKEN_BRIDGE:
      case TOKEN_BRIDGE_RETAINED:
      case TOKEN_BRIDGE_TRANSFER:
      case TOKEN_COVARIANT:
      case TOKEN_CONTRAVARIANT:
      case TOKEN_DEPRECATED:
      case TOKEN_KINDOF:
      case TOKEN_STRONG_QUALIFIER:
      case TOKEN_TYPEOF:
      case TOKEN_UNSAFE_UNRETAINED_QUALIFIER:
      case TOKEN_UNUSED:
      case TOKEN_WEAK_QUALIFIER:
      case TOKEN_NULL_UNSPECIFIED:
      case TOKEN_NULLABLE:
      case TOKEN_NONNULL:
      case TOKEN_NULL_RESETTABLE:
      case TOKEN_NS_INLINE:
      case TOKEN_NS_ENUM:
      case TOKEN_NS_OPTIONS:
      case TOKEN_NS_CLOSED_ENUM:
      case TOKEN_NS_ERROR_ENUM:
      case TOKEN_ASSIGN:
      case TOKEN_COPY:
      case TOKEN_GETTER:
      case TOKEN_SETTER:
      case TOKEN_STRONG:
      case TOKEN_READONLY:
      case TOKEN_READWRITE:
      case TOKEN_WEAK:
      case TOKEN_UNSAFE_UNRETAINED:
      case TOKEN_IB_OUTLET:
      case TOKEN_IB_OUTLET_COLLECTION:
      case TOKEN_IB_INSPECTABLE:
      case TOKEN_IB_DESIGNABLE:
      case TOKEN_IDENTIFIER:
      case TOKEN_LP:
        enterOuterAlt(_localctx, 2);
        state = 571; 
        errorHandler.sync(this);
        _alt = 1;
        do {
          switch (_alt) {
          case 1:
            state = 570;
            fieldDeclaration();
            break;
          default:
            throw NoViableAltException(this);
          }
          state = 573; 
          errorHandler.sync(this);
          _alt = interpreter.adaptivePredict(tokenStream, 43, context);
        } while (_alt != 2 && _alt != ATN.INVALID_ALT_NUMBER);
        break;
      default:
        throw NoViableAltException(this);
      }
    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return _localctx;
  }

  AccessModifierContext accessModifier() {
    dynamic _localctx = AccessModifierContext(context, state);
    enterRule(_localctx, 40, RULE_accessModifier);
    int _la;
    try {
      enterOuterAlt(_localctx, 1);
      state = 577;
      _la = tokenStream.LA(1);
      if (!(((((_la - 68)) & ~0x3f) == 0 && ((BigInt.one << (_la - 68)) & ((BigInt.one << (TOKEN_PACKAGE - 68)) | (BigInt.one << (TOKEN_PRIVATE - 68)) | (BigInt.one << (TOKEN_PROTECTED - 68)) | (BigInt.one << (TOKEN_PUBLIC - 68)))) != BigInt.zero))) {
      errorHandler.recoverInline(this);
      } else {
        if ( tokenStream.LA(1)==IntStream.EOF ) matchedEOF = true;
        errorHandler.reportMatch(this);
        consume();
      }
    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return _localctx;
  }

  InterfaceDeclarationListContext interfaceDeclarationList() {
    dynamic _localctx = InterfaceDeclarationListContext(context, state);
    enterRule(_localctx, 42, RULE_interfaceDeclarationList);
    try {
      int _alt;
      enterOuterAlt(_localctx, 1);
      state = 584; 
      errorHandler.sync(this);
      _alt = 1;
      do {
        switch (_alt) {
        case 1:
          state = 584;
          errorHandler.sync(this);
          switch (interpreter.adaptivePredict(tokenStream, 45, context)) {
          case 1:
            state = 579;
            declaration();
            break;
          case 2:
            state = 580;
            classMethodDeclaration();
            break;
          case 3:
            state = 581;
            instanceMethodDeclaration();
            break;
          case 4:
            state = 582;
            propertyDeclaration();
            break;
          case 5:
            state = 583;
            functionDeclaration();
            break;
          }
          break;
        default:
          throw NoViableAltException(this);
        }
        state = 586; 
        errorHandler.sync(this);
        _alt = interpreter.adaptivePredict(tokenStream, 46, context);
      } while (_alt != 2 && _alt != ATN.INVALID_ALT_NUMBER);
    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return _localctx;
  }

  ClassMethodDeclarationContext classMethodDeclaration() {
    dynamic _localctx = ClassMethodDeclarationContext(context, state);
    enterRule(_localctx, 44, RULE_classMethodDeclaration);
    try {
      enterOuterAlt(_localctx, 1);
      state = 588;
      match(TOKEN_ADD);
      state = 589;
      methodDeclaration();
    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return _localctx;
  }

  InstanceMethodDeclarationContext instanceMethodDeclaration() {
    dynamic _localctx = InstanceMethodDeclarationContext(context, state);
    enterRule(_localctx, 46, RULE_instanceMethodDeclaration);
    try {
      enterOuterAlt(_localctx, 1);
      state = 591;
      match(TOKEN_SUB);
      state = 592;
      methodDeclaration();
    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return _localctx;
  }

  MethodDeclarationContext methodDeclaration() {
    dynamic _localctx = MethodDeclarationContext(context, state);
    enterRule(_localctx, 48, RULE_methodDeclaration);
    int _la;
    try {
      enterOuterAlt(_localctx, 1);
      state = 595;
      errorHandler.sync(this);
      _la = tokenStream.LA(1);
      if (_la == TOKEN_LP) {
        state = 594;
        methodType();
      }

      state = 597;
      methodSelector();
      state = 602;
      errorHandler.sync(this);
      _la = tokenStream.LA(1);
      while ((((_la) & ~0x3f) == 0 && ((BigInt.one << _la) & ((BigInt.one << TOKEN_BOOL) | (BigInt.one << TOKEN_Class) | (BigInt.one << TOKEN_BYCOPY) | (BigInt.one << TOKEN_BYREF) | (BigInt.one << TOKEN_ID) | (BigInt.one << TOKEN_IMP) | (BigInt.one << TOKEN_IN) | (BigInt.one << TOKEN_INOUT) | (BigInt.one << TOKEN_ONEWAY) | (BigInt.one << TOKEN_OUT) | (BigInt.one << TOKEN_PROTOCOL_) | (BigInt.one << TOKEN_SEL) | (BigInt.one << TOKEN_SELF) | (BigInt.one << TOKEN_SUPER))) != BigInt.zero) || ((((_la - 81)) & ~0x3f) == 0 && ((BigInt.one << (_la - 81)) & ((BigInt.one << (TOKEN_ATOMIC - 81)) | (BigInt.one << (TOKEN_NONATOMIC - 81)) | (BigInt.one << (TOKEN_RETAIN - 81)) | (BigInt.one << (TOKEN_ATTRIBUTE - 81)) | (BigInt.one << (TOKEN_AUTORELEASING_QUALIFIER - 81)) | (BigInt.one << (TOKEN_BLOCK - 81)) | (BigInt.one << (TOKEN_BRIDGE_RETAINED - 81)) | (BigInt.one << (TOKEN_BRIDGE_TRANSFER - 81)) | (BigInt.one << (TOKEN_COVARIANT - 81)) | (BigInt.one << (TOKEN_CONTRAVARIANT - 81)) | (BigInt.one << (TOKEN_DEPRECATED - 81)) | (BigInt.one << (TOKEN_KINDOF - 81)) | (BigInt.one << (TOKEN_UNUSED - 81)) | (BigInt.one << (TOKEN_NULL_UNSPECIFIED - 81)) | (BigInt.one << (TOKEN_NULLABLE - 81)) | (BigInt.one << (TOKEN_NONNULL - 81)) | (BigInt.one << (TOKEN_NULL_RESETTABLE - 81)) | (BigInt.one << (TOKEN_NS_INLINE - 81)) | (BigInt.one << (TOKEN_NS_ENUM - 81)) | (BigInt.one << (TOKEN_NS_OPTIONS - 81)) | (BigInt.one << (TOKEN_ASSIGN - 81)) | (BigInt.one << (TOKEN_COPY - 81)) | (BigInt.one << (TOKEN_GETTER - 81)) | (BigInt.one << (TOKEN_SETTER - 81)) | (BigInt.one << (TOKEN_STRONG - 81)) | (BigInt.one << (TOKEN_READONLY - 81)) | (BigInt.one << (TOKEN_READWRITE - 81)) | (BigInt.one << (TOKEN_WEAK - 81)) | (BigInt.one << (TOKEN_UNSAFE_UNRETAINED - 81)) | (BigInt.one << (TOKEN_IB_OUTLET - 81)) | (BigInt.one << (TOKEN_IB_OUTLET_COLLECTION - 81)) | (BigInt.one << (TOKEN_IB_INSPECTABLE - 81)) | (BigInt.one << (TOKEN_IB_DESIGNABLE - 81)) | (BigInt.one << (TOKEN_IDENTIFIER - 81)))) != BigInt.zero)) {
        state = 600;
        errorHandler.sync(this);
        switch (tokenStream.LA(1)) {
        case TOKEN_BOOL:
        case TOKEN_Class:
        case TOKEN_BYCOPY:
        case TOKEN_BYREF:
        case TOKEN_ID:
        case TOKEN_IMP:
        case TOKEN_IN:
        case TOKEN_INOUT:
        case TOKEN_ONEWAY:
        case TOKEN_OUT:
        case TOKEN_PROTOCOL_:
        case TOKEN_SEL:
        case TOKEN_SELF:
        case TOKEN_SUPER:
        case TOKEN_ATOMIC:
        case TOKEN_NONATOMIC:
        case TOKEN_RETAIN:
        case TOKEN_AUTORELEASING_QUALIFIER:
        case TOKEN_BLOCK:
        case TOKEN_BRIDGE_RETAINED:
        case TOKEN_BRIDGE_TRANSFER:
        case TOKEN_COVARIANT:
        case TOKEN_CONTRAVARIANT:
        case TOKEN_DEPRECATED:
        case TOKEN_KINDOF:
        case TOKEN_UNUSED:
        case TOKEN_NULL_UNSPECIFIED:
        case TOKEN_NULLABLE:
        case TOKEN_NONNULL:
        case TOKEN_NULL_RESETTABLE:
        case TOKEN_NS_INLINE:
        case TOKEN_NS_ENUM:
        case TOKEN_NS_OPTIONS:
        case TOKEN_ASSIGN:
        case TOKEN_COPY:
        case TOKEN_GETTER:
        case TOKEN_SETTER:
        case TOKEN_STRONG:
        case TOKEN_READONLY:
        case TOKEN_READWRITE:
        case TOKEN_WEAK:
        case TOKEN_UNSAFE_UNRETAINED:
        case TOKEN_IB_OUTLET:
        case TOKEN_IB_OUTLET_COLLECTION:
        case TOKEN_IB_INSPECTABLE:
        case TOKEN_IB_DESIGNABLE:
        case TOKEN_IDENTIFIER:
          state = 598;
          macro();
          break;
        case TOKEN_ATTRIBUTE:
          state = 599;
          attributeSpecifier();
          break;
        default:
          throw NoViableAltException(this);
        }
        state = 604;
        errorHandler.sync(this);
        _la = tokenStream.LA(1);
      }
      state = 605;
      match(TOKEN_SEMI);
    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return _localctx;
  }

  ImplementationDefinitionListContext implementationDefinitionList() {
    dynamic _localctx = ImplementationDefinitionListContext(context, state);
    enterRule(_localctx, 50, RULE_implementationDefinitionList);
    int _la;
    try {
      enterOuterAlt(_localctx, 1);
      state = 612; 
      errorHandler.sync(this);
      _la = tokenStream.LA(1);
      do {
        state = 612;
        errorHandler.sync(this);
        switch (interpreter.adaptivePredict(tokenStream, 50, context)) {
        case 1:
          state = 607;
          functionDefinition();
          break;
        case 2:
          state = 608;
          declaration();
          break;
        case 3:
          state = 609;
          classMethodDefinition();
          break;
        case 4:
          state = 610;
          instanceMethodDefinition();
          break;
        case 5:
          state = 611;
          propertyImplementation();
          break;
        }
        state = 614; 
        errorHandler.sync(this);
        _la = tokenStream.LA(1);
      } while ((((_la) & ~0x3f) == 0 && ((BigInt.one << _la) & ((BigInt.one << TOKEN_AUTO) | (BigInt.one << TOKEN_CHAR) | (BigInt.one << TOKEN_CONST) | (BigInt.one << TOKEN_DOUBLE) | (BigInt.one << TOKEN_ENUM) | (BigInt.one << TOKEN_EXTERN) | (BigInt.one << TOKEN_FLOAT) | (BigInt.one << TOKEN_INLINE) | (BigInt.one << TOKEN_INT) | (BigInt.one << TOKEN_LONG) | (BigInt.one << TOKEN_REGISTER) | (BigInt.one << TOKEN_RESTRICT) | (BigInt.one << TOKEN_SHORT) | (BigInt.one << TOKEN_SIGNED) | (BigInt.one << TOKEN_STATIC) | (BigInt.one << TOKEN_STRUCT) | (BigInt.one << TOKEN_TYPEDEF) | (BigInt.one << TOKEN_UNION) | (BigInt.one << TOKEN_UNSIGNED) | (BigInt.one << TOKEN_VOID) | (BigInt.one << TOKEN_VOLATILE) | (BigInt.one << TOKEN_BOOL) | (BigInt.one << TOKEN_Class) | (BigInt.one << TOKEN_BYCOPY) | (BigInt.one << TOKEN_BYREF) | (BigInt.one << TOKEN_ID) | (BigInt.one << TOKEN_IMP) | (BigInt.one << TOKEN_IN) | (BigInt.one << TOKEN_INOUT) | (BigInt.one << TOKEN_ONEWAY) | (BigInt.one << TOKEN_OUT) | (BigInt.one << TOKEN_PROTOCOL_) | (BigInt.one << TOKEN_SEL) | (BigInt.one << TOKEN_SELF) | (BigInt.one << TOKEN_SUPER) | (BigInt.one << TOKEN_DYNAMIC))) != BigInt.zero) || ((((_la - 78)) & ~0x3f) == 0 && ((BigInt.one << (_la - 78)) & ((BigInt.one << (TOKEN_SYNTHESIZE - 78)) | (BigInt.one << (TOKEN_ATOMIC - 78)) | (BigInt.one << (TOKEN_NONATOMIC - 78)) | (BigInt.one << (TOKEN_RETAIN - 78)) | (BigInt.one << (TOKEN_ATTRIBUTE - 78)) | (BigInt.one << (TOKEN_AUTORELEASING_QUALIFIER - 78)) | (BigInt.one << (TOKEN_BLOCK - 78)) | (BigInt.one << (TOKEN_BRIDGE - 78)) | (BigInt.one << (TOKEN_BRIDGE_RETAINED - 78)) | (BigInt.one << (TOKEN_BRIDGE_TRANSFER - 78)) | (BigInt.one << (TOKEN_COVARIANT - 78)) | (BigInt.one << (TOKEN_CONTRAVARIANT - 78)) | (BigInt.one << (TOKEN_DEPRECATED - 78)) | (BigInt.one << (TOKEN_KINDOF - 78)) | (BigInt.one << (TOKEN_STRONG_QUALIFIER - 78)) | (BigInt.one << (TOKEN_TYPEOF - 78)) | (BigInt.one << (TOKEN_UNSAFE_UNRETAINED_QUALIFIER - 78)) | (BigInt.one << (TOKEN_UNUSED - 78)) | (BigInt.one << (TOKEN_WEAK_QUALIFIER - 78)) | (BigInt.one << (TOKEN_NULL_UNSPECIFIED - 78)) | (BigInt.one << (TOKEN_NULLABLE - 78)) | (BigInt.one << (TOKEN_NONNULL - 78)) | (BigInt.one << (TOKEN_NULL_RESETTABLE - 78)) | (BigInt.one << (TOKEN_NS_INLINE - 78)) | (BigInt.one << (TOKEN_NS_ENUM - 78)) | (BigInt.one << (TOKEN_NS_OPTIONS - 78)) | (BigInt.one << (TOKEN_NS_CLOSED_ENUM - 78)) | (BigInt.one << (TOKEN_NS_ERROR_ENUM - 78)) | (BigInt.one << (TOKEN_ASSIGN - 78)) | (BigInt.one << (TOKEN_COPY - 78)) | (BigInt.one << (TOKEN_GETTER - 78)) | (BigInt.one << (TOKEN_SETTER - 78)) | (BigInt.one << (TOKEN_STRONG - 78)) | (BigInt.one << (TOKEN_READONLY - 78)) | (BigInt.one << (TOKEN_READWRITE - 78)) | (BigInt.one << (TOKEN_WEAK - 78)) | (BigInt.one << (TOKEN_UNSAFE_UNRETAINED - 78)) | (BigInt.one << (TOKEN_IB_OUTLET - 78)) | (BigInt.one << (TOKEN_IB_OUTLET_COLLECTION - 78)) | (BigInt.one << (TOKEN_IB_INSPECTABLE - 78)) | (BigInt.one << (TOKEN_IB_DESIGNABLE - 78)) | (BigInt.one << (TOKEN_IDENTIFIER - 78)))) != BigInt.zero) || _la == TOKEN_ADD || _la == TOKEN_SUB);
    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return _localctx;
  }

  ClassMethodDefinitionContext classMethodDefinition() {
    dynamic _localctx = ClassMethodDefinitionContext(context, state);
    enterRule(_localctx, 52, RULE_classMethodDefinition);
    try {
      enterOuterAlt(_localctx, 1);
      state = 616;
      match(TOKEN_ADD);
      state = 617;
      methodDefinition();
    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return _localctx;
  }

  InstanceMethodDefinitionContext instanceMethodDefinition() {
    dynamic _localctx = InstanceMethodDefinitionContext(context, state);
    enterRule(_localctx, 54, RULE_instanceMethodDefinition);
    try {
      enterOuterAlt(_localctx, 1);
      state = 619;
      match(TOKEN_SUB);
      state = 620;
      methodDefinition();
    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return _localctx;
  }

  MethodDefinitionContext methodDefinition() {
    dynamic _localctx = MethodDefinitionContext(context, state);
    enterRule(_localctx, 56, RULE_methodDefinition);
    int _la;
    try {
      enterOuterAlt(_localctx, 1);
      state = 623;
      errorHandler.sync(this);
      _la = tokenStream.LA(1);
      if (_la == TOKEN_LP) {
        state = 622;
        methodType();
      }

      state = 625;
      methodSelector();
      state = 627;
      errorHandler.sync(this);
      _la = tokenStream.LA(1);
      if (((((_la - 40)) & ~0x3f) == 0 && ((BigInt.one << (_la - 40)) & ((BigInt.one << (TOKEN_BOOL - 40)) | (BigInt.one << (TOKEN_Class - 40)) | (BigInt.one << (TOKEN_BYCOPY - 40)) | (BigInt.one << (TOKEN_BYREF - 40)) | (BigInt.one << (TOKEN_ID - 40)) | (BigInt.one << (TOKEN_IMP - 40)) | (BigInt.one << (TOKEN_IN - 40)) | (BigInt.one << (TOKEN_INOUT - 40)) | (BigInt.one << (TOKEN_ONEWAY - 40)) | (BigInt.one << (TOKEN_OUT - 40)) | (BigInt.one << (TOKEN_PROTOCOL_ - 40)) | (BigInt.one << (TOKEN_SEL - 40)) | (BigInt.one << (TOKEN_SELF - 40)) | (BigInt.one << (TOKEN_SUPER - 40)) | (BigInt.one << (TOKEN_ATOMIC - 40)) | (BigInt.one << (TOKEN_NONATOMIC - 40)) | (BigInt.one << (TOKEN_RETAIN - 40)) | (BigInt.one << (TOKEN_AUTORELEASING_QUALIFIER - 40)) | (BigInt.one << (TOKEN_BLOCK - 40)) | (BigInt.one << (TOKEN_BRIDGE_RETAINED - 40)) | (BigInt.one << (TOKEN_BRIDGE_TRANSFER - 40)) | (BigInt.one << (TOKEN_COVARIANT - 40)) | (BigInt.one << (TOKEN_CONTRAVARIANT - 40)) | (BigInt.one << (TOKEN_DEPRECATED - 40)) | (BigInt.one << (TOKEN_KINDOF - 40)) | (BigInt.one << (TOKEN_UNUSED - 40)) | (BigInt.one << (TOKEN_NULL_UNSPECIFIED - 40)) | (BigInt.one << (TOKEN_NULLABLE - 40)) | (BigInt.one << (TOKEN_NONNULL - 40)) | (BigInt.one << (TOKEN_NULL_RESETTABLE - 40)) | (BigInt.one << (TOKEN_NS_INLINE - 40)))) != BigInt.zero) || ((((_la - 104)) & ~0x3f) == 0 && ((BigInt.one << (_la - 104)) & ((BigInt.one << (TOKEN_NS_ENUM - 104)) | (BigInt.one << (TOKEN_NS_OPTIONS - 104)) | (BigInt.one << (TOKEN_ASSIGN - 104)) | (BigInt.one << (TOKEN_COPY - 104)) | (BigInt.one << (TOKEN_GETTER - 104)) | (BigInt.one << (TOKEN_SETTER - 104)) | (BigInt.one << (TOKEN_STRONG - 104)) | (BigInt.one << (TOKEN_READONLY - 104)) | (BigInt.one << (TOKEN_READWRITE - 104)) | (BigInt.one << (TOKEN_WEAK - 104)) | (BigInt.one << (TOKEN_UNSAFE_UNRETAINED - 104)) | (BigInt.one << (TOKEN_IB_OUTLET - 104)) | (BigInt.one << (TOKEN_IB_OUTLET_COLLECTION - 104)) | (BigInt.one << (TOKEN_IB_INSPECTABLE - 104)) | (BigInt.one << (TOKEN_IB_DESIGNABLE - 104)) | (BigInt.one << (TOKEN_IDENTIFIER - 104)) | (BigInt.one << (TOKEN_LP - 104)) | (BigInt.one << (TOKEN_MUL - 104)))) != BigInt.zero)) {
        state = 626;
        initDeclaratorList();
      }

      state = 630;
      errorHandler.sync(this);
      _la = tokenStream.LA(1);
      if (_la == TOKEN_SEMI) {
        state = 629;
        match(TOKEN_SEMI);
      }

      state = 632;
      compoundStatement();
    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return _localctx;
  }

  MethodSelectorContext methodSelector() {
    dynamic _localctx = MethodSelectorContext(context, state);
    enterRule(_localctx, 58, RULE_methodSelector);
    int _la;
    try {
      int _alt;
      state = 644;
      errorHandler.sync(this);
      switch (interpreter.adaptivePredict(tokenStream, 57, context)) {
      case 1:
        enterOuterAlt(_localctx, 1);
        state = 634;
        _localctx.sel = selector();
        break;
      case 2:
        enterOuterAlt(_localctx, 2);
        state = 636; 
        errorHandler.sync(this);
        _alt = 1;
        do {
          switch (_alt) {
          case 1:
            state = 635;
            keywordDeclarator();
            break;
          default:
            throw NoViableAltException(this);
          }
          state = 638; 
          errorHandler.sync(this);
          _alt = interpreter.adaptivePredict(tokenStream, 55, context);
        } while (_alt != 2 && _alt != ATN.INVALID_ALT_NUMBER);
        state = 642;
        errorHandler.sync(this);
        _la = tokenStream.LA(1);
        if (_la == TOKEN_COMMA) {
          state = 640;
          match(TOKEN_COMMA);
          state = 641;
          match(TOKEN_ELIPSIS);
        }

        break;
      }
    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return _localctx;
  }

  KeywordDeclaratorContext keywordDeclarator() {
    dynamic _localctx = KeywordDeclaratorContext(context, state);
    enterRule(_localctx, 60, RULE_keywordDeclarator);
    int _la;
    try {
      enterOuterAlt(_localctx, 1);
      state = 647;
      errorHandler.sync(this);
      _la = tokenStream.LA(1);
      if ((((_la) & ~0x3f) == 0 && ((BigInt.one << _la) & ((BigInt.one << TOKEN_RETURN) | (BigInt.one << TOKEN_BOOL) | (BigInt.one << TOKEN_Class) | (BigInt.one << TOKEN_BYCOPY) | (BigInt.one << TOKEN_BYREF) | (BigInt.one << TOKEN_ID) | (BigInt.one << TOKEN_IMP) | (BigInt.one << TOKEN_IN) | (BigInt.one << TOKEN_INOUT) | (BigInt.one << TOKEN_ONEWAY) | (BigInt.one << TOKEN_OUT) | (BigInt.one << TOKEN_PROTOCOL_) | (BigInt.one << TOKEN_SEL) | (BigInt.one << TOKEN_SELF) | (BigInt.one << TOKEN_SUPER))) != BigInt.zero) || ((((_la - 81)) & ~0x3f) == 0 && ((BigInt.one << (_la - 81)) & ((BigInt.one << (TOKEN_ATOMIC - 81)) | (BigInt.one << (TOKEN_NONATOMIC - 81)) | (BigInt.one << (TOKEN_RETAIN - 81)) | (BigInt.one << (TOKEN_AUTORELEASING_QUALIFIER - 81)) | (BigInt.one << (TOKEN_BLOCK - 81)) | (BigInt.one << (TOKEN_BRIDGE_RETAINED - 81)) | (BigInt.one << (TOKEN_BRIDGE_TRANSFER - 81)) | (BigInt.one << (TOKEN_COVARIANT - 81)) | (BigInt.one << (TOKEN_CONTRAVARIANT - 81)) | (BigInt.one << (TOKEN_DEPRECATED - 81)) | (BigInt.one << (TOKEN_KINDOF - 81)) | (BigInt.one << (TOKEN_UNUSED - 81)) | (BigInt.one << (TOKEN_NULL_UNSPECIFIED - 81)) | (BigInt.one << (TOKEN_NULLABLE - 81)) | (BigInt.one << (TOKEN_NONNULL - 81)) | (BigInt.one << (TOKEN_NULL_RESETTABLE - 81)) | (BigInt.one << (TOKEN_NS_INLINE - 81)) | (BigInt.one << (TOKEN_NS_ENUM - 81)) | (BigInt.one << (TOKEN_NS_OPTIONS - 81)) | (BigInt.one << (TOKEN_ASSIGN - 81)) | (BigInt.one << (TOKEN_COPY - 81)) | (BigInt.one << (TOKEN_GETTER - 81)) | (BigInt.one << (TOKEN_SETTER - 81)) | (BigInt.one << (TOKEN_STRONG - 81)) | (BigInt.one << (TOKEN_READONLY - 81)) | (BigInt.one << (TOKEN_READWRITE - 81)) | (BigInt.one << (TOKEN_WEAK - 81)) | (BigInt.one << (TOKEN_UNSAFE_UNRETAINED - 81)) | (BigInt.one << (TOKEN_IB_OUTLET - 81)) | (BigInt.one << (TOKEN_IB_OUTLET_COLLECTION - 81)) | (BigInt.one << (TOKEN_IB_INSPECTABLE - 81)) | (BigInt.one << (TOKEN_IB_DESIGNABLE - 81)) | (BigInt.one << (TOKEN_IDENTIFIER - 81)))) != BigInt.zero)) {
        state = 646;
        _localctx.sel = selector();
      }

      state = 649;
      match(TOKEN_COLON);
      state = 653;
      errorHandler.sync(this);
      _la = tokenStream.LA(1);
      while (_la == TOKEN_LP) {
        state = 650;
        _localctx._methodType = methodType();
        _localctx.types.add(_localctx._methodType);
        state = 655;
        errorHandler.sync(this);
        _la = tokenStream.LA(1);
      }
      state = 657;
      errorHandler.sync(this);
      switch (interpreter.adaptivePredict(tokenStream, 60, context)) {
      case 1:
        state = 656;
        arcBehaviourSpecifier();
        break;
      }
      state = 659;
      _localctx.name = identifier();
    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return _localctx;
  }

  SelectorContext selector() {
    dynamic _localctx = SelectorContext(context, state);
    enterRule(_localctx, 62, RULE_selector);
    try {
      state = 663;
      errorHandler.sync(this);
      switch (tokenStream.LA(1)) {
      case TOKEN_BOOL:
      case TOKEN_Class:
      case TOKEN_BYCOPY:
      case TOKEN_BYREF:
      case TOKEN_ID:
      case TOKEN_IMP:
      case TOKEN_IN:
      case TOKEN_INOUT:
      case TOKEN_ONEWAY:
      case TOKEN_OUT:
      case TOKEN_PROTOCOL_:
      case TOKEN_SEL:
      case TOKEN_SELF:
      case TOKEN_SUPER:
      case TOKEN_ATOMIC:
      case TOKEN_NONATOMIC:
      case TOKEN_RETAIN:
      case TOKEN_AUTORELEASING_QUALIFIER:
      case TOKEN_BLOCK:
      case TOKEN_BRIDGE_RETAINED:
      case TOKEN_BRIDGE_TRANSFER:
      case TOKEN_COVARIANT:
      case TOKEN_CONTRAVARIANT:
      case TOKEN_DEPRECATED:
      case TOKEN_KINDOF:
      case TOKEN_UNUSED:
      case TOKEN_NULL_UNSPECIFIED:
      case TOKEN_NULLABLE:
      case TOKEN_NONNULL:
      case TOKEN_NULL_RESETTABLE:
      case TOKEN_NS_INLINE:
      case TOKEN_NS_ENUM:
      case TOKEN_NS_OPTIONS:
      case TOKEN_ASSIGN:
      case TOKEN_COPY:
      case TOKEN_GETTER:
      case TOKEN_SETTER:
      case TOKEN_STRONG:
      case TOKEN_READONLY:
      case TOKEN_READWRITE:
      case TOKEN_WEAK:
      case TOKEN_UNSAFE_UNRETAINED:
      case TOKEN_IB_OUTLET:
      case TOKEN_IB_OUTLET_COLLECTION:
      case TOKEN_IB_INSPECTABLE:
      case TOKEN_IB_DESIGNABLE:
      case TOKEN_IDENTIFIER:
        enterOuterAlt(_localctx, 1);
        state = 661;
        identifier();
        break;
      case TOKEN_RETURN:
        enterOuterAlt(_localctx, 2);
        state = 662;
        match(TOKEN_RETURN);
        break;
      default:
        throw NoViableAltException(this);
      }
    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return _localctx;
  }

  MethodTypeContext methodType() {
    dynamic _localctx = MethodTypeContext(context, state);
    enterRule(_localctx, 64, RULE_methodType);
    try {
      enterOuterAlt(_localctx, 1);
      state = 665;
      match(TOKEN_LP);
      state = 666;
      typeName();
      state = 667;
      match(TOKEN_RP);
    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return _localctx;
  }

  PropertyImplementationContext propertyImplementation() {
    dynamic _localctx = PropertyImplementationContext(context, state);
    enterRule(_localctx, 66, RULE_propertyImplementation);
    try {
      state = 677;
      errorHandler.sync(this);
      switch (tokenStream.LA(1)) {
      case TOKEN_SYNTHESIZE:
        enterOuterAlt(_localctx, 1);
        state = 669;
        match(TOKEN_SYNTHESIZE);
        state = 670;
        propertySynthesizeList();
        state = 671;
        match(TOKEN_SEMI);
        break;
      case TOKEN_DYNAMIC:
        enterOuterAlt(_localctx, 2);
        state = 673;
        match(TOKEN_DYNAMIC);
        state = 674;
        propertySynthesizeList();
        state = 675;
        match(TOKEN_SEMI);
        break;
      default:
        throw NoViableAltException(this);
      }
    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return _localctx;
  }

  PropertySynthesizeListContext propertySynthesizeList() {
    dynamic _localctx = PropertySynthesizeListContext(context, state);
    enterRule(_localctx, 68, RULE_propertySynthesizeList);
    int _la;
    try {
      enterOuterAlt(_localctx, 1);
      state = 679;
      propertySynthesizeItem();
      state = 684;
      errorHandler.sync(this);
      _la = tokenStream.LA(1);
      while (_la == TOKEN_COMMA) {
        state = 680;
        match(TOKEN_COMMA);
        state = 681;
        propertySynthesizeItem();
        state = 686;
        errorHandler.sync(this);
        _la = tokenStream.LA(1);
      }
    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return _localctx;
  }

  PropertySynthesizeItemContext propertySynthesizeItem() {
    dynamic _localctx = PropertySynthesizeItemContext(context, state);
    enterRule(_localctx, 70, RULE_propertySynthesizeItem);
    int _la;
    try {
      enterOuterAlt(_localctx, 1);
      state = 687;
      identifier();
      state = 690;
      errorHandler.sync(this);
      _la = tokenStream.LA(1);
      if (_la == TOKEN_ASSIGNMENT) {
        state = 688;
        match(TOKEN_ASSIGNMENT);
        state = 689;
        identifier();
      }

    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return _localctx;
  }

  BlockTypeContext blockType() {
    dynamic _localctx = BlockTypeContext(context, state);
    enterRule(_localctx, 72, RULE_blockType);
    int _la;
    try {
      enterOuterAlt(_localctx, 1);
      state = 693;
      errorHandler.sync(this);
      switch (interpreter.adaptivePredict(tokenStream, 65, context)) {
      case 1:
        state = 692;
        nullabilitySpecifier();
        break;
      }
      state = 695;
      typeSpecifier();
      state = 697;
      errorHandler.sync(this);
      _la = tokenStream.LA(1);
      if (((((_la - 99)) & ~0x3f) == 0 && ((BigInt.one << (_la - 99)) & ((BigInt.one << (TOKEN_NULL_UNSPECIFIED - 99)) | (BigInt.one << (TOKEN_NULLABLE - 99)) | (BigInt.one << (TOKEN_NONNULL - 99)) | (BigInt.one << (TOKEN_NULL_RESETTABLE - 99)))) != BigInt.zero)) {
        state = 696;
        nullabilitySpecifier();
      }

      state = 699;
      match(TOKEN_LP);
      state = 700;
      match(TOKEN_BITXOR);
      state = 703;
      errorHandler.sync(this);
      switch (interpreter.adaptivePredict(tokenStream, 67, context)) {
      case 1:
        state = 701;
        nullabilitySpecifier();
        break;
      case 2:
        state = 702;
        typeSpecifier();
        break;
      }
      state = 705;
      match(TOKEN_RP);
      state = 707;
      errorHandler.sync(this);
      _la = tokenStream.LA(1);
      if (_la == TOKEN_LP) {
        state = 706;
        blockParameters();
      }

    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return _localctx;
  }

  GenericsSpecifierContext genericsSpecifier() {
    dynamic _localctx = GenericsSpecifierContext(context, state);
    enterRule(_localctx, 74, RULE_genericsSpecifier);
    int _la;
    try {
      enterOuterAlt(_localctx, 1);
      state = 709;
      match(TOKEN_LT);
      state = 718;
      errorHandler.sync(this);
      _la = tokenStream.LA(1);
      if ((((_la) & ~0x3f) == 0 && ((BigInt.one << _la) & ((BigInt.one << TOKEN_CHAR) | (BigInt.one << TOKEN_DOUBLE) | (BigInt.one << TOKEN_ENUM) | (BigInt.one << TOKEN_FLOAT) | (BigInt.one << TOKEN_INLINE) | (BigInt.one << TOKEN_INT) | (BigInt.one << TOKEN_LONG) | (BigInt.one << TOKEN_SHORT) | (BigInt.one << TOKEN_SIGNED) | (BigInt.one << TOKEN_STRUCT) | (BigInt.one << TOKEN_UNION) | (BigInt.one << TOKEN_UNSIGNED) | (BigInt.one << TOKEN_VOID) | (BigInt.one << TOKEN_BOOL) | (BigInt.one << TOKEN_Class) | (BigInt.one << TOKEN_BYCOPY) | (BigInt.one << TOKEN_BYREF) | (BigInt.one << TOKEN_ID) | (BigInt.one << TOKEN_IMP) | (BigInt.one << TOKEN_IN) | (BigInt.one << TOKEN_INOUT) | (BigInt.one << TOKEN_ONEWAY) | (BigInt.one << TOKEN_OUT) | (BigInt.one << TOKEN_PROTOCOL_) | (BigInt.one << TOKEN_SEL) | (BigInt.one << TOKEN_SELF) | (BigInt.one << TOKEN_SUPER))) != BigInt.zero) || ((((_la - 81)) & ~0x3f) == 0 && ((BigInt.one << (_la - 81)) & ((BigInt.one << (TOKEN_ATOMIC - 81)) | (BigInt.one << (TOKEN_NONATOMIC - 81)) | (BigInt.one << (TOKEN_RETAIN - 81)) | (BigInt.one << (TOKEN_AUTORELEASING_QUALIFIER - 81)) | (BigInt.one << (TOKEN_BLOCK - 81)) | (BigInt.one << (TOKEN_BRIDGE - 81)) | (BigInt.one << (TOKEN_BRIDGE_RETAINED - 81)) | (BigInt.one << (TOKEN_BRIDGE_TRANSFER - 81)) | (BigInt.one << (TOKEN_COVARIANT - 81)) | (BigInt.one << (TOKEN_CONTRAVARIANT - 81)) | (BigInt.one << (TOKEN_DEPRECATED - 81)) | (BigInt.one << (TOKEN_KINDOF - 81)) | (BigInt.one << (TOKEN_TYPEOF - 81)) | (BigInt.one << (TOKEN_UNUSED - 81)) | (BigInt.one << (TOKEN_NULL_UNSPECIFIED - 81)) | (BigInt.one << (TOKEN_NULLABLE - 81)) | (BigInt.one << (TOKEN_NONNULL - 81)) | (BigInt.one << (TOKEN_NULL_RESETTABLE - 81)) | (BigInt.one << (TOKEN_NS_INLINE - 81)) | (BigInt.one << (TOKEN_NS_ENUM - 81)) | (BigInt.one << (TOKEN_NS_OPTIONS - 81)) | (BigInt.one << (TOKEN_NS_CLOSED_ENUM - 81)) | (BigInt.one << (TOKEN_NS_ERROR_ENUM - 81)) | (BigInt.one << (TOKEN_ASSIGN - 81)) | (BigInt.one << (TOKEN_COPY - 81)) | (BigInt.one << (TOKEN_GETTER - 81)) | (BigInt.one << (TOKEN_SETTER - 81)) | (BigInt.one << (TOKEN_STRONG - 81)) | (BigInt.one << (TOKEN_READONLY - 81)) | (BigInt.one << (TOKEN_READWRITE - 81)) | (BigInt.one << (TOKEN_WEAK - 81)) | (BigInt.one << (TOKEN_UNSAFE_UNRETAINED - 81)) | (BigInt.one << (TOKEN_IB_OUTLET - 81)) | (BigInt.one << (TOKEN_IB_OUTLET_COLLECTION - 81)) | (BigInt.one << (TOKEN_IB_INSPECTABLE - 81)) | (BigInt.one << (TOKEN_IB_DESIGNABLE - 81)) | (BigInt.one << (TOKEN_IDENTIFIER - 81)))) != BigInt.zero)) {
        state = 710;
        typeSpecifierWithPrefixes();
        state = 715;
        errorHandler.sync(this);
        _la = tokenStream.LA(1);
        while (_la == TOKEN_COMMA) {
          state = 711;
          match(TOKEN_COMMA);
          state = 712;
          typeSpecifierWithPrefixes();
          state = 717;
          errorHandler.sync(this);
          _la = tokenStream.LA(1);
        }
      }

      state = 720;
      match(TOKEN_GT);
    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return _localctx;
  }

  TypeSpecifierWithPrefixesContext typeSpecifierWithPrefixes() {
    dynamic _localctx = TypeSpecifierWithPrefixesContext(context, state);
    enterRule(_localctx, 76, RULE_typeSpecifierWithPrefixes);
    try {
      int _alt;
      enterOuterAlt(_localctx, 1);
      state = 725;
      errorHandler.sync(this);
      _alt = interpreter.adaptivePredict(tokenStream, 71, context);
      while (_alt != 2 && _alt != ATN.INVALID_ALT_NUMBER) {
        if (_alt == 1) {
          state = 722;
          typePrefix(); 
        }
        state = 727;
        errorHandler.sync(this);
        _alt = interpreter.adaptivePredict(tokenStream, 71, context);
      }
      state = 728;
      typeSpecifier();
    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return _localctx;
  }

  DictionaryExpressionContext dictionaryExpression() {
    dynamic _localctx = DictionaryExpressionContext(context, state);
    enterRule(_localctx, 78, RULE_dictionaryExpression);
    int _la;
    try {
      int _alt;
      enterOuterAlt(_localctx, 1);
      state = 730;
      match(TOKEN_AT);
      state = 731;
      match(TOKEN_LBRACE);
      state = 743;
      errorHandler.sync(this);
      _la = tokenStream.LA(1);
      if ((((_la) & ~0x3f) == 0 && ((BigInt.one << _la) & ((BigInt.one << TOKEN_SIZEOF) | (BigInt.one << TOKEN_TRUE) | (BigInt.one << TOKEN_FALSE) | (BigInt.one << TOKEN_BOOL) | (BigInt.one << TOKEN_Class) | (BigInt.one << TOKEN_BYCOPY) | (BigInt.one << TOKEN_BYREF) | (BigInt.one << TOKEN_ID) | (BigInt.one << TOKEN_IMP) | (BigInt.one << TOKEN_IN) | (BigInt.one << TOKEN_INOUT) | (BigInt.one << TOKEN_NIL) | (BigInt.one << TOKEN_NO) | (BigInt.one << TOKEN_NULL) | (BigInt.one << TOKEN_ONEWAY) | (BigInt.one << TOKEN_OUT) | (BigInt.one << TOKEN_PROTOCOL_) | (BigInt.one << TOKEN_SEL) | (BigInt.one << TOKEN_SELF) | (BigInt.one << TOKEN_SUPER) | (BigInt.one << TOKEN_YES) | (BigInt.one << TOKEN_ENCODE))) != BigInt.zero) || ((((_la - 69)) & ~0x3f) == 0 && ((BigInt.one << (_la - 69)) & ((BigInt.one << (TOKEN_PROTOCOL - 69)) | (BigInt.one << (TOKEN_SELECTOR - 69)) | (BigInt.one << (TOKEN_ATOMIC - 69)) | (BigInt.one << (TOKEN_NONATOMIC - 69)) | (BigInt.one << (TOKEN_RETAIN - 69)) | (BigInt.one << (TOKEN_AUTORELEASING_QUALIFIER - 69)) | (BigInt.one << (TOKEN_BLOCK - 69)) | (BigInt.one << (TOKEN_BRIDGE_RETAINED - 69)) | (BigInt.one << (TOKEN_BRIDGE_TRANSFER - 69)) | (BigInt.one << (TOKEN_COVARIANT - 69)) | (BigInt.one << (TOKEN_CONTRAVARIANT - 69)) | (BigInt.one << (TOKEN_DEPRECATED - 69)) | (BigInt.one << (TOKEN_KINDOF - 69)) | (BigInt.one << (TOKEN_UNUSED - 69)) | (BigInt.one << (TOKEN_NULL_UNSPECIFIED - 69)) | (BigInt.one << (TOKEN_NULLABLE - 69)) | (BigInt.one << (TOKEN_NONNULL - 69)) | (BigInt.one << (TOKEN_NULL_RESETTABLE - 69)) | (BigInt.one << (TOKEN_NS_INLINE - 69)) | (BigInt.one << (TOKEN_NS_ENUM - 69)) | (BigInt.one << (TOKEN_NS_OPTIONS - 69)) | (BigInt.one << (TOKEN_ASSIGN - 69)) | (BigInt.one << (TOKEN_COPY - 69)) | (BigInt.one << (TOKEN_GETTER - 69)) | (BigInt.one << (TOKEN_SETTER - 69)) | (BigInt.one << (TOKEN_STRONG - 69)) | (BigInt.one << (TOKEN_READONLY - 69)) | (BigInt.one << (TOKEN_READWRITE - 69)) | (BigInt.one << (TOKEN_WEAK - 69)) | (BigInt.one << (TOKEN_UNSAFE_UNRETAINED - 69)) | (BigInt.one << (TOKEN_IB_OUTLET - 69)) | (BigInt.one << (TOKEN_IB_OUTLET_COLLECTION - 69)) | (BigInt.one << (TOKEN_IB_INSPECTABLE - 69)) | (BigInt.one << (TOKEN_IB_DESIGNABLE - 69)))) != BigInt.zero) || ((((_la - 136)) & ~0x3f) == 0 && ((BigInt.one << (_la - 136)) & ((BigInt.one << (TOKEN_IDENTIFIER - 136)) | (BigInt.one << (TOKEN_LP - 136)) | (BigInt.one << (TOKEN_LBRACK - 136)) | (BigInt.one << (TOKEN_AT - 136)) | (BigInt.one << (TOKEN_BANG - 136)) | (BigInt.one << (TOKEN_TILDE - 136)) | (BigInt.one << (TOKEN_INC - 136)) | (BigInt.one << (TOKEN_DEC - 136)) | (BigInt.one << (TOKEN_ADD - 136)) | (BigInt.one << (TOKEN_SUB - 136)) | (BigInt.one << (TOKEN_MUL - 136)) | (BigInt.one << (TOKEN_BITAND - 136)) | (BigInt.one << (TOKEN_BITXOR - 136)) | (BigInt.one << (TOKEN_CHARACTER_LITERAL - 136)) | (BigInt.one << (TOKEN_STRING_START - 136)) | (BigInt.one << (TOKEN_HEX_LITERAL - 136)) | (BigInt.one << (TOKEN_OCTAL_LITERAL - 136)) | (BigInt.one << (TOKEN_BINARY_LITERAL - 136)) | (BigInt.one << (TOKEN_DECIMAL_LITERAL - 136)) | (BigInt.one << (TOKEN_FLOATING_POINT_LITERAL - 136)))) != BigInt.zero)) {
        state = 732;
        dictionaryPair();
        state = 737;
        errorHandler.sync(this);
        _alt = interpreter.adaptivePredict(tokenStream, 72, context);
        while (_alt != 2 && _alt != ATN.INVALID_ALT_NUMBER) {
          if (_alt == 1) {
            state = 733;
            match(TOKEN_COMMA);
            state = 734;
            dictionaryPair(); 
          }
          state = 739;
          errorHandler.sync(this);
          _alt = interpreter.adaptivePredict(tokenStream, 72, context);
        }
        state = 741;
        errorHandler.sync(this);
        _la = tokenStream.LA(1);
        if (_la == TOKEN_COMMA) {
          state = 740;
          match(TOKEN_COMMA);
        }

      }

      state = 745;
      match(TOKEN_RBRACE);
    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return _localctx;
  }

  DictionaryPairContext dictionaryPair() {
    dynamic _localctx = DictionaryPairContext(context, state);
    enterRule(_localctx, 80, RULE_dictionaryPair);
    try {
      enterOuterAlt(_localctx, 1);
      state = 747;
      castExpression();
      state = 748;
      match(TOKEN_COLON);
      state = 749;
      expression(0);
    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return _localctx;
  }

  ArrayExpressionContext arrayExpression() {
    dynamic _localctx = ArrayExpressionContext(context, state);
    enterRule(_localctx, 82, RULE_arrayExpression);
    int _la;
    try {
      enterOuterAlt(_localctx, 1);
      state = 751;
      match(TOKEN_AT);
      state = 752;
      match(TOKEN_LBRACK);
      state = 757;
      errorHandler.sync(this);
      _la = tokenStream.LA(1);
      if ((((_la) & ~0x3f) == 0 && ((BigInt.one << _la) & ((BigInt.one << TOKEN_SIZEOF) | (BigInt.one << TOKEN_TRUE) | (BigInt.one << TOKEN_FALSE) | (BigInt.one << TOKEN_BOOL) | (BigInt.one << TOKEN_Class) | (BigInt.one << TOKEN_BYCOPY) | (BigInt.one << TOKEN_BYREF) | (BigInt.one << TOKEN_ID) | (BigInt.one << TOKEN_IMP) | (BigInt.one << TOKEN_IN) | (BigInt.one << TOKEN_INOUT) | (BigInt.one << TOKEN_NIL) | (BigInt.one << TOKEN_NO) | (BigInt.one << TOKEN_NULL) | (BigInt.one << TOKEN_ONEWAY) | (BigInt.one << TOKEN_OUT) | (BigInt.one << TOKEN_PROTOCOL_) | (BigInt.one << TOKEN_SEL) | (BigInt.one << TOKEN_SELF) | (BigInt.one << TOKEN_SUPER) | (BigInt.one << TOKEN_YES) | (BigInt.one << TOKEN_ENCODE))) != BigInt.zero) || ((((_la - 69)) & ~0x3f) == 0 && ((BigInt.one << (_la - 69)) & ((BigInt.one << (TOKEN_PROTOCOL - 69)) | (BigInt.one << (TOKEN_SELECTOR - 69)) | (BigInt.one << (TOKEN_ATOMIC - 69)) | (BigInt.one << (TOKEN_NONATOMIC - 69)) | (BigInt.one << (TOKEN_RETAIN - 69)) | (BigInt.one << (TOKEN_AUTORELEASING_QUALIFIER - 69)) | (BigInt.one << (TOKEN_BLOCK - 69)) | (BigInt.one << (TOKEN_BRIDGE_RETAINED - 69)) | (BigInt.one << (TOKEN_BRIDGE_TRANSFER - 69)) | (BigInt.one << (TOKEN_COVARIANT - 69)) | (BigInt.one << (TOKEN_CONTRAVARIANT - 69)) | (BigInt.one << (TOKEN_DEPRECATED - 69)) | (BigInt.one << (TOKEN_KINDOF - 69)) | (BigInt.one << (TOKEN_UNUSED - 69)) | (BigInt.one << (TOKEN_NULL_UNSPECIFIED - 69)) | (BigInt.one << (TOKEN_NULLABLE - 69)) | (BigInt.one << (TOKEN_NONNULL - 69)) | (BigInt.one << (TOKEN_NULL_RESETTABLE - 69)) | (BigInt.one << (TOKEN_NS_INLINE - 69)) | (BigInt.one << (TOKEN_NS_ENUM - 69)) | (BigInt.one << (TOKEN_NS_OPTIONS - 69)) | (BigInt.one << (TOKEN_ASSIGN - 69)) | (BigInt.one << (TOKEN_COPY - 69)) | (BigInt.one << (TOKEN_GETTER - 69)) | (BigInt.one << (TOKEN_SETTER - 69)) | (BigInt.one << (TOKEN_STRONG - 69)) | (BigInt.one << (TOKEN_READONLY - 69)) | (BigInt.one << (TOKEN_READWRITE - 69)) | (BigInt.one << (TOKEN_WEAK - 69)) | (BigInt.one << (TOKEN_UNSAFE_UNRETAINED - 69)) | (BigInt.one << (TOKEN_IB_OUTLET - 69)) | (BigInt.one << (TOKEN_IB_OUTLET_COLLECTION - 69)) | (BigInt.one << (TOKEN_IB_INSPECTABLE - 69)) | (BigInt.one << (TOKEN_IB_DESIGNABLE - 69)))) != BigInt.zero) || ((((_la - 136)) & ~0x3f) == 0 && ((BigInt.one << (_la - 136)) & ((BigInt.one << (TOKEN_IDENTIFIER - 136)) | (BigInt.one << (TOKEN_LP - 136)) | (BigInt.one << (TOKEN_LBRACK - 136)) | (BigInt.one << (TOKEN_AT - 136)) | (BigInt.one << (TOKEN_BANG - 136)) | (BigInt.one << (TOKEN_TILDE - 136)) | (BigInt.one << (TOKEN_INC - 136)) | (BigInt.one << (TOKEN_DEC - 136)) | (BigInt.one << (TOKEN_ADD - 136)) | (BigInt.one << (TOKEN_SUB - 136)) | (BigInt.one << (TOKEN_MUL - 136)) | (BigInt.one << (TOKEN_BITAND - 136)) | (BigInt.one << (TOKEN_BITXOR - 136)) | (BigInt.one << (TOKEN_CHARACTER_LITERAL - 136)) | (BigInt.one << (TOKEN_STRING_START - 136)) | (BigInt.one << (TOKEN_HEX_LITERAL - 136)) | (BigInt.one << (TOKEN_OCTAL_LITERAL - 136)) | (BigInt.one << (TOKEN_BINARY_LITERAL - 136)) | (BigInt.one << (TOKEN_DECIMAL_LITERAL - 136)) | (BigInt.one << (TOKEN_FLOATING_POINT_LITERAL - 136)))) != BigInt.zero)) {
        state = 753;
        expressions();
        state = 755;
        errorHandler.sync(this);
        _la = tokenStream.LA(1);
        if (_la == TOKEN_COMMA) {
          state = 754;
          match(TOKEN_COMMA);
        }

      }

      state = 759;
      match(TOKEN_RBRACK);
    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return _localctx;
  }

  BoxExpressionContext boxExpression() {
    dynamic _localctx = BoxExpressionContext(context, state);
    enterRule(_localctx, 84, RULE_boxExpression);
    try {
      state = 771;
      errorHandler.sync(this);
      switch (interpreter.adaptivePredict(tokenStream, 78, context)) {
      case 1:
        enterOuterAlt(_localctx, 1);
        state = 761;
        match(TOKEN_AT);
        state = 762;
        match(TOKEN_LP);
        state = 763;
        expression(0);
        state = 764;
        match(TOKEN_RP);
        break;
      case 2:
        enterOuterAlt(_localctx, 2);
        state = 766;
        match(TOKEN_AT);
        state = 769;
        errorHandler.sync(this);
        switch (tokenStream.LA(1)) {
        case TOKEN_TRUE:
        case TOKEN_FALSE:
        case TOKEN_NIL:
        case TOKEN_NO:
        case TOKEN_NULL:
        case TOKEN_YES:
        case TOKEN_ADD:
        case TOKEN_SUB:
        case TOKEN_CHARACTER_LITERAL:
        case TOKEN_HEX_LITERAL:
        case TOKEN_OCTAL_LITERAL:
        case TOKEN_BINARY_LITERAL:
        case TOKEN_DECIMAL_LITERAL:
        case TOKEN_FLOATING_POINT_LITERAL:
          state = 767;
          constant();
          break;
        case TOKEN_BOOL:
        case TOKEN_Class:
        case TOKEN_BYCOPY:
        case TOKEN_BYREF:
        case TOKEN_ID:
        case TOKEN_IMP:
        case TOKEN_IN:
        case TOKEN_INOUT:
        case TOKEN_ONEWAY:
        case TOKEN_OUT:
        case TOKEN_PROTOCOL_:
        case TOKEN_SEL:
        case TOKEN_SELF:
        case TOKEN_SUPER:
        case TOKEN_ATOMIC:
        case TOKEN_NONATOMIC:
        case TOKEN_RETAIN:
        case TOKEN_AUTORELEASING_QUALIFIER:
        case TOKEN_BLOCK:
        case TOKEN_BRIDGE_RETAINED:
        case TOKEN_BRIDGE_TRANSFER:
        case TOKEN_COVARIANT:
        case TOKEN_CONTRAVARIANT:
        case TOKEN_DEPRECATED:
        case TOKEN_KINDOF:
        case TOKEN_UNUSED:
        case TOKEN_NULL_UNSPECIFIED:
        case TOKEN_NULLABLE:
        case TOKEN_NONNULL:
        case TOKEN_NULL_RESETTABLE:
        case TOKEN_NS_INLINE:
        case TOKEN_NS_ENUM:
        case TOKEN_NS_OPTIONS:
        case TOKEN_ASSIGN:
        case TOKEN_COPY:
        case TOKEN_GETTER:
        case TOKEN_SETTER:
        case TOKEN_STRONG:
        case TOKEN_READONLY:
        case TOKEN_READWRITE:
        case TOKEN_WEAK:
        case TOKEN_UNSAFE_UNRETAINED:
        case TOKEN_IB_OUTLET:
        case TOKEN_IB_OUTLET_COLLECTION:
        case TOKEN_IB_INSPECTABLE:
        case TOKEN_IB_DESIGNABLE:
        case TOKEN_IDENTIFIER:
          state = 768;
          identifier();
          break;
        default:
          throw NoViableAltException(this);
        }
        break;
      }
    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return _localctx;
  }

  BlockParametersContext blockParameters() {
    dynamic _localctx = BlockParametersContext(context, state);
    enterRule(_localctx, 86, RULE_blockParameters);
    int _la;
    try {
      enterOuterAlt(_localctx, 1);
      state = 773;
      match(TOKEN_LP);
      state = 785;
      errorHandler.sync(this);
      _la = tokenStream.LA(1);
      if ((((_la) & ~0x3f) == 0 && ((BigInt.one << _la) & ((BigInt.one << TOKEN_AUTO) | (BigInt.one << TOKEN_CHAR) | (BigInt.one << TOKEN_CONST) | (BigInt.one << TOKEN_DOUBLE) | (BigInt.one << TOKEN_ENUM) | (BigInt.one << TOKEN_EXTERN) | (BigInt.one << TOKEN_FLOAT) | (BigInt.one << TOKEN_INLINE) | (BigInt.one << TOKEN_INT) | (BigInt.one << TOKEN_LONG) | (BigInt.one << TOKEN_REGISTER) | (BigInt.one << TOKEN_RESTRICT) | (BigInt.one << TOKEN_SHORT) | (BigInt.one << TOKEN_SIGNED) | (BigInt.one << TOKEN_STATIC) | (BigInt.one << TOKEN_STRUCT) | (BigInt.one << TOKEN_UNION) | (BigInt.one << TOKEN_UNSIGNED) | (BigInt.one << TOKEN_VOID) | (BigInt.one << TOKEN_VOLATILE) | (BigInt.one << TOKEN_BOOL) | (BigInt.one << TOKEN_Class) | (BigInt.one << TOKEN_BYCOPY) | (BigInt.one << TOKEN_BYREF) | (BigInt.one << TOKEN_ID) | (BigInt.one << TOKEN_IMP) | (BigInt.one << TOKEN_IN) | (BigInt.one << TOKEN_INOUT) | (BigInt.one << TOKEN_ONEWAY) | (BigInt.one << TOKEN_OUT) | (BigInt.one << TOKEN_PROTOCOL_) | (BigInt.one << TOKEN_SEL) | (BigInt.one << TOKEN_SELF) | (BigInt.one << TOKEN_SUPER))) != BigInt.zero) || ((((_la - 81)) & ~0x3f) == 0 && ((BigInt.one << (_la - 81)) & ((BigInt.one << (TOKEN_ATOMIC - 81)) | (BigInt.one << (TOKEN_NONATOMIC - 81)) | (BigInt.one << (TOKEN_RETAIN - 81)) | (BigInt.one << (TOKEN_ATTRIBUTE - 81)) | (BigInt.one << (TOKEN_AUTORELEASING_QUALIFIER - 81)) | (BigInt.one << (TOKEN_BLOCK - 81)) | (BigInt.one << (TOKEN_BRIDGE - 81)) | (BigInt.one << (TOKEN_BRIDGE_RETAINED - 81)) | (BigInt.one << (TOKEN_BRIDGE_TRANSFER - 81)) | (BigInt.one << (TOKEN_COVARIANT - 81)) | (BigInt.one << (TOKEN_CONTRAVARIANT - 81)) | (BigInt.one << (TOKEN_DEPRECATED - 81)) | (BigInt.one << (TOKEN_KINDOF - 81)) | (BigInt.one << (TOKEN_STRONG_QUALIFIER - 81)) | (BigInt.one << (TOKEN_TYPEOF - 81)) | (BigInt.one << (TOKEN_UNSAFE_UNRETAINED_QUALIFIER - 81)) | (BigInt.one << (TOKEN_UNUSED - 81)) | (BigInt.one << (TOKEN_WEAK_QUALIFIER - 81)) | (BigInt.one << (TOKEN_NULL_UNSPECIFIED - 81)) | (BigInt.one << (TOKEN_NULLABLE - 81)) | (BigInt.one << (TOKEN_NONNULL - 81)) | (BigInt.one << (TOKEN_NULL_RESETTABLE - 81)) | (BigInt.one << (TOKEN_NS_INLINE - 81)) | (BigInt.one << (TOKEN_NS_ENUM - 81)) | (BigInt.one << (TOKEN_NS_OPTIONS - 81)) | (BigInt.one << (TOKEN_NS_CLOSED_ENUM - 81)) | (BigInt.one << (TOKEN_NS_ERROR_ENUM - 81)) | (BigInt.one << (TOKEN_ASSIGN - 81)) | (BigInt.one << (TOKEN_COPY - 81)) | (BigInt.one << (TOKEN_GETTER - 81)) | (BigInt.one << (TOKEN_SETTER - 81)) | (BigInt.one << (TOKEN_STRONG - 81)) | (BigInt.one << (TOKEN_READONLY - 81)) | (BigInt.one << (TOKEN_READWRITE - 81)) | (BigInt.one << (TOKEN_WEAK - 81)) | (BigInt.one << (TOKEN_UNSAFE_UNRETAINED - 81)) | (BigInt.one << (TOKEN_IB_OUTLET - 81)) | (BigInt.one << (TOKEN_IB_OUTLET_COLLECTION - 81)) | (BigInt.one << (TOKEN_IB_INSPECTABLE - 81)) | (BigInt.one << (TOKEN_IB_DESIGNABLE - 81)) | (BigInt.one << (TOKEN_IDENTIFIER - 81)) | (BigInt.one << (TOKEN_LP - 81)))) != BigInt.zero)) {
        state = 776;
        errorHandler.sync(this);
        switch (interpreter.adaptivePredict(tokenStream, 79, context)) {
        case 1:
          state = 774;
          _localctx._typeVariableDeclaratorOrName = typeVariableDeclaratorOrName();
          _localctx.types.add(_localctx._typeVariableDeclaratorOrName);
          break;
        case 2:
          state = 775;
          match(TOKEN_VOID);
          break;
        }
        state = 782;
        errorHandler.sync(this);
        _la = tokenStream.LA(1);
        while (_la == TOKEN_COMMA) {
          state = 778;
          match(TOKEN_COMMA);
          state = 779;
          _localctx._typeVariableDeclaratorOrName = typeVariableDeclaratorOrName();
          _localctx.types.add(_localctx._typeVariableDeclaratorOrName);
          state = 784;
          errorHandler.sync(this);
          _la = tokenStream.LA(1);
        }
      }

      state = 787;
      match(TOKEN_RP);
    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return _localctx;
  }

  TypeVariableDeclaratorOrNameContext typeVariableDeclaratorOrName() {
    dynamic _localctx = TypeVariableDeclaratorOrNameContext(context, state);
    enterRule(_localctx, 88, RULE_typeVariableDeclaratorOrName);
    try {
      state = 791;
      errorHandler.sync(this);
      switch (interpreter.adaptivePredict(tokenStream, 82, context)) {
      case 1:
        enterOuterAlt(_localctx, 1);
        state = 789;
        typeVariableDeclarator();
        break;
      case 2:
        enterOuterAlt(_localctx, 2);
        state = 790;
        typeName();
        break;
      }
    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return _localctx;
  }

  BlockExpressionContext blockExpression() {
    dynamic _localctx = BlockExpressionContext(context, state);
    enterRule(_localctx, 90, RULE_blockExpression);
    int _la;
    try {
      enterOuterAlt(_localctx, 1);
      state = 793;
      match(TOKEN_BITXOR);
      state = 795;
      errorHandler.sync(this);
      switch (interpreter.adaptivePredict(tokenStream, 83, context)) {
      case 1:
        state = 794;
        typeSpecifier();
        break;
      }
      state = 798;
      errorHandler.sync(this);
      _la = tokenStream.LA(1);
      if (((((_la - 99)) & ~0x3f) == 0 && ((BigInt.one << (_la - 99)) & ((BigInt.one << (TOKEN_NULL_UNSPECIFIED - 99)) | (BigInt.one << (TOKEN_NULLABLE - 99)) | (BigInt.one << (TOKEN_NONNULL - 99)) | (BigInt.one << (TOKEN_NULL_RESETTABLE - 99)))) != BigInt.zero)) {
        state = 797;
        nullabilitySpecifier();
      }

      state = 801;
      errorHandler.sync(this);
      _la = tokenStream.LA(1);
      if (_la == TOKEN_LP) {
        state = 800;
        blockParameters();
      }

      state = 803;
      compoundStatement();
    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return _localctx;
  }

  MessageExpressionContext messageExpression() {
    dynamic _localctx = MessageExpressionContext(context, state);
    enterRule(_localctx, 92, RULE_messageExpression);
    try {
      enterOuterAlt(_localctx, 1);
      state = 805;
      match(TOKEN_LBRACK);
      state = 806;
      receiver();
      state = 807;
      messageSelector();
      state = 808;
      match(TOKEN_RBRACK);
    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return _localctx;
  }

  ReceiverContext receiver() {
    dynamic _localctx = ReceiverContext(context, state);
    enterRule(_localctx, 94, RULE_receiver);
    try {
      state = 812;
      errorHandler.sync(this);
      switch (interpreter.adaptivePredict(tokenStream, 86, context)) {
      case 1:
        enterOuterAlt(_localctx, 1);
        state = 810;
        expression(0);
        break;
      case 2:
        enterOuterAlt(_localctx, 2);
        state = 811;
        typeSpecifier();
        break;
      }
    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return _localctx;
  }

  MessageSelectorContext messageSelector() {
    dynamic _localctx = MessageSelectorContext(context, state);
    enterRule(_localctx, 96, RULE_messageSelector);
    int _la;
    try {
      state = 820;
      errorHandler.sync(this);
      switch (interpreter.adaptivePredict(tokenStream, 88, context)) {
      case 1:
        enterOuterAlt(_localctx, 1);
        state = 814;
        selector();
        break;
      case 2:
        enterOuterAlt(_localctx, 2);
        state = 816; 
        errorHandler.sync(this);
        _la = tokenStream.LA(1);
        do {
          state = 815;
          keywordArgument();
          state = 818; 
          errorHandler.sync(this);
          _la = tokenStream.LA(1);
        } while ((((_la) & ~0x3f) == 0 && ((BigInt.one << _la) & ((BigInt.one << TOKEN_RETURN) | (BigInt.one << TOKEN_BOOL) | (BigInt.one << TOKEN_Class) | (BigInt.one << TOKEN_BYCOPY) | (BigInt.one << TOKEN_BYREF) | (BigInt.one << TOKEN_ID) | (BigInt.one << TOKEN_IMP) | (BigInt.one << TOKEN_IN) | (BigInt.one << TOKEN_INOUT) | (BigInt.one << TOKEN_ONEWAY) | (BigInt.one << TOKEN_OUT) | (BigInt.one << TOKEN_PROTOCOL_) | (BigInt.one << TOKEN_SEL) | (BigInt.one << TOKEN_SELF) | (BigInt.one << TOKEN_SUPER))) != BigInt.zero) || ((((_la - 81)) & ~0x3f) == 0 && ((BigInt.one << (_la - 81)) & ((BigInt.one << (TOKEN_ATOMIC - 81)) | (BigInt.one << (TOKEN_NONATOMIC - 81)) | (BigInt.one << (TOKEN_RETAIN - 81)) | (BigInt.one << (TOKEN_AUTORELEASING_QUALIFIER - 81)) | (BigInt.one << (TOKEN_BLOCK - 81)) | (BigInt.one << (TOKEN_BRIDGE_RETAINED - 81)) | (BigInt.one << (TOKEN_BRIDGE_TRANSFER - 81)) | (BigInt.one << (TOKEN_COVARIANT - 81)) | (BigInt.one << (TOKEN_CONTRAVARIANT - 81)) | (BigInt.one << (TOKEN_DEPRECATED - 81)) | (BigInt.one << (TOKEN_KINDOF - 81)) | (BigInt.one << (TOKEN_UNUSED - 81)) | (BigInt.one << (TOKEN_NULL_UNSPECIFIED - 81)) | (BigInt.one << (TOKEN_NULLABLE - 81)) | (BigInt.one << (TOKEN_NONNULL - 81)) | (BigInt.one << (TOKEN_NULL_RESETTABLE - 81)) | (BigInt.one << (TOKEN_NS_INLINE - 81)) | (BigInt.one << (TOKEN_NS_ENUM - 81)) | (BigInt.one << (TOKEN_NS_OPTIONS - 81)) | (BigInt.one << (TOKEN_ASSIGN - 81)) | (BigInt.one << (TOKEN_COPY - 81)) | (BigInt.one << (TOKEN_GETTER - 81)) | (BigInt.one << (TOKEN_SETTER - 81)) | (BigInt.one << (TOKEN_STRONG - 81)) | (BigInt.one << (TOKEN_READONLY - 81)) | (BigInt.one << (TOKEN_READWRITE - 81)) | (BigInt.one << (TOKEN_WEAK - 81)) | (BigInt.one << (TOKEN_UNSAFE_UNRETAINED - 81)) | (BigInt.one << (TOKEN_IB_OUTLET - 81)) | (BigInt.one << (TOKEN_IB_OUTLET_COLLECTION - 81)) | (BigInt.one << (TOKEN_IB_INSPECTABLE - 81)) | (BigInt.one << (TOKEN_IB_DESIGNABLE - 81)) | (BigInt.one << (TOKEN_IDENTIFIER - 81)))) != BigInt.zero) || _la == TOKEN_COLON);
        break;
      }
    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return _localctx;
  }

  KeywordArgumentContext keywordArgument() {
    dynamic _localctx = KeywordArgumentContext(context, state);
    enterRule(_localctx, 98, RULE_keywordArgument);
    int _la;
    try {
      enterOuterAlt(_localctx, 1);
      state = 823;
      errorHandler.sync(this);
      _la = tokenStream.LA(1);
      if ((((_la) & ~0x3f) == 0 && ((BigInt.one << _la) & ((BigInt.one << TOKEN_RETURN) | (BigInt.one << TOKEN_BOOL) | (BigInt.one << TOKEN_Class) | (BigInt.one << TOKEN_BYCOPY) | (BigInt.one << TOKEN_BYREF) | (BigInt.one << TOKEN_ID) | (BigInt.one << TOKEN_IMP) | (BigInt.one << TOKEN_IN) | (BigInt.one << TOKEN_INOUT) | (BigInt.one << TOKEN_ONEWAY) | (BigInt.one << TOKEN_OUT) | (BigInt.one << TOKEN_PROTOCOL_) | (BigInt.one << TOKEN_SEL) | (BigInt.one << TOKEN_SELF) | (BigInt.one << TOKEN_SUPER))) != BigInt.zero) || ((((_la - 81)) & ~0x3f) == 0 && ((BigInt.one << (_la - 81)) & ((BigInt.one << (TOKEN_ATOMIC - 81)) | (BigInt.one << (TOKEN_NONATOMIC - 81)) | (BigInt.one << (TOKEN_RETAIN - 81)) | (BigInt.one << (TOKEN_AUTORELEASING_QUALIFIER - 81)) | (BigInt.one << (TOKEN_BLOCK - 81)) | (BigInt.one << (TOKEN_BRIDGE_RETAINED - 81)) | (BigInt.one << (TOKEN_BRIDGE_TRANSFER - 81)) | (BigInt.one << (TOKEN_COVARIANT - 81)) | (BigInt.one << (TOKEN_CONTRAVARIANT - 81)) | (BigInt.one << (TOKEN_DEPRECATED - 81)) | (BigInt.one << (TOKEN_KINDOF - 81)) | (BigInt.one << (TOKEN_UNUSED - 81)) | (BigInt.one << (TOKEN_NULL_UNSPECIFIED - 81)) | (BigInt.one << (TOKEN_NULLABLE - 81)) | (BigInt.one << (TOKEN_NONNULL - 81)) | (BigInt.one << (TOKEN_NULL_RESETTABLE - 81)) | (BigInt.one << (TOKEN_NS_INLINE - 81)) | (BigInt.one << (TOKEN_NS_ENUM - 81)) | (BigInt.one << (TOKEN_NS_OPTIONS - 81)) | (BigInt.one << (TOKEN_ASSIGN - 81)) | (BigInt.one << (TOKEN_COPY - 81)) | (BigInt.one << (TOKEN_GETTER - 81)) | (BigInt.one << (TOKEN_SETTER - 81)) | (BigInt.one << (TOKEN_STRONG - 81)) | (BigInt.one << (TOKEN_READONLY - 81)) | (BigInt.one << (TOKEN_READWRITE - 81)) | (BigInt.one << (TOKEN_WEAK - 81)) | (BigInt.one << (TOKEN_UNSAFE_UNRETAINED - 81)) | (BigInt.one << (TOKEN_IB_OUTLET - 81)) | (BigInt.one << (TOKEN_IB_OUTLET_COLLECTION - 81)) | (BigInt.one << (TOKEN_IB_INSPECTABLE - 81)) | (BigInt.one << (TOKEN_IB_DESIGNABLE - 81)) | (BigInt.one << (TOKEN_IDENTIFIER - 81)))) != BigInt.zero)) {
        state = 822;
        selector();
      }

      state = 825;
      match(TOKEN_COLON);
      state = 826;
      keywordArgumentType();
      state = 831;
      errorHandler.sync(this);
      _la = tokenStream.LA(1);
      while (_la == TOKEN_COMMA) {
        state = 827;
        match(TOKEN_COMMA);
        state = 828;
        keywordArgumentType();
        state = 833;
        errorHandler.sync(this);
        _la = tokenStream.LA(1);
      }
    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return _localctx;
  }

  KeywordArgumentTypeContext keywordArgumentType() {
    dynamic _localctx = KeywordArgumentTypeContext(context, state);
    enterRule(_localctx, 100, RULE_keywordArgumentType);
    int _la;
    try {
      enterOuterAlt(_localctx, 1);
      state = 834;
      expressions();
      state = 836;
      errorHandler.sync(this);
      switch (interpreter.adaptivePredict(tokenStream, 91, context)) {
      case 1:
        state = 835;
        nullabilitySpecifier();
        break;
      }
      state = 842;
      errorHandler.sync(this);
      _la = tokenStream.LA(1);
      if (_la == TOKEN_LBRACE) {
        state = 838;
        match(TOKEN_LBRACE);
        state = 839;
        initializerList();
        state = 840;
        match(TOKEN_RBRACE);
      }

    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return _localctx;
  }

  SelectorExpressionContext selectorExpression() {
    dynamic _localctx = SelectorExpressionContext(context, state);
    enterRule(_localctx, 102, RULE_selectorExpression);
    try {
      enterOuterAlt(_localctx, 1);
      state = 844;
      match(TOKEN_SELECTOR);
      state = 845;
      match(TOKEN_LP);
      state = 846;
      selectorName();
      state = 847;
      match(TOKEN_RP);
    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return _localctx;
  }

  SelectorNameContext selectorName() {
    dynamic _localctx = SelectorNameContext(context, state);
    enterRule(_localctx, 104, RULE_selectorName);
    int _la;
    try {
      state = 858;
      errorHandler.sync(this);
      switch (interpreter.adaptivePredict(tokenStream, 95, context)) {
      case 1:
        enterOuterAlt(_localctx, 1);
        state = 849;
        selector();
        break;
      case 2:
        enterOuterAlt(_localctx, 2);
        state = 854; 
        errorHandler.sync(this);
        _la = tokenStream.LA(1);
        do {
          state = 851;
          errorHandler.sync(this);
          _la = tokenStream.LA(1);
          if ((((_la) & ~0x3f) == 0 && ((BigInt.one << _la) & ((BigInt.one << TOKEN_RETURN) | (BigInt.one << TOKEN_BOOL) | (BigInt.one << TOKEN_Class) | (BigInt.one << TOKEN_BYCOPY) | (BigInt.one << TOKEN_BYREF) | (BigInt.one << TOKEN_ID) | (BigInt.one << TOKEN_IMP) | (BigInt.one << TOKEN_IN) | (BigInt.one << TOKEN_INOUT) | (BigInt.one << TOKEN_ONEWAY) | (BigInt.one << TOKEN_OUT) | (BigInt.one << TOKEN_PROTOCOL_) | (BigInt.one << TOKEN_SEL) | (BigInt.one << TOKEN_SELF) | (BigInt.one << TOKEN_SUPER))) != BigInt.zero) || ((((_la - 81)) & ~0x3f) == 0 && ((BigInt.one << (_la - 81)) & ((BigInt.one << (TOKEN_ATOMIC - 81)) | (BigInt.one << (TOKEN_NONATOMIC - 81)) | (BigInt.one << (TOKEN_RETAIN - 81)) | (BigInt.one << (TOKEN_AUTORELEASING_QUALIFIER - 81)) | (BigInt.one << (TOKEN_BLOCK - 81)) | (BigInt.one << (TOKEN_BRIDGE_RETAINED - 81)) | (BigInt.one << (TOKEN_BRIDGE_TRANSFER - 81)) | (BigInt.one << (TOKEN_COVARIANT - 81)) | (BigInt.one << (TOKEN_CONTRAVARIANT - 81)) | (BigInt.one << (TOKEN_DEPRECATED - 81)) | (BigInt.one << (TOKEN_KINDOF - 81)) | (BigInt.one << (TOKEN_UNUSED - 81)) | (BigInt.one << (TOKEN_NULL_UNSPECIFIED - 81)) | (BigInt.one << (TOKEN_NULLABLE - 81)) | (BigInt.one << (TOKEN_NONNULL - 81)) | (BigInt.one << (TOKEN_NULL_RESETTABLE - 81)) | (BigInt.one << (TOKEN_NS_INLINE - 81)) | (BigInt.one << (TOKEN_NS_ENUM - 81)) | (BigInt.one << (TOKEN_NS_OPTIONS - 81)) | (BigInt.one << (TOKEN_ASSIGN - 81)) | (BigInt.one << (TOKEN_COPY - 81)) | (BigInt.one << (TOKEN_GETTER - 81)) | (BigInt.one << (TOKEN_SETTER - 81)) | (BigInt.one << (TOKEN_STRONG - 81)) | (BigInt.one << (TOKEN_READONLY - 81)) | (BigInt.one << (TOKEN_READWRITE - 81)) | (BigInt.one << (TOKEN_WEAK - 81)) | (BigInt.one << (TOKEN_UNSAFE_UNRETAINED - 81)) | (BigInt.one << (TOKEN_IB_OUTLET - 81)) | (BigInt.one << (TOKEN_IB_OUTLET_COLLECTION - 81)) | (BigInt.one << (TOKEN_IB_INSPECTABLE - 81)) | (BigInt.one << (TOKEN_IB_DESIGNABLE - 81)) | (BigInt.one << (TOKEN_IDENTIFIER - 81)))) != BigInt.zero)) {
            state = 850;
            selector();
          }

          state = 853;
          match(TOKEN_COLON);
          state = 856; 
          errorHandler.sync(this);
          _la = tokenStream.LA(1);
        } while ((((_la) & ~0x3f) == 0 && ((BigInt.one << _la) & ((BigInt.one << TOKEN_RETURN) | (BigInt.one << TOKEN_BOOL) | (BigInt.one << TOKEN_Class) | (BigInt.one << TOKEN_BYCOPY) | (BigInt.one << TOKEN_BYREF) | (BigInt.one << TOKEN_ID) | (BigInt.one << TOKEN_IMP) | (BigInt.one << TOKEN_IN) | (BigInt.one << TOKEN_INOUT) | (BigInt.one << TOKEN_ONEWAY) | (BigInt.one << TOKEN_OUT) | (BigInt.one << TOKEN_PROTOCOL_) | (BigInt.one << TOKEN_SEL) | (BigInt.one << TOKEN_SELF) | (BigInt.one << TOKEN_SUPER))) != BigInt.zero) || ((((_la - 81)) & ~0x3f) == 0 && ((BigInt.one << (_la - 81)) & ((BigInt.one << (TOKEN_ATOMIC - 81)) | (BigInt.one << (TOKEN_NONATOMIC - 81)) | (BigInt.one << (TOKEN_RETAIN - 81)) | (BigInt.one << (TOKEN_AUTORELEASING_QUALIFIER - 81)) | (BigInt.one << (TOKEN_BLOCK - 81)) | (BigInt.one << (TOKEN_BRIDGE_RETAINED - 81)) | (BigInt.one << (TOKEN_BRIDGE_TRANSFER - 81)) | (BigInt.one << (TOKEN_COVARIANT - 81)) | (BigInt.one << (TOKEN_CONTRAVARIANT - 81)) | (BigInt.one << (TOKEN_DEPRECATED - 81)) | (BigInt.one << (TOKEN_KINDOF - 81)) | (BigInt.one << (TOKEN_UNUSED - 81)) | (BigInt.one << (TOKEN_NULL_UNSPECIFIED - 81)) | (BigInt.one << (TOKEN_NULLABLE - 81)) | (BigInt.one << (TOKEN_NONNULL - 81)) | (BigInt.one << (TOKEN_NULL_RESETTABLE - 81)) | (BigInt.one << (TOKEN_NS_INLINE - 81)) | (BigInt.one << (TOKEN_NS_ENUM - 81)) | (BigInt.one << (TOKEN_NS_OPTIONS - 81)) | (BigInt.one << (TOKEN_ASSIGN - 81)) | (BigInt.one << (TOKEN_COPY - 81)) | (BigInt.one << (TOKEN_GETTER - 81)) | (BigInt.one << (TOKEN_SETTER - 81)) | (BigInt.one << (TOKEN_STRONG - 81)) | (BigInt.one << (TOKEN_READONLY - 81)) | (BigInt.one << (TOKEN_READWRITE - 81)) | (BigInt.one << (TOKEN_WEAK - 81)) | (BigInt.one << (TOKEN_UNSAFE_UNRETAINED - 81)) | (BigInt.one << (TOKEN_IB_OUTLET - 81)) | (BigInt.one << (TOKEN_IB_OUTLET_COLLECTION - 81)) | (BigInt.one << (TOKEN_IB_INSPECTABLE - 81)) | (BigInt.one << (TOKEN_IB_DESIGNABLE - 81)) | (BigInt.one << (TOKEN_IDENTIFIER - 81)))) != BigInt.zero) || _la == TOKEN_COLON);
        break;
      }
    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return _localctx;
  }

  ProtocolExpressionContext protocolExpression() {
    dynamic _localctx = ProtocolExpressionContext(context, state);
    enterRule(_localctx, 106, RULE_protocolExpression);
    try {
      enterOuterAlt(_localctx, 1);
      state = 860;
      match(TOKEN_PROTOCOL);
      state = 861;
      match(TOKEN_LP);
      state = 862;
      protocolName();
      state = 863;
      match(TOKEN_RP);
    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return _localctx;
  }

  EncodeExpressionContext encodeExpression() {
    dynamic _localctx = EncodeExpressionContext(context, state);
    enterRule(_localctx, 108, RULE_encodeExpression);
    try {
      enterOuterAlt(_localctx, 1);
      state = 865;
      match(TOKEN_ENCODE);
      state = 866;
      match(TOKEN_LP);
      state = 867;
      typeName();
      state = 868;
      match(TOKEN_RP);
    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return _localctx;
  }

  TypeVariableDeclaratorContext typeVariableDeclarator() {
    dynamic _localctx = TypeVariableDeclaratorContext(context, state);
    enterRule(_localctx, 110, RULE_typeVariableDeclarator);
    try {
      enterOuterAlt(_localctx, 1);
      state = 870;
      declarationSpecifiers();
      state = 871;
      declarator();
    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return _localctx;
  }

  ThrowStatementContext throwStatement() {
    dynamic _localctx = ThrowStatementContext(context, state);
    enterRule(_localctx, 112, RULE_throwStatement);
    try {
      state = 880;
      errorHandler.sync(this);
      switch (interpreter.adaptivePredict(tokenStream, 96, context)) {
      case 1:
        enterOuterAlt(_localctx, 1);
        state = 873;
        match(TOKEN_THROW);
        state = 874;
        match(TOKEN_LP);
        state = 875;
        identifier();
        state = 876;
        match(TOKEN_RP);
        break;
      case 2:
        enterOuterAlt(_localctx, 2);
        state = 878;
        match(TOKEN_THROW);
        state = 879;
        expression(0);
        break;
      }
    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return _localctx;
  }

  TryBlockContext tryBlock() {
    dynamic _localctx = TryBlockContext(context, state);
    enterRule(_localctx, 114, RULE_tryBlock);
    int _la;
    try {
      enterOuterAlt(_localctx, 1);
      state = 882;
      match(TOKEN_TRY);
      state = 883;
      _localctx.tryStatement = compoundStatement();
      state = 887;
      errorHandler.sync(this);
      _la = tokenStream.LA(1);
      while (_la == TOKEN_CATCH) {
        state = 884;
        catchStatement();
        state = 889;
        errorHandler.sync(this);
        _la = tokenStream.LA(1);
      }
      state = 892;
      errorHandler.sync(this);
      _la = tokenStream.LA(1);
      if (_la == TOKEN_FINALLY) {
        state = 890;
        match(TOKEN_FINALLY);
        state = 891;
        _localctx.finallyStatement = compoundStatement();
      }

    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return _localctx;
  }

  CatchStatementContext catchStatement() {
    dynamic _localctx = CatchStatementContext(context, state);
    enterRule(_localctx, 116, RULE_catchStatement);
    try {
      enterOuterAlt(_localctx, 1);
      state = 894;
      match(TOKEN_CATCH);
      state = 895;
      match(TOKEN_LP);
      state = 896;
      typeVariableDeclarator();
      state = 897;
      match(TOKEN_RP);
      state = 898;
      compoundStatement();
    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return _localctx;
  }

  SynchronizedStatementContext synchronizedStatement() {
    dynamic _localctx = SynchronizedStatementContext(context, state);
    enterRule(_localctx, 118, RULE_synchronizedStatement);
    try {
      enterOuterAlt(_localctx, 1);
      state = 900;
      match(TOKEN_SYNCHRONIZED);
      state = 901;
      match(TOKEN_LP);
      state = 902;
      expression(0);
      state = 903;
      match(TOKEN_RP);
      state = 904;
      compoundStatement();
    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return _localctx;
  }

  AutoreleaseStatementContext autoreleaseStatement() {
    dynamic _localctx = AutoreleaseStatementContext(context, state);
    enterRule(_localctx, 120, RULE_autoreleaseStatement);
    try {
      enterOuterAlt(_localctx, 1);
      state = 906;
      match(TOKEN_AUTORELEASEPOOL);
      state = 907;
      compoundStatement();
    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return _localctx;
  }

  FunctionDeclarationContext functionDeclaration() {
    dynamic _localctx = FunctionDeclarationContext(context, state);
    enterRule(_localctx, 122, RULE_functionDeclaration);
    int _la;
    try {
      enterOuterAlt(_localctx, 1);
      state = 909;
      functionSignature();
      state = 914;
      errorHandler.sync(this);
      _la = tokenStream.LA(1);
      while ((((_la) & ~0x3f) == 0 && ((BigInt.one << _la) & ((BigInt.one << TOKEN_BOOL) | (BigInt.one << TOKEN_Class) | (BigInt.one << TOKEN_BYCOPY) | (BigInt.one << TOKEN_BYREF) | (BigInt.one << TOKEN_ID) | (BigInt.one << TOKEN_IMP) | (BigInt.one << TOKEN_IN) | (BigInt.one << TOKEN_INOUT) | (BigInt.one << TOKEN_ONEWAY) | (BigInt.one << TOKEN_OUT) | (BigInt.one << TOKEN_PROTOCOL_) | (BigInt.one << TOKEN_SEL) | (BigInt.one << TOKEN_SELF) | (BigInt.one << TOKEN_SUPER))) != BigInt.zero) || ((((_la - 81)) & ~0x3f) == 0 && ((BigInt.one << (_la - 81)) & ((BigInt.one << (TOKEN_ATOMIC - 81)) | (BigInt.one << (TOKEN_NONATOMIC - 81)) | (BigInt.one << (TOKEN_RETAIN - 81)) | (BigInt.one << (TOKEN_ATTRIBUTE - 81)) | (BigInt.one << (TOKEN_AUTORELEASING_QUALIFIER - 81)) | (BigInt.one << (TOKEN_BLOCK - 81)) | (BigInt.one << (TOKEN_BRIDGE_RETAINED - 81)) | (BigInt.one << (TOKEN_BRIDGE_TRANSFER - 81)) | (BigInt.one << (TOKEN_COVARIANT - 81)) | (BigInt.one << (TOKEN_CONTRAVARIANT - 81)) | (BigInt.one << (TOKEN_DEPRECATED - 81)) | (BigInt.one << (TOKEN_KINDOF - 81)) | (BigInt.one << (TOKEN_UNUSED - 81)) | (BigInt.one << (TOKEN_NULL_UNSPECIFIED - 81)) | (BigInt.one << (TOKEN_NULLABLE - 81)) | (BigInt.one << (TOKEN_NONNULL - 81)) | (BigInt.one << (TOKEN_NULL_RESETTABLE - 81)) | (BigInt.one << (TOKEN_NS_INLINE - 81)) | (BigInt.one << (TOKEN_NS_ENUM - 81)) | (BigInt.one << (TOKEN_NS_OPTIONS - 81)) | (BigInt.one << (TOKEN_ASSIGN - 81)) | (BigInt.one << (TOKEN_COPY - 81)) | (BigInt.one << (TOKEN_GETTER - 81)) | (BigInt.one << (TOKEN_SETTER - 81)) | (BigInt.one << (TOKEN_STRONG - 81)) | (BigInt.one << (TOKEN_READONLY - 81)) | (BigInt.one << (TOKEN_READWRITE - 81)) | (BigInt.one << (TOKEN_WEAK - 81)) | (BigInt.one << (TOKEN_UNSAFE_UNRETAINED - 81)) | (BigInt.one << (TOKEN_IB_OUTLET - 81)) | (BigInt.one << (TOKEN_IB_OUTLET_COLLECTION - 81)) | (BigInt.one << (TOKEN_IB_INSPECTABLE - 81)) | (BigInt.one << (TOKEN_IB_DESIGNABLE - 81)) | (BigInt.one << (TOKEN_IDENTIFIER - 81)))) != BigInt.zero)) {
        state = 912;
        errorHandler.sync(this);
        switch (tokenStream.LA(1)) {
        case TOKEN_BOOL:
        case TOKEN_Class:
        case TOKEN_BYCOPY:
        case TOKEN_BYREF:
        case TOKEN_ID:
        case TOKEN_IMP:
        case TOKEN_IN:
        case TOKEN_INOUT:
        case TOKEN_ONEWAY:
        case TOKEN_OUT:
        case TOKEN_PROTOCOL_:
        case TOKEN_SEL:
        case TOKEN_SELF:
        case TOKEN_SUPER:
        case TOKEN_ATOMIC:
        case TOKEN_NONATOMIC:
        case TOKEN_RETAIN:
        case TOKEN_AUTORELEASING_QUALIFIER:
        case TOKEN_BLOCK:
        case TOKEN_BRIDGE_RETAINED:
        case TOKEN_BRIDGE_TRANSFER:
        case TOKEN_COVARIANT:
        case TOKEN_CONTRAVARIANT:
        case TOKEN_DEPRECATED:
        case TOKEN_KINDOF:
        case TOKEN_UNUSED:
        case TOKEN_NULL_UNSPECIFIED:
        case TOKEN_NULLABLE:
        case TOKEN_NONNULL:
        case TOKEN_NULL_RESETTABLE:
        case TOKEN_NS_INLINE:
        case TOKEN_NS_ENUM:
        case TOKEN_NS_OPTIONS:
        case TOKEN_ASSIGN:
        case TOKEN_COPY:
        case TOKEN_GETTER:
        case TOKEN_SETTER:
        case TOKEN_STRONG:
        case TOKEN_READONLY:
        case TOKEN_READWRITE:
        case TOKEN_WEAK:
        case TOKEN_UNSAFE_UNRETAINED:
        case TOKEN_IB_OUTLET:
        case TOKEN_IB_OUTLET_COLLECTION:
        case TOKEN_IB_INSPECTABLE:
        case TOKEN_IB_DESIGNABLE:
        case TOKEN_IDENTIFIER:
          state = 910;
          macro();
          break;
        case TOKEN_ATTRIBUTE:
          state = 911;
          attributeSpecifier();
          break;
        default:
          throw NoViableAltException(this);
        }
        state = 916;
        errorHandler.sync(this);
        _la = tokenStream.LA(1);
      }
      state = 917;
      match(TOKEN_SEMI);
    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return _localctx;
  }

  FunctionDefinitionContext functionDefinition() {
    dynamic _localctx = FunctionDefinitionContext(context, state);
    enterRule(_localctx, 124, RULE_functionDefinition);
    int _la;
    try {
      enterOuterAlt(_localctx, 1);
      state = 919;
      functionSignature();
      state = 924;
      errorHandler.sync(this);
      _la = tokenStream.LA(1);
      while ((((_la) & ~0x3f) == 0 && ((BigInt.one << _la) & ((BigInt.one << TOKEN_BOOL) | (BigInt.one << TOKEN_Class) | (BigInt.one << TOKEN_BYCOPY) | (BigInt.one << TOKEN_BYREF) | (BigInt.one << TOKEN_ID) | (BigInt.one << TOKEN_IMP) | (BigInt.one << TOKEN_IN) | (BigInt.one << TOKEN_INOUT) | (BigInt.one << TOKEN_ONEWAY) | (BigInt.one << TOKEN_OUT) | (BigInt.one << TOKEN_PROTOCOL_) | (BigInt.one << TOKEN_SEL) | (BigInt.one << TOKEN_SELF) | (BigInt.one << TOKEN_SUPER))) != BigInt.zero) || ((((_la - 81)) & ~0x3f) == 0 && ((BigInt.one << (_la - 81)) & ((BigInt.one << (TOKEN_ATOMIC - 81)) | (BigInt.one << (TOKEN_NONATOMIC - 81)) | (BigInt.one << (TOKEN_RETAIN - 81)) | (BigInt.one << (TOKEN_ATTRIBUTE - 81)) | (BigInt.one << (TOKEN_AUTORELEASING_QUALIFIER - 81)) | (BigInt.one << (TOKEN_BLOCK - 81)) | (BigInt.one << (TOKEN_BRIDGE_RETAINED - 81)) | (BigInt.one << (TOKEN_BRIDGE_TRANSFER - 81)) | (BigInt.one << (TOKEN_COVARIANT - 81)) | (BigInt.one << (TOKEN_CONTRAVARIANT - 81)) | (BigInt.one << (TOKEN_DEPRECATED - 81)) | (BigInt.one << (TOKEN_KINDOF - 81)) | (BigInt.one << (TOKEN_UNUSED - 81)) | (BigInt.one << (TOKEN_NULL_UNSPECIFIED - 81)) | (BigInt.one << (TOKEN_NULLABLE - 81)) | (BigInt.one << (TOKEN_NONNULL - 81)) | (BigInt.one << (TOKEN_NULL_RESETTABLE - 81)) | (BigInt.one << (TOKEN_NS_INLINE - 81)) | (BigInt.one << (TOKEN_NS_ENUM - 81)) | (BigInt.one << (TOKEN_NS_OPTIONS - 81)) | (BigInt.one << (TOKEN_ASSIGN - 81)) | (BigInt.one << (TOKEN_COPY - 81)) | (BigInt.one << (TOKEN_GETTER - 81)) | (BigInt.one << (TOKEN_SETTER - 81)) | (BigInt.one << (TOKEN_STRONG - 81)) | (BigInt.one << (TOKEN_READONLY - 81)) | (BigInt.one << (TOKEN_READWRITE - 81)) | (BigInt.one << (TOKEN_WEAK - 81)) | (BigInt.one << (TOKEN_UNSAFE_UNRETAINED - 81)) | (BigInt.one << (TOKEN_IB_OUTLET - 81)) | (BigInt.one << (TOKEN_IB_OUTLET_COLLECTION - 81)) | (BigInt.one << (TOKEN_IB_INSPECTABLE - 81)) | (BigInt.one << (TOKEN_IB_DESIGNABLE - 81)) | (BigInt.one << (TOKEN_IDENTIFIER - 81)))) != BigInt.zero)) {
        state = 922;
        errorHandler.sync(this);
        switch (tokenStream.LA(1)) {
        case TOKEN_BOOL:
        case TOKEN_Class:
        case TOKEN_BYCOPY:
        case TOKEN_BYREF:
        case TOKEN_ID:
        case TOKEN_IMP:
        case TOKEN_IN:
        case TOKEN_INOUT:
        case TOKEN_ONEWAY:
        case TOKEN_OUT:
        case TOKEN_PROTOCOL_:
        case TOKEN_SEL:
        case TOKEN_SELF:
        case TOKEN_SUPER:
        case TOKEN_ATOMIC:
        case TOKEN_NONATOMIC:
        case TOKEN_RETAIN:
        case TOKEN_AUTORELEASING_QUALIFIER:
        case TOKEN_BLOCK:
        case TOKEN_BRIDGE_RETAINED:
        case TOKEN_BRIDGE_TRANSFER:
        case TOKEN_COVARIANT:
        case TOKEN_CONTRAVARIANT:
        case TOKEN_DEPRECATED:
        case TOKEN_KINDOF:
        case TOKEN_UNUSED:
        case TOKEN_NULL_UNSPECIFIED:
        case TOKEN_NULLABLE:
        case TOKEN_NONNULL:
        case TOKEN_NULL_RESETTABLE:
        case TOKEN_NS_INLINE:
        case TOKEN_NS_ENUM:
        case TOKEN_NS_OPTIONS:
        case TOKEN_ASSIGN:
        case TOKEN_COPY:
        case TOKEN_GETTER:
        case TOKEN_SETTER:
        case TOKEN_STRONG:
        case TOKEN_READONLY:
        case TOKEN_READWRITE:
        case TOKEN_WEAK:
        case TOKEN_UNSAFE_UNRETAINED:
        case TOKEN_IB_OUTLET:
        case TOKEN_IB_OUTLET_COLLECTION:
        case TOKEN_IB_INSPECTABLE:
        case TOKEN_IB_DESIGNABLE:
        case TOKEN_IDENTIFIER:
          state = 920;
          macro();
          break;
        case TOKEN_ATTRIBUTE:
          state = 921;
          attributeSpecifier();
          break;
        default:
          throw NoViableAltException(this);
        }
        state = 926;
        errorHandler.sync(this);
        _la = tokenStream.LA(1);
      }
      state = 927;
      compoundStatement();
    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return _localctx;
  }

  FunctionSignatureContext functionSignature() {
    dynamic _localctx = FunctionSignatureContext(context, state);
    enterRule(_localctx, 126, RULE_functionSignature);
    int _la;
    try {
      enterOuterAlt(_localctx, 1);
      state = 930;
      errorHandler.sync(this);
      switch (interpreter.adaptivePredict(tokenStream, 103, context)) {
      case 1:
        state = 929;
        declarationSpecifiers();
        break;
      }
      state = 932;
      identifier();

      state = 933;
      match(TOKEN_LP);
      state = 935;
      errorHandler.sync(this);
      _la = tokenStream.LA(1);
      if ((((_la) & ~0x3f) == 0 && ((BigInt.one << _la) & ((BigInt.one << TOKEN_AUTO) | (BigInt.one << TOKEN_CHAR) | (BigInt.one << TOKEN_CONST) | (BigInt.one << TOKEN_DOUBLE) | (BigInt.one << TOKEN_ENUM) | (BigInt.one << TOKEN_EXTERN) | (BigInt.one << TOKEN_FLOAT) | (BigInt.one << TOKEN_INLINE) | (BigInt.one << TOKEN_INT) | (BigInt.one << TOKEN_LONG) | (BigInt.one << TOKEN_REGISTER) | (BigInt.one << TOKEN_RESTRICT) | (BigInt.one << TOKEN_SHORT) | (BigInt.one << TOKEN_SIGNED) | (BigInt.one << TOKEN_STATIC) | (BigInt.one << TOKEN_STRUCT) | (BigInt.one << TOKEN_UNION) | (BigInt.one << TOKEN_UNSIGNED) | (BigInt.one << TOKEN_VOID) | (BigInt.one << TOKEN_VOLATILE) | (BigInt.one << TOKEN_BOOL) | (BigInt.one << TOKEN_Class) | (BigInt.one << TOKEN_BYCOPY) | (BigInt.one << TOKEN_BYREF) | (BigInt.one << TOKEN_ID) | (BigInt.one << TOKEN_IMP) | (BigInt.one << TOKEN_IN) | (BigInt.one << TOKEN_INOUT) | (BigInt.one << TOKEN_ONEWAY) | (BigInt.one << TOKEN_OUT) | (BigInt.one << TOKEN_PROTOCOL_) | (BigInt.one << TOKEN_SEL) | (BigInt.one << TOKEN_SELF) | (BigInt.one << TOKEN_SUPER))) != BigInt.zero) || ((((_la - 81)) & ~0x3f) == 0 && ((BigInt.one << (_la - 81)) & ((BigInt.one << (TOKEN_ATOMIC - 81)) | (BigInt.one << (TOKEN_NONATOMIC - 81)) | (BigInt.one << (TOKEN_RETAIN - 81)) | (BigInt.one << (TOKEN_ATTRIBUTE - 81)) | (BigInt.one << (TOKEN_AUTORELEASING_QUALIFIER - 81)) | (BigInt.one << (TOKEN_BLOCK - 81)) | (BigInt.one << (TOKEN_BRIDGE - 81)) | (BigInt.one << (TOKEN_BRIDGE_RETAINED - 81)) | (BigInt.one << (TOKEN_BRIDGE_TRANSFER - 81)) | (BigInt.one << (TOKEN_COVARIANT - 81)) | (BigInt.one << (TOKEN_CONTRAVARIANT - 81)) | (BigInt.one << (TOKEN_DEPRECATED - 81)) | (BigInt.one << (TOKEN_KINDOF - 81)) | (BigInt.one << (TOKEN_STRONG_QUALIFIER - 81)) | (BigInt.one << (TOKEN_TYPEOF - 81)) | (BigInt.one << (TOKEN_UNSAFE_UNRETAINED_QUALIFIER - 81)) | (BigInt.one << (TOKEN_UNUSED - 81)) | (BigInt.one << (TOKEN_WEAK_QUALIFIER - 81)) | (BigInt.one << (TOKEN_NULL_UNSPECIFIED - 81)) | (BigInt.one << (TOKEN_NULLABLE - 81)) | (BigInt.one << (TOKEN_NONNULL - 81)) | (BigInt.one << (TOKEN_NULL_RESETTABLE - 81)) | (BigInt.one << (TOKEN_NS_INLINE - 81)) | (BigInt.one << (TOKEN_NS_ENUM - 81)) | (BigInt.one << (TOKEN_NS_OPTIONS - 81)) | (BigInt.one << (TOKEN_NS_CLOSED_ENUM - 81)) | (BigInt.one << (TOKEN_NS_ERROR_ENUM - 81)) | (BigInt.one << (TOKEN_ASSIGN - 81)) | (BigInt.one << (TOKEN_COPY - 81)) | (BigInt.one << (TOKEN_GETTER - 81)) | (BigInt.one << (TOKEN_SETTER - 81)) | (BigInt.one << (TOKEN_STRONG - 81)) | (BigInt.one << (TOKEN_READONLY - 81)) | (BigInt.one << (TOKEN_READWRITE - 81)) | (BigInt.one << (TOKEN_WEAK - 81)) | (BigInt.one << (TOKEN_UNSAFE_UNRETAINED - 81)) | (BigInt.one << (TOKEN_IB_OUTLET - 81)) | (BigInt.one << (TOKEN_IB_OUTLET_COLLECTION - 81)) | (BigInt.one << (TOKEN_IB_INSPECTABLE - 81)) | (BigInt.one << (TOKEN_IB_DESIGNABLE - 81)) | (BigInt.one << (TOKEN_IDENTIFIER - 81)) | (BigInt.one << (TOKEN_LP - 81)))) != BigInt.zero)) {
        state = 934;
        parameterList();
      }

      state = 937;
      match(TOKEN_RP);
      state = 940;
      errorHandler.sync(this);
      switch (interpreter.adaptivePredict(tokenStream, 105, context)) {
      case 1:
        state = 939;
        attributeSpecifier();
        break;
      }
    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return _localctx;
  }

  FunctionPointerContext functionPointer() {
    dynamic _localctx = FunctionPointerContext(context, state);
    enterRule(_localctx, 128, RULE_functionPointer);
    int _la;
    try {
      enterOuterAlt(_localctx, 1);
      state = 943;
      errorHandler.sync(this);
      _la = tokenStream.LA(1);
      if ((((_la) & ~0x3f) == 0 && ((BigInt.one << _la) & ((BigInt.one << TOKEN_AUTO) | (BigInt.one << TOKEN_CHAR) | (BigInt.one << TOKEN_CONST) | (BigInt.one << TOKEN_DOUBLE) | (BigInt.one << TOKEN_ENUM) | (BigInt.one << TOKEN_EXTERN) | (BigInt.one << TOKEN_FLOAT) | (BigInt.one << TOKEN_INLINE) | (BigInt.one << TOKEN_INT) | (BigInt.one << TOKEN_LONG) | (BigInt.one << TOKEN_REGISTER) | (BigInt.one << TOKEN_RESTRICT) | (BigInt.one << TOKEN_SHORT) | (BigInt.one << TOKEN_SIGNED) | (BigInt.one << TOKEN_STATIC) | (BigInt.one << TOKEN_STRUCT) | (BigInt.one << TOKEN_UNION) | (BigInt.one << TOKEN_UNSIGNED) | (BigInt.one << TOKEN_VOID) | (BigInt.one << TOKEN_VOLATILE) | (BigInt.one << TOKEN_BOOL) | (BigInt.one << TOKEN_Class) | (BigInt.one << TOKEN_BYCOPY) | (BigInt.one << TOKEN_BYREF) | (BigInt.one << TOKEN_ID) | (BigInt.one << TOKEN_IMP) | (BigInt.one << TOKEN_IN) | (BigInt.one << TOKEN_INOUT) | (BigInt.one << TOKEN_ONEWAY) | (BigInt.one << TOKEN_OUT) | (BigInt.one << TOKEN_PROTOCOL_) | (BigInt.one << TOKEN_SEL) | (BigInt.one << TOKEN_SELF) | (BigInt.one << TOKEN_SUPER))) != BigInt.zero) || ((((_la - 81)) & ~0x3f) == 0 && ((BigInt.one << (_la - 81)) & ((BigInt.one << (TOKEN_ATOMIC - 81)) | (BigInt.one << (TOKEN_NONATOMIC - 81)) | (BigInt.one << (TOKEN_RETAIN - 81)) | (BigInt.one << (TOKEN_ATTRIBUTE - 81)) | (BigInt.one << (TOKEN_AUTORELEASING_QUALIFIER - 81)) | (BigInt.one << (TOKEN_BLOCK - 81)) | (BigInt.one << (TOKEN_BRIDGE - 81)) | (BigInt.one << (TOKEN_BRIDGE_RETAINED - 81)) | (BigInt.one << (TOKEN_BRIDGE_TRANSFER - 81)) | (BigInt.one << (TOKEN_COVARIANT - 81)) | (BigInt.one << (TOKEN_CONTRAVARIANT - 81)) | (BigInt.one << (TOKEN_DEPRECATED - 81)) | (BigInt.one << (TOKEN_KINDOF - 81)) | (BigInt.one << (TOKEN_STRONG_QUALIFIER - 81)) | (BigInt.one << (TOKEN_TYPEOF - 81)) | (BigInt.one << (TOKEN_UNSAFE_UNRETAINED_QUALIFIER - 81)) | (BigInt.one << (TOKEN_UNUSED - 81)) | (BigInt.one << (TOKEN_WEAK_QUALIFIER - 81)) | (BigInt.one << (TOKEN_NULL_UNSPECIFIED - 81)) | (BigInt.one << (TOKEN_NULLABLE - 81)) | (BigInt.one << (TOKEN_NONNULL - 81)) | (BigInt.one << (TOKEN_NULL_RESETTABLE - 81)) | (BigInt.one << (TOKEN_NS_INLINE - 81)) | (BigInt.one << (TOKEN_NS_ENUM - 81)) | (BigInt.one << (TOKEN_NS_OPTIONS - 81)) | (BigInt.one << (TOKEN_NS_CLOSED_ENUM - 81)) | (BigInt.one << (TOKEN_NS_ERROR_ENUM - 81)) | (BigInt.one << (TOKEN_ASSIGN - 81)) | (BigInt.one << (TOKEN_COPY - 81)) | (BigInt.one << (TOKEN_GETTER - 81)) | (BigInt.one << (TOKEN_SETTER - 81)) | (BigInt.one << (TOKEN_STRONG - 81)) | (BigInt.one << (TOKEN_READONLY - 81)) | (BigInt.one << (TOKEN_READWRITE - 81)) | (BigInt.one << (TOKEN_WEAK - 81)) | (BigInt.one << (TOKEN_UNSAFE_UNRETAINED - 81)) | (BigInt.one << (TOKEN_IB_OUTLET - 81)) | (BigInt.one << (TOKEN_IB_OUTLET_COLLECTION - 81)) | (BigInt.one << (TOKEN_IB_INSPECTABLE - 81)) | (BigInt.one << (TOKEN_IB_DESIGNABLE - 81)) | (BigInt.one << (TOKEN_IDENTIFIER - 81)))) != BigInt.zero)) {
        state = 942;
        declarationSpecifiers();
      }

      state = 945;
      match(TOKEN_LP);
      state = 946;
      match(TOKEN_MUL);
      state = 948;
      errorHandler.sync(this);
      switch (interpreter.adaptivePredict(tokenStream, 107, context)) {
      case 1:
        state = 947;
        nullabilitySpecifier();
        break;
      }
      state = 951;
      errorHandler.sync(this);
      _la = tokenStream.LA(1);
      if ((((_la) & ~0x3f) == 0 && ((BigInt.one << _la) & ((BigInt.one << TOKEN_BOOL) | (BigInt.one << TOKEN_Class) | (BigInt.one << TOKEN_BYCOPY) | (BigInt.one << TOKEN_BYREF) | (BigInt.one << TOKEN_ID) | (BigInt.one << TOKEN_IMP) | (BigInt.one << TOKEN_IN) | (BigInt.one << TOKEN_INOUT) | (BigInt.one << TOKEN_ONEWAY) | (BigInt.one << TOKEN_OUT) | (BigInt.one << TOKEN_PROTOCOL_) | (BigInt.one << TOKEN_SEL) | (BigInt.one << TOKEN_SELF) | (BigInt.one << TOKEN_SUPER))) != BigInt.zero) || ((((_la - 81)) & ~0x3f) == 0 && ((BigInt.one << (_la - 81)) & ((BigInt.one << (TOKEN_ATOMIC - 81)) | (BigInt.one << (TOKEN_NONATOMIC - 81)) | (BigInt.one << (TOKEN_RETAIN - 81)) | (BigInt.one << (TOKEN_AUTORELEASING_QUALIFIER - 81)) | (BigInt.one << (TOKEN_BLOCK - 81)) | (BigInt.one << (TOKEN_BRIDGE_RETAINED - 81)) | (BigInt.one << (TOKEN_BRIDGE_TRANSFER - 81)) | (BigInt.one << (TOKEN_COVARIANT - 81)) | (BigInt.one << (TOKEN_CONTRAVARIANT - 81)) | (BigInt.one << (TOKEN_DEPRECATED - 81)) | (BigInt.one << (TOKEN_KINDOF - 81)) | (BigInt.one << (TOKEN_UNUSED - 81)) | (BigInt.one << (TOKEN_NULL_UNSPECIFIED - 81)) | (BigInt.one << (TOKEN_NULLABLE - 81)) | (BigInt.one << (TOKEN_NONNULL - 81)) | (BigInt.one << (TOKEN_NULL_RESETTABLE - 81)) | (BigInt.one << (TOKEN_NS_INLINE - 81)) | (BigInt.one << (TOKEN_NS_ENUM - 81)) | (BigInt.one << (TOKEN_NS_OPTIONS - 81)) | (BigInt.one << (TOKEN_ASSIGN - 81)) | (BigInt.one << (TOKEN_COPY - 81)) | (BigInt.one << (TOKEN_GETTER - 81)) | (BigInt.one << (TOKEN_SETTER - 81)) | (BigInt.one << (TOKEN_STRONG - 81)) | (BigInt.one << (TOKEN_READONLY - 81)) | (BigInt.one << (TOKEN_READWRITE - 81)) | (BigInt.one << (TOKEN_WEAK - 81)) | (BigInt.one << (TOKEN_UNSAFE_UNRETAINED - 81)) | (BigInt.one << (TOKEN_IB_OUTLET - 81)) | (BigInt.one << (TOKEN_IB_OUTLET_COLLECTION - 81)) | (BigInt.one << (TOKEN_IB_INSPECTABLE - 81)) | (BigInt.one << (TOKEN_IB_DESIGNABLE - 81)) | (BigInt.one << (TOKEN_IDENTIFIER - 81)))) != BigInt.zero)) {
        state = 950;
        _localctx.name = identifier();
      }

      state = 953;
      match(TOKEN_RP);

      state = 955;
      match(TOKEN_LP);
      state = 957;
      errorHandler.sync(this);
      _la = tokenStream.LA(1);
      if ((((_la) & ~0x3f) == 0 && ((BigInt.one << _la) & ((BigInt.one << TOKEN_AUTO) | (BigInt.one << TOKEN_CHAR) | (BigInt.one << TOKEN_CONST) | (BigInt.one << TOKEN_DOUBLE) | (BigInt.one << TOKEN_ENUM) | (BigInt.one << TOKEN_EXTERN) | (BigInt.one << TOKEN_FLOAT) | (BigInt.one << TOKEN_INLINE) | (BigInt.one << TOKEN_INT) | (BigInt.one << TOKEN_LONG) | (BigInt.one << TOKEN_REGISTER) | (BigInt.one << TOKEN_RESTRICT) | (BigInt.one << TOKEN_SHORT) | (BigInt.one << TOKEN_SIGNED) | (BigInt.one << TOKEN_STATIC) | (BigInt.one << TOKEN_STRUCT) | (BigInt.one << TOKEN_UNION) | (BigInt.one << TOKEN_UNSIGNED) | (BigInt.one << TOKEN_VOID) | (BigInt.one << TOKEN_VOLATILE) | (BigInt.one << TOKEN_BOOL) | (BigInt.one << TOKEN_Class) | (BigInt.one << TOKEN_BYCOPY) | (BigInt.one << TOKEN_BYREF) | (BigInt.one << TOKEN_ID) | (BigInt.one << TOKEN_IMP) | (BigInt.one << TOKEN_IN) | (BigInt.one << TOKEN_INOUT) | (BigInt.one << TOKEN_ONEWAY) | (BigInt.one << TOKEN_OUT) | (BigInt.one << TOKEN_PROTOCOL_) | (BigInt.one << TOKEN_SEL) | (BigInt.one << TOKEN_SELF) | (BigInt.one << TOKEN_SUPER))) != BigInt.zero) || ((((_la - 81)) & ~0x3f) == 0 && ((BigInt.one << (_la - 81)) & ((BigInt.one << (TOKEN_ATOMIC - 81)) | (BigInt.one << (TOKEN_NONATOMIC - 81)) | (BigInt.one << (TOKEN_RETAIN - 81)) | (BigInt.one << (TOKEN_ATTRIBUTE - 81)) | (BigInt.one << (TOKEN_AUTORELEASING_QUALIFIER - 81)) | (BigInt.one << (TOKEN_BLOCK - 81)) | (BigInt.one << (TOKEN_BRIDGE - 81)) | (BigInt.one << (TOKEN_BRIDGE_RETAINED - 81)) | (BigInt.one << (TOKEN_BRIDGE_TRANSFER - 81)) | (BigInt.one << (TOKEN_COVARIANT - 81)) | (BigInt.one << (TOKEN_CONTRAVARIANT - 81)) | (BigInt.one << (TOKEN_DEPRECATED - 81)) | (BigInt.one << (TOKEN_KINDOF - 81)) | (BigInt.one << (TOKEN_STRONG_QUALIFIER - 81)) | (BigInt.one << (TOKEN_TYPEOF - 81)) | (BigInt.one << (TOKEN_UNSAFE_UNRETAINED_QUALIFIER - 81)) | (BigInt.one << (TOKEN_UNUSED - 81)) | (BigInt.one << (TOKEN_WEAK_QUALIFIER - 81)) | (BigInt.one << (TOKEN_NULL_UNSPECIFIED - 81)) | (BigInt.one << (TOKEN_NULLABLE - 81)) | (BigInt.one << (TOKEN_NONNULL - 81)) | (BigInt.one << (TOKEN_NULL_RESETTABLE - 81)) | (BigInt.one << (TOKEN_NS_INLINE - 81)) | (BigInt.one << (TOKEN_NS_ENUM - 81)) | (BigInt.one << (TOKEN_NS_OPTIONS - 81)) | (BigInt.one << (TOKEN_NS_CLOSED_ENUM - 81)) | (BigInt.one << (TOKEN_NS_ERROR_ENUM - 81)) | (BigInt.one << (TOKEN_ASSIGN - 81)) | (BigInt.one << (TOKEN_COPY - 81)) | (BigInt.one << (TOKEN_GETTER - 81)) | (BigInt.one << (TOKEN_SETTER - 81)) | (BigInt.one << (TOKEN_STRONG - 81)) | (BigInt.one << (TOKEN_READONLY - 81)) | (BigInt.one << (TOKEN_READWRITE - 81)) | (BigInt.one << (TOKEN_WEAK - 81)) | (BigInt.one << (TOKEN_UNSAFE_UNRETAINED - 81)) | (BigInt.one << (TOKEN_IB_OUTLET - 81)) | (BigInt.one << (TOKEN_IB_OUTLET_COLLECTION - 81)) | (BigInt.one << (TOKEN_IB_INSPECTABLE - 81)) | (BigInt.one << (TOKEN_IB_DESIGNABLE - 81)) | (BigInt.one << (TOKEN_IDENTIFIER - 81)) | (BigInt.one << (TOKEN_LP - 81)))) != BigInt.zero)) {
        state = 956;
        parameterList();
      }

      state = 959;
      match(TOKEN_RP);
      state = 962;
      errorHandler.sync(this);
      switch (interpreter.adaptivePredict(tokenStream, 110, context)) {
      case 1:
        state = 961;
        attributeSpecifier();
        break;
      }
    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return _localctx;
  }

  AttributeContext attribute() {
    dynamic _localctx = AttributeContext(context, state);
    enterRule(_localctx, 130, RULE_attribute);
    int _la;
    try {
      enterOuterAlt(_localctx, 1);
      state = 964;
      attributeName();
      state = 966;
      errorHandler.sync(this);
      _la = tokenStream.LA(1);
      if (_la == TOKEN_LP) {
        state = 965;
        attributeParameters();
      }

    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return _localctx;
  }

  AttributeNameContext attributeName() {
    dynamic _localctx = AttributeNameContext(context, state);
    enterRule(_localctx, 132, RULE_attributeName);
    try {
      state = 970;
      errorHandler.sync(this);
      switch (tokenStream.LA(1)) {
      case TOKEN_CONST:
        enterOuterAlt(_localctx, 1);
        state = 968;
        match(TOKEN_CONST);
        break;
      case TOKEN_BOOL:
      case TOKEN_Class:
      case TOKEN_BYCOPY:
      case TOKEN_BYREF:
      case TOKEN_ID:
      case TOKEN_IMP:
      case TOKEN_IN:
      case TOKEN_INOUT:
      case TOKEN_ONEWAY:
      case TOKEN_OUT:
      case TOKEN_PROTOCOL_:
      case TOKEN_SEL:
      case TOKEN_SELF:
      case TOKEN_SUPER:
      case TOKEN_ATOMIC:
      case TOKEN_NONATOMIC:
      case TOKEN_RETAIN:
      case TOKEN_AUTORELEASING_QUALIFIER:
      case TOKEN_BLOCK:
      case TOKEN_BRIDGE_RETAINED:
      case TOKEN_BRIDGE_TRANSFER:
      case TOKEN_COVARIANT:
      case TOKEN_CONTRAVARIANT:
      case TOKEN_DEPRECATED:
      case TOKEN_KINDOF:
      case TOKEN_UNUSED:
      case TOKEN_NULL_UNSPECIFIED:
      case TOKEN_NULLABLE:
      case TOKEN_NONNULL:
      case TOKEN_NULL_RESETTABLE:
      case TOKEN_NS_INLINE:
      case TOKEN_NS_ENUM:
      case TOKEN_NS_OPTIONS:
      case TOKEN_ASSIGN:
      case TOKEN_COPY:
      case TOKEN_GETTER:
      case TOKEN_SETTER:
      case TOKEN_STRONG:
      case TOKEN_READONLY:
      case TOKEN_READWRITE:
      case TOKEN_WEAK:
      case TOKEN_UNSAFE_UNRETAINED:
      case TOKEN_IB_OUTLET:
      case TOKEN_IB_OUTLET_COLLECTION:
      case TOKEN_IB_INSPECTABLE:
      case TOKEN_IB_DESIGNABLE:
      case TOKEN_IDENTIFIER:
        enterOuterAlt(_localctx, 2);
        state = 969;
        identifier();
        break;
      default:
        throw NoViableAltException(this);
      }
    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return _localctx;
  }

  AttributeParametersContext attributeParameters() {
    dynamic _localctx = AttributeParametersContext(context, state);
    enterRule(_localctx, 134, RULE_attributeParameters);
    int _la;
    try {
      enterOuterAlt(_localctx, 1);
      state = 972;
      match(TOKEN_LP);
      state = 974;
      errorHandler.sync(this);
      _la = tokenStream.LA(1);
      if ((((_la) & ~0x3f) == 0 && ((BigInt.one << _la) & ((BigInt.one << TOKEN_CONST) | (BigInt.one << TOKEN_TRUE) | (BigInt.one << TOKEN_FALSE) | (BigInt.one << TOKEN_BOOL) | (BigInt.one << TOKEN_Class) | (BigInt.one << TOKEN_BYCOPY) | (BigInt.one << TOKEN_BYREF) | (BigInt.one << TOKEN_ID) | (BigInt.one << TOKEN_IMP) | (BigInt.one << TOKEN_IN) | (BigInt.one << TOKEN_INOUT) | (BigInt.one << TOKEN_NIL) | (BigInt.one << TOKEN_NO) | (BigInt.one << TOKEN_NULL) | (BigInt.one << TOKEN_ONEWAY) | (BigInt.one << TOKEN_OUT) | (BigInt.one << TOKEN_PROTOCOL_) | (BigInt.one << TOKEN_SEL) | (BigInt.one << TOKEN_SELF) | (BigInt.one << TOKEN_SUPER) | (BigInt.one << TOKEN_YES))) != BigInt.zero) || ((((_la - 81)) & ~0x3f) == 0 && ((BigInt.one << (_la - 81)) & ((BigInt.one << (TOKEN_ATOMIC - 81)) | (BigInt.one << (TOKEN_NONATOMIC - 81)) | (BigInt.one << (TOKEN_RETAIN - 81)) | (BigInt.one << (TOKEN_AUTORELEASING_QUALIFIER - 81)) | (BigInt.one << (TOKEN_BLOCK - 81)) | (BigInt.one << (TOKEN_BRIDGE_RETAINED - 81)) | (BigInt.one << (TOKEN_BRIDGE_TRANSFER - 81)) | (BigInt.one << (TOKEN_COVARIANT - 81)) | (BigInt.one << (TOKEN_CONTRAVARIANT - 81)) | (BigInt.one << (TOKEN_DEPRECATED - 81)) | (BigInt.one << (TOKEN_KINDOF - 81)) | (BigInt.one << (TOKEN_UNUSED - 81)) | (BigInt.one << (TOKEN_NULL_UNSPECIFIED - 81)) | (BigInt.one << (TOKEN_NULLABLE - 81)) | (BigInt.one << (TOKEN_NONNULL - 81)) | (BigInt.one << (TOKEN_NULL_RESETTABLE - 81)) | (BigInt.one << (TOKEN_NS_INLINE - 81)) | (BigInt.one << (TOKEN_NS_ENUM - 81)) | (BigInt.one << (TOKEN_NS_OPTIONS - 81)) | (BigInt.one << (TOKEN_ASSIGN - 81)) | (BigInt.one << (TOKEN_COPY - 81)) | (BigInt.one << (TOKEN_GETTER - 81)) | (BigInt.one << (TOKEN_SETTER - 81)) | (BigInt.one << (TOKEN_STRONG - 81)) | (BigInt.one << (TOKEN_READONLY - 81)) | (BigInt.one << (TOKEN_READWRITE - 81)) | (BigInt.one << (TOKEN_WEAK - 81)) | (BigInt.one << (TOKEN_UNSAFE_UNRETAINED - 81)) | (BigInt.one << (TOKEN_IB_OUTLET - 81)) | (BigInt.one << (TOKEN_IB_OUTLET_COLLECTION - 81)) | (BigInt.one << (TOKEN_IB_INSPECTABLE - 81)) | (BigInt.one << (TOKEN_IB_DESIGNABLE - 81)) | (BigInt.one << (TOKEN_IDENTIFIER - 81)))) != BigInt.zero) || ((((_la - 163)) & ~0x3f) == 0 && ((BigInt.one << (_la - 163)) & ((BigInt.one << (TOKEN_ADD - 163)) | (BigInt.one << (TOKEN_SUB - 163)) | (BigInt.one << (TOKEN_CHARACTER_LITERAL - 163)) | (BigInt.one << (TOKEN_STRING_START - 163)) | (BigInt.one << (TOKEN_HEX_LITERAL - 163)) | (BigInt.one << (TOKEN_OCTAL_LITERAL - 163)) | (BigInt.one << (TOKEN_BINARY_LITERAL - 163)) | (BigInt.one << (TOKEN_DECIMAL_LITERAL - 163)) | (BigInt.one << (TOKEN_FLOATING_POINT_LITERAL - 163)))) != BigInt.zero)) {
        state = 973;
        attributeParameterList();
      }

      state = 976;
      match(TOKEN_RP);
    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return _localctx;
  }

  AttributeParameterListContext attributeParameterList() {
    dynamic _localctx = AttributeParameterListContext(context, state);
    enterRule(_localctx, 136, RULE_attributeParameterList);
    int _la;
    try {
      enterOuterAlt(_localctx, 1);
      state = 978;
      attributeParameter();
      state = 983;
      errorHandler.sync(this);
      _la = tokenStream.LA(1);
      while (_la == TOKEN_COMMA) {
        state = 979;
        match(TOKEN_COMMA);
        state = 980;
        attributeParameter();
        state = 985;
        errorHandler.sync(this);
        _la = tokenStream.LA(1);
      }
    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return _localctx;
  }

  AttributeParameterContext attributeParameter() {
    dynamic _localctx = AttributeParameterContext(context, state);
    enterRule(_localctx, 138, RULE_attributeParameter);
    try {
      state = 990;
      errorHandler.sync(this);
      switch (interpreter.adaptivePredict(tokenStream, 115, context)) {
      case 1:
        enterOuterAlt(_localctx, 1);
        state = 986;
        attribute();
        break;
      case 2:
        enterOuterAlt(_localctx, 2);
        state = 987;
        constant();
        break;
      case 3:
        enterOuterAlt(_localctx, 3);
        state = 988;
        stringLiteral();
        break;
      case 4:
        enterOuterAlt(_localctx, 4);
        state = 989;
        attributeParameterAssignment();
        break;
      }
    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return _localctx;
  }

  AttributeParameterAssignmentContext attributeParameterAssignment() {
    dynamic _localctx = AttributeParameterAssignmentContext(context, state);
    enterRule(_localctx, 140, RULE_attributeParameterAssignment);
    try {
      enterOuterAlt(_localctx, 1);
      state = 992;
      attributeName();
      state = 993;
      match(TOKEN_ASSIGNMENT);
      state = 997;
      errorHandler.sync(this);
      switch (tokenStream.LA(1)) {
      case TOKEN_TRUE:
      case TOKEN_FALSE:
      case TOKEN_NIL:
      case TOKEN_NO:
      case TOKEN_NULL:
      case TOKEN_YES:
      case TOKEN_ADD:
      case TOKEN_SUB:
      case TOKEN_CHARACTER_LITERAL:
      case TOKEN_HEX_LITERAL:
      case TOKEN_OCTAL_LITERAL:
      case TOKEN_BINARY_LITERAL:
      case TOKEN_DECIMAL_LITERAL:
      case TOKEN_FLOATING_POINT_LITERAL:
        state = 994;
        constant();
        break;
      case TOKEN_CONST:
      case TOKEN_BOOL:
      case TOKEN_Class:
      case TOKEN_BYCOPY:
      case TOKEN_BYREF:
      case TOKEN_ID:
      case TOKEN_IMP:
      case TOKEN_IN:
      case TOKEN_INOUT:
      case TOKEN_ONEWAY:
      case TOKEN_OUT:
      case TOKEN_PROTOCOL_:
      case TOKEN_SEL:
      case TOKEN_SELF:
      case TOKEN_SUPER:
      case TOKEN_ATOMIC:
      case TOKEN_NONATOMIC:
      case TOKEN_RETAIN:
      case TOKEN_AUTORELEASING_QUALIFIER:
      case TOKEN_BLOCK:
      case TOKEN_BRIDGE_RETAINED:
      case TOKEN_BRIDGE_TRANSFER:
      case TOKEN_COVARIANT:
      case TOKEN_CONTRAVARIANT:
      case TOKEN_DEPRECATED:
      case TOKEN_KINDOF:
      case TOKEN_UNUSED:
      case TOKEN_NULL_UNSPECIFIED:
      case TOKEN_NULLABLE:
      case TOKEN_NONNULL:
      case TOKEN_NULL_RESETTABLE:
      case TOKEN_NS_INLINE:
      case TOKEN_NS_ENUM:
      case TOKEN_NS_OPTIONS:
      case TOKEN_ASSIGN:
      case TOKEN_COPY:
      case TOKEN_GETTER:
      case TOKEN_SETTER:
      case TOKEN_STRONG:
      case TOKEN_READONLY:
      case TOKEN_READWRITE:
      case TOKEN_WEAK:
      case TOKEN_UNSAFE_UNRETAINED:
      case TOKEN_IB_OUTLET:
      case TOKEN_IB_OUTLET_COLLECTION:
      case TOKEN_IB_INSPECTABLE:
      case TOKEN_IB_DESIGNABLE:
      case TOKEN_IDENTIFIER:
        state = 995;
        attributeName();
        break;
      case TOKEN_STRING_START:
        state = 996;
        stringLiteral();
        break;
      default:
        throw NoViableAltException(this);
      }
    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return _localctx;
  }

  DeclarationContext declaration() {
    dynamic _localctx = DeclarationContext(context, state);
    enterRule(_localctx, 142, RULE_declaration);
    try {
      state = 1003;
      errorHandler.sync(this);
      switch (interpreter.adaptivePredict(tokenStream, 117, context)) {
      case 1:
        enterOuterAlt(_localctx, 1);
        state = 999;
        functionCallExpression();
        break;
      case 2:
        enterOuterAlt(_localctx, 2);
        state = 1000;
        enumDeclaration();
        break;
      case 3:
        enterOuterAlt(_localctx, 3);
        state = 1001;
        varDeclaration();
        break;
      case 4:
        enterOuterAlt(_localctx, 4);
        state = 1002;
        typedefDeclaration();
        break;
      }
    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return _localctx;
  }

  FunctionCallExpressionContext functionCallExpression() {
    dynamic _localctx = FunctionCallExpressionContext(context, state);
    enterRule(_localctx, 144, RULE_functionCallExpression);
    int _la;
    try {
      enterOuterAlt(_localctx, 1);
      state = 1006;
      errorHandler.sync(this);
      _la = tokenStream.LA(1);
      if (_la == TOKEN_ATTRIBUTE) {
        state = 1005;
        attributeSpecifier();
      }

      state = 1008;
      identifier();
      state = 1010;
      errorHandler.sync(this);
      _la = tokenStream.LA(1);
      if (_la == TOKEN_ATTRIBUTE) {
        state = 1009;
        attributeSpecifier();
      }

      state = 1012;
      match(TOKEN_LP);
      state = 1013;
      directDeclarator();
      state = 1014;
      match(TOKEN_RP);
      state = 1015;
      match(TOKEN_SEMI);
    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return _localctx;
  }

  EnumDeclarationContext enumDeclaration() {
    dynamic _localctx = EnumDeclarationContext(context, state);
    enterRule(_localctx, 146, RULE_enumDeclaration);
    int _la;
    try {
      int _alt;
      enterOuterAlt(_localctx, 1);
      state = 1021;
      errorHandler.sync(this);
      _alt = interpreter.adaptivePredict(tokenStream, 121, context);
      while (_alt != 2 && _alt != ATN.INVALID_ALT_NUMBER) {
        if (_alt == 1) {
          state = 1019;
          errorHandler.sync(this);
          switch (tokenStream.LA(1)) {
          case TOKEN_BOOL:
          case TOKEN_Class:
          case TOKEN_BYCOPY:
          case TOKEN_BYREF:
          case TOKEN_ID:
          case TOKEN_IMP:
          case TOKEN_IN:
          case TOKEN_INOUT:
          case TOKEN_ONEWAY:
          case TOKEN_OUT:
          case TOKEN_PROTOCOL_:
          case TOKEN_SEL:
          case TOKEN_SELF:
          case TOKEN_SUPER:
          case TOKEN_ATOMIC:
          case TOKEN_NONATOMIC:
          case TOKEN_RETAIN:
          case TOKEN_AUTORELEASING_QUALIFIER:
          case TOKEN_BLOCK:
          case TOKEN_BRIDGE_RETAINED:
          case TOKEN_BRIDGE_TRANSFER:
          case TOKEN_COVARIANT:
          case TOKEN_CONTRAVARIANT:
          case TOKEN_DEPRECATED:
          case TOKEN_KINDOF:
          case TOKEN_UNUSED:
          case TOKEN_NULL_UNSPECIFIED:
          case TOKEN_NULLABLE:
          case TOKEN_NONNULL:
          case TOKEN_NULL_RESETTABLE:
          case TOKEN_NS_INLINE:
          case TOKEN_NS_ENUM:
          case TOKEN_NS_OPTIONS:
          case TOKEN_ASSIGN:
          case TOKEN_COPY:
          case TOKEN_GETTER:
          case TOKEN_SETTER:
          case TOKEN_STRONG:
          case TOKEN_READONLY:
          case TOKEN_READWRITE:
          case TOKEN_WEAK:
          case TOKEN_UNSAFE_UNRETAINED:
          case TOKEN_IB_OUTLET:
          case TOKEN_IB_OUTLET_COLLECTION:
          case TOKEN_IB_INSPECTABLE:
          case TOKEN_IB_DESIGNABLE:
          case TOKEN_IDENTIFIER:
            state = 1017;
            macro();
            break;
          case TOKEN_ATTRIBUTE:
            state = 1018;
            attributeSpecifier();
            break;
          default:
            throw NoViableAltException(this);
          } 
        }
        state = 1023;
        errorHandler.sync(this);
        _alt = interpreter.adaptivePredict(tokenStream, 121, context);
      }
      state = 1025;
      errorHandler.sync(this);
      _la = tokenStream.LA(1);
      if (_la == TOKEN_TYPEDEF) {
        state = 1024;
        match(TOKEN_TYPEDEF);
      }

      state = 1027;
      enumSpecifier();
      state = 1029;
      errorHandler.sync(this);
      switch (interpreter.adaptivePredict(tokenStream, 123, context)) {
      case 1:
        state = 1028;
        _localctx.name = identifier();
        break;
      }
      state = 1035;
      errorHandler.sync(this);
      _la = tokenStream.LA(1);
      while ((((_la) & ~0x3f) == 0 && ((BigInt.one << _la) & ((BigInt.one << TOKEN_BOOL) | (BigInt.one << TOKEN_Class) | (BigInt.one << TOKEN_BYCOPY) | (BigInt.one << TOKEN_BYREF) | (BigInt.one << TOKEN_ID) | (BigInt.one << TOKEN_IMP) | (BigInt.one << TOKEN_IN) | (BigInt.one << TOKEN_INOUT) | (BigInt.one << TOKEN_ONEWAY) | (BigInt.one << TOKEN_OUT) | (BigInt.one << TOKEN_PROTOCOL_) | (BigInt.one << TOKEN_SEL) | (BigInt.one << TOKEN_SELF) | (BigInt.one << TOKEN_SUPER))) != BigInt.zero) || ((((_la - 81)) & ~0x3f) == 0 && ((BigInt.one << (_la - 81)) & ((BigInt.one << (TOKEN_ATOMIC - 81)) | (BigInt.one << (TOKEN_NONATOMIC - 81)) | (BigInt.one << (TOKEN_RETAIN - 81)) | (BigInt.one << (TOKEN_ATTRIBUTE - 81)) | (BigInt.one << (TOKEN_AUTORELEASING_QUALIFIER - 81)) | (BigInt.one << (TOKEN_BLOCK - 81)) | (BigInt.one << (TOKEN_BRIDGE_RETAINED - 81)) | (BigInt.one << (TOKEN_BRIDGE_TRANSFER - 81)) | (BigInt.one << (TOKEN_COVARIANT - 81)) | (BigInt.one << (TOKEN_CONTRAVARIANT - 81)) | (BigInt.one << (TOKEN_DEPRECATED - 81)) | (BigInt.one << (TOKEN_KINDOF - 81)) | (BigInt.one << (TOKEN_UNUSED - 81)) | (BigInt.one << (TOKEN_NULL_UNSPECIFIED - 81)) | (BigInt.one << (TOKEN_NULLABLE - 81)) | (BigInt.one << (TOKEN_NONNULL - 81)) | (BigInt.one << (TOKEN_NULL_RESETTABLE - 81)) | (BigInt.one << (TOKEN_NS_INLINE - 81)) | (BigInt.one << (TOKEN_NS_ENUM - 81)) | (BigInt.one << (TOKEN_NS_OPTIONS - 81)) | (BigInt.one << (TOKEN_ASSIGN - 81)) | (BigInt.one << (TOKEN_COPY - 81)) | (BigInt.one << (TOKEN_GETTER - 81)) | (BigInt.one << (TOKEN_SETTER - 81)) | (BigInt.one << (TOKEN_STRONG - 81)) | (BigInt.one << (TOKEN_READONLY - 81)) | (BigInt.one << (TOKEN_READWRITE - 81)) | (BigInt.one << (TOKEN_WEAK - 81)) | (BigInt.one << (TOKEN_UNSAFE_UNRETAINED - 81)) | (BigInt.one << (TOKEN_IB_OUTLET - 81)) | (BigInt.one << (TOKEN_IB_OUTLET_COLLECTION - 81)) | (BigInt.one << (TOKEN_IB_INSPECTABLE - 81)) | (BigInt.one << (TOKEN_IB_DESIGNABLE - 81)) | (BigInt.one << (TOKEN_IDENTIFIER - 81)))) != BigInt.zero)) {
        state = 1033;
        errorHandler.sync(this);
        switch (tokenStream.LA(1)) {
        case TOKEN_BOOL:
        case TOKEN_Class:
        case TOKEN_BYCOPY:
        case TOKEN_BYREF:
        case TOKEN_ID:
        case TOKEN_IMP:
        case TOKEN_IN:
        case TOKEN_INOUT:
        case TOKEN_ONEWAY:
        case TOKEN_OUT:
        case TOKEN_PROTOCOL_:
        case TOKEN_SEL:
        case TOKEN_SELF:
        case TOKEN_SUPER:
        case TOKEN_ATOMIC:
        case TOKEN_NONATOMIC:
        case TOKEN_RETAIN:
        case TOKEN_AUTORELEASING_QUALIFIER:
        case TOKEN_BLOCK:
        case TOKEN_BRIDGE_RETAINED:
        case TOKEN_BRIDGE_TRANSFER:
        case TOKEN_COVARIANT:
        case TOKEN_CONTRAVARIANT:
        case TOKEN_DEPRECATED:
        case TOKEN_KINDOF:
        case TOKEN_UNUSED:
        case TOKEN_NULL_UNSPECIFIED:
        case TOKEN_NULLABLE:
        case TOKEN_NONNULL:
        case TOKEN_NULL_RESETTABLE:
        case TOKEN_NS_INLINE:
        case TOKEN_NS_ENUM:
        case TOKEN_NS_OPTIONS:
        case TOKEN_ASSIGN:
        case TOKEN_COPY:
        case TOKEN_GETTER:
        case TOKEN_SETTER:
        case TOKEN_STRONG:
        case TOKEN_READONLY:
        case TOKEN_READWRITE:
        case TOKEN_WEAK:
        case TOKEN_UNSAFE_UNRETAINED:
        case TOKEN_IB_OUTLET:
        case TOKEN_IB_OUTLET_COLLECTION:
        case TOKEN_IB_INSPECTABLE:
        case TOKEN_IB_DESIGNABLE:
        case TOKEN_IDENTIFIER:
          state = 1031;
          macro();
          break;
        case TOKEN_ATTRIBUTE:
          state = 1032;
          attributeSpecifier();
          break;
        default:
          throw NoViableAltException(this);
        }
        state = 1037;
        errorHandler.sync(this);
        _la = tokenStream.LA(1);
      }
      state = 1038;
      match(TOKEN_SEMI);
    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return _localctx;
  }

  VarDeclarationContext varDeclaration() {
    dynamic _localctx = VarDeclarationContext(context, state);
    enterRule(_localctx, 148, RULE_varDeclaration);
    int _la;
    try {
      enterOuterAlt(_localctx, 1);
      state = 1041;
      errorHandler.sync(this);
      switch (interpreter.adaptivePredict(tokenStream, 126, context)) {
      case 1:
        state = 1040;
        macro();
        break;
      }
      state = 1047;
      errorHandler.sync(this);
      switch (interpreter.adaptivePredict(tokenStream, 127, context)) {
      case 1:
        state = 1043;
        declarationSpecifiers();
        state = 1044;
        initDeclaratorList();
        break;
      case 2:
        state = 1046;
        declarationSpecifiers();
        break;
      }
      state = 1053;
      errorHandler.sync(this);
      _la = tokenStream.LA(1);
      while ((((_la) & ~0x3f) == 0 && ((BigInt.one << _la) & ((BigInt.one << TOKEN_BOOL) | (BigInt.one << TOKEN_Class) | (BigInt.one << TOKEN_BYCOPY) | (BigInt.one << TOKEN_BYREF) | (BigInt.one << TOKEN_ID) | (BigInt.one << TOKEN_IMP) | (BigInt.one << TOKEN_IN) | (BigInt.one << TOKEN_INOUT) | (BigInt.one << TOKEN_ONEWAY) | (BigInt.one << TOKEN_OUT) | (BigInt.one << TOKEN_PROTOCOL_) | (BigInt.one << TOKEN_SEL) | (BigInt.one << TOKEN_SELF) | (BigInt.one << TOKEN_SUPER))) != BigInt.zero) || ((((_la - 81)) & ~0x3f) == 0 && ((BigInt.one << (_la - 81)) & ((BigInt.one << (TOKEN_ATOMIC - 81)) | (BigInt.one << (TOKEN_NONATOMIC - 81)) | (BigInt.one << (TOKEN_RETAIN - 81)) | (BigInt.one << (TOKEN_ATTRIBUTE - 81)) | (BigInt.one << (TOKEN_AUTORELEASING_QUALIFIER - 81)) | (BigInt.one << (TOKEN_BLOCK - 81)) | (BigInt.one << (TOKEN_BRIDGE_RETAINED - 81)) | (BigInt.one << (TOKEN_BRIDGE_TRANSFER - 81)) | (BigInt.one << (TOKEN_COVARIANT - 81)) | (BigInt.one << (TOKEN_CONTRAVARIANT - 81)) | (BigInt.one << (TOKEN_DEPRECATED - 81)) | (BigInt.one << (TOKEN_KINDOF - 81)) | (BigInt.one << (TOKEN_UNUSED - 81)) | (BigInt.one << (TOKEN_NULL_UNSPECIFIED - 81)) | (BigInt.one << (TOKEN_NULLABLE - 81)) | (BigInt.one << (TOKEN_NONNULL - 81)) | (BigInt.one << (TOKEN_NULL_RESETTABLE - 81)) | (BigInt.one << (TOKEN_NS_INLINE - 81)) | (BigInt.one << (TOKEN_NS_ENUM - 81)) | (BigInt.one << (TOKEN_NS_OPTIONS - 81)) | (BigInt.one << (TOKEN_ASSIGN - 81)) | (BigInt.one << (TOKEN_COPY - 81)) | (BigInt.one << (TOKEN_GETTER - 81)) | (BigInt.one << (TOKEN_SETTER - 81)) | (BigInt.one << (TOKEN_STRONG - 81)) | (BigInt.one << (TOKEN_READONLY - 81)) | (BigInt.one << (TOKEN_READWRITE - 81)) | (BigInt.one << (TOKEN_WEAK - 81)) | (BigInt.one << (TOKEN_UNSAFE_UNRETAINED - 81)) | (BigInt.one << (TOKEN_IB_OUTLET - 81)) | (BigInt.one << (TOKEN_IB_OUTLET_COLLECTION - 81)) | (BigInt.one << (TOKEN_IB_INSPECTABLE - 81)) | (BigInt.one << (TOKEN_IB_DESIGNABLE - 81)) | (BigInt.one << (TOKEN_IDENTIFIER - 81)))) != BigInt.zero)) {
        state = 1051;
        errorHandler.sync(this);
        switch (tokenStream.LA(1)) {
        case TOKEN_BOOL:
        case TOKEN_Class:
        case TOKEN_BYCOPY:
        case TOKEN_BYREF:
        case TOKEN_ID:
        case TOKEN_IMP:
        case TOKEN_IN:
        case TOKEN_INOUT:
        case TOKEN_ONEWAY:
        case TOKEN_OUT:
        case TOKEN_PROTOCOL_:
        case TOKEN_SEL:
        case TOKEN_SELF:
        case TOKEN_SUPER:
        case TOKEN_ATOMIC:
        case TOKEN_NONATOMIC:
        case TOKEN_RETAIN:
        case TOKEN_AUTORELEASING_QUALIFIER:
        case TOKEN_BLOCK:
        case TOKEN_BRIDGE_RETAINED:
        case TOKEN_BRIDGE_TRANSFER:
        case TOKEN_COVARIANT:
        case TOKEN_CONTRAVARIANT:
        case TOKEN_DEPRECATED:
        case TOKEN_KINDOF:
        case TOKEN_UNUSED:
        case TOKEN_NULL_UNSPECIFIED:
        case TOKEN_NULLABLE:
        case TOKEN_NONNULL:
        case TOKEN_NULL_RESETTABLE:
        case TOKEN_NS_INLINE:
        case TOKEN_NS_ENUM:
        case TOKEN_NS_OPTIONS:
        case TOKEN_ASSIGN:
        case TOKEN_COPY:
        case TOKEN_GETTER:
        case TOKEN_SETTER:
        case TOKEN_STRONG:
        case TOKEN_READONLY:
        case TOKEN_READWRITE:
        case TOKEN_WEAK:
        case TOKEN_UNSAFE_UNRETAINED:
        case TOKEN_IB_OUTLET:
        case TOKEN_IB_OUTLET_COLLECTION:
        case TOKEN_IB_INSPECTABLE:
        case TOKEN_IB_DESIGNABLE:
        case TOKEN_IDENTIFIER:
          state = 1049;
          macro();
          break;
        case TOKEN_ATTRIBUTE:
          state = 1050;
          attributeSpecifier();
          break;
        default:
          throw NoViableAltException(this);
        }
        state = 1055;
        errorHandler.sync(this);
        _la = tokenStream.LA(1);
      }
      state = 1056;
      match(TOKEN_SEMI);
    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return _localctx;
  }

  TypedefDeclarationContext typedefDeclaration() {
    dynamic _localctx = TypedefDeclarationContext(context, state);
    enterRule(_localctx, 150, RULE_typedefDeclaration);
    int _la;
    try {
      enterOuterAlt(_localctx, 1);
      state = 1059;
      errorHandler.sync(this);
      _la = tokenStream.LA(1);
      if (_la == TOKEN_ATTRIBUTE) {
        state = 1058;
        attributeSpecifier();
      }

      state = 1061;
      match(TOKEN_TYPEDEF);
      state = 1071;
      errorHandler.sync(this);
      switch (interpreter.adaptivePredict(tokenStream, 131, context)) {
      case 1:
        state = 1062;
        declarationSpecifiers();
        state = 1063;
        typeDeclaratorList();
        break;
      case 2:
        state = 1065;
        declarationSpecifiers();
        break;
      case 3:
        state = 1066;
        functionPointer();
        break;
      case 4:
        state = 1067;
        functionSignature();
        break;
      case 5:
        state = 1068;
        structOrUnionSpecifier();
        state = 1069;
        identifier();
        break;
      }
      state = 1077;
      errorHandler.sync(this);
      _la = tokenStream.LA(1);
      while ((((_la) & ~0x3f) == 0 && ((BigInt.one << _la) & ((BigInt.one << TOKEN_BOOL) | (BigInt.one << TOKEN_Class) | (BigInt.one << TOKEN_BYCOPY) | (BigInt.one << TOKEN_BYREF) | (BigInt.one << TOKEN_ID) | (BigInt.one << TOKEN_IMP) | (BigInt.one << TOKEN_IN) | (BigInt.one << TOKEN_INOUT) | (BigInt.one << TOKEN_ONEWAY) | (BigInt.one << TOKEN_OUT) | (BigInt.one << TOKEN_PROTOCOL_) | (BigInt.one << TOKEN_SEL) | (BigInt.one << TOKEN_SELF) | (BigInt.one << TOKEN_SUPER))) != BigInt.zero) || ((((_la - 81)) & ~0x3f) == 0 && ((BigInt.one << (_la - 81)) & ((BigInt.one << (TOKEN_ATOMIC - 81)) | (BigInt.one << (TOKEN_NONATOMIC - 81)) | (BigInt.one << (TOKEN_RETAIN - 81)) | (BigInt.one << (TOKEN_ATTRIBUTE - 81)) | (BigInt.one << (TOKEN_AUTORELEASING_QUALIFIER - 81)) | (BigInt.one << (TOKEN_BLOCK - 81)) | (BigInt.one << (TOKEN_BRIDGE_RETAINED - 81)) | (BigInt.one << (TOKEN_BRIDGE_TRANSFER - 81)) | (BigInt.one << (TOKEN_COVARIANT - 81)) | (BigInt.one << (TOKEN_CONTRAVARIANT - 81)) | (BigInt.one << (TOKEN_DEPRECATED - 81)) | (BigInt.one << (TOKEN_KINDOF - 81)) | (BigInt.one << (TOKEN_UNUSED - 81)) | (BigInt.one << (TOKEN_NULL_UNSPECIFIED - 81)) | (BigInt.one << (TOKEN_NULLABLE - 81)) | (BigInt.one << (TOKEN_NONNULL - 81)) | (BigInt.one << (TOKEN_NULL_RESETTABLE - 81)) | (BigInt.one << (TOKEN_NS_INLINE - 81)) | (BigInt.one << (TOKEN_NS_ENUM - 81)) | (BigInt.one << (TOKEN_NS_OPTIONS - 81)) | (BigInt.one << (TOKEN_ASSIGN - 81)) | (BigInt.one << (TOKEN_COPY - 81)) | (BigInt.one << (TOKEN_GETTER - 81)) | (BigInt.one << (TOKEN_SETTER - 81)) | (BigInt.one << (TOKEN_STRONG - 81)) | (BigInt.one << (TOKEN_READONLY - 81)) | (BigInt.one << (TOKEN_READWRITE - 81)) | (BigInt.one << (TOKEN_WEAK - 81)) | (BigInt.one << (TOKEN_UNSAFE_UNRETAINED - 81)) | (BigInt.one << (TOKEN_IB_OUTLET - 81)) | (BigInt.one << (TOKEN_IB_OUTLET_COLLECTION - 81)) | (BigInt.one << (TOKEN_IB_INSPECTABLE - 81)) | (BigInt.one << (TOKEN_IB_DESIGNABLE - 81)) | (BigInt.one << (TOKEN_IDENTIFIER - 81)))) != BigInt.zero)) {
        state = 1075;
        errorHandler.sync(this);
        switch (tokenStream.LA(1)) {
        case TOKEN_BOOL:
        case TOKEN_Class:
        case TOKEN_BYCOPY:
        case TOKEN_BYREF:
        case TOKEN_ID:
        case TOKEN_IMP:
        case TOKEN_IN:
        case TOKEN_INOUT:
        case TOKEN_ONEWAY:
        case TOKEN_OUT:
        case TOKEN_PROTOCOL_:
        case TOKEN_SEL:
        case TOKEN_SELF:
        case TOKEN_SUPER:
        case TOKEN_ATOMIC:
        case TOKEN_NONATOMIC:
        case TOKEN_RETAIN:
        case TOKEN_AUTORELEASING_QUALIFIER:
        case TOKEN_BLOCK:
        case TOKEN_BRIDGE_RETAINED:
        case TOKEN_BRIDGE_TRANSFER:
        case TOKEN_COVARIANT:
        case TOKEN_CONTRAVARIANT:
        case TOKEN_DEPRECATED:
        case TOKEN_KINDOF:
        case TOKEN_UNUSED:
        case TOKEN_NULL_UNSPECIFIED:
        case TOKEN_NULLABLE:
        case TOKEN_NONNULL:
        case TOKEN_NULL_RESETTABLE:
        case TOKEN_NS_INLINE:
        case TOKEN_NS_ENUM:
        case TOKEN_NS_OPTIONS:
        case TOKEN_ASSIGN:
        case TOKEN_COPY:
        case TOKEN_GETTER:
        case TOKEN_SETTER:
        case TOKEN_STRONG:
        case TOKEN_READONLY:
        case TOKEN_READWRITE:
        case TOKEN_WEAK:
        case TOKEN_UNSAFE_UNRETAINED:
        case TOKEN_IB_OUTLET:
        case TOKEN_IB_OUTLET_COLLECTION:
        case TOKEN_IB_INSPECTABLE:
        case TOKEN_IB_DESIGNABLE:
        case TOKEN_IDENTIFIER:
          state = 1073;
          macro();
          break;
        case TOKEN_ATTRIBUTE:
          state = 1074;
          attributeSpecifier();
          break;
        default:
          throw NoViableAltException(this);
        }
        state = 1079;
        errorHandler.sync(this);
        _la = tokenStream.LA(1);
      }
      state = 1080;
      match(TOKEN_SEMI);
    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return _localctx;
  }

  TypeDeclaratorListContext typeDeclaratorList() {
    dynamic _localctx = TypeDeclaratorListContext(context, state);
    enterRule(_localctx, 152, RULE_typeDeclaratorList);
    int _la;
    try {
      enterOuterAlt(_localctx, 1);
      state = 1082;
      typeDeclarator();
      state = 1087;
      errorHandler.sync(this);
      _la = tokenStream.LA(1);
      while (_la == TOKEN_COMMA) {
        state = 1083;
        match(TOKEN_COMMA);
        state = 1084;
        typeDeclarator();
        state = 1089;
        errorHandler.sync(this);
        _la = tokenStream.LA(1);
      }
    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return _localctx;
  }

  TypeDeclaratorContext typeDeclarator() {
    dynamic _localctx = TypeDeclaratorContext(context, state);
    enterRule(_localctx, 154, RULE_typeDeclarator);
    int _la;
    try {
      enterOuterAlt(_localctx, 1);
      state = 1091;
      errorHandler.sync(this);
      _la = tokenStream.LA(1);
      if (_la == TOKEN_MUL) {
        state = 1090;
        pointer();
      }

      state = 1093;
      directDeclarator();
    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return _localctx;
  }

  CommonSpecifiersContext commonSpecifiers() {
    dynamic _localctx = CommonSpecifiersContext(context, state);
    enterRule(_localctx, 156, RULE_commonSpecifiers);
    try {
      int _alt;
      enterOuterAlt(_localctx, 1);
      state = 1100; 
      errorHandler.sync(this);
      _alt = 1;
      do {
        switch (_alt) {
        case 1:
          state = 1100;
          errorHandler.sync(this);
          switch (tokenStream.LA(1)) {
          case TOKEN_AUTORELEASING_QUALIFIER:
          case TOKEN_STRONG_QUALIFIER:
          case TOKEN_UNSAFE_UNRETAINED_QUALIFIER:
          case TOKEN_WEAK_QUALIFIER:
            state = 1095;
            arcBehaviourSpecifier();
            break;
          case TOKEN_NULL_UNSPECIFIED:
          case TOKEN_NULLABLE:
          case TOKEN_NONNULL:
          case TOKEN_NULL_RESETTABLE:
            state = 1096;
            nullabilitySpecifier();
            break;
          case TOKEN_IB_OUTLET:
          case TOKEN_IB_OUTLET_COLLECTION:
            state = 1097;
            ibOutletQualifier();
            break;
          case TOKEN_INLINE:
          case TOKEN_BLOCK:
          case TOKEN_BRIDGE:
          case TOKEN_BRIDGE_RETAINED:
          case TOKEN_BRIDGE_TRANSFER:
          case TOKEN_KINDOF:
          case TOKEN_NS_INLINE:
            state = 1098;
            typePrefix();
            break;
          case TOKEN_CONST:
          case TOKEN_RESTRICT:
          case TOKEN_VOLATILE:
          case TOKEN_BYCOPY:
          case TOKEN_BYREF:
          case TOKEN_IN:
          case TOKEN_INOUT:
          case TOKEN_ONEWAY:
          case TOKEN_OUT:
            state = 1099;
            typeQualifier();
            break;
          default:
            throw NoViableAltException(this);
          }
          break;
        default:
          throw NoViableAltException(this);
        }
        state = 1102; 
        errorHandler.sync(this);
        _alt = interpreter.adaptivePredict(tokenStream, 137, context);
      } while (_alt != 2 && _alt != ATN.INVALID_ALT_NUMBER);
    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return _localctx;
  }

  DeclarationSpecifiersContext declarationSpecifiers() {
    dynamic _localctx = DeclarationSpecifiersContext(context, state);
    enterRule(_localctx, 158, RULE_declarationSpecifiers);
    try {
      int _alt;
      enterOuterAlt(_localctx, 1);
      state = 1108; 
      errorHandler.sync(this);
      _alt = 1;
      do {
        switch (_alt) {
        case 1:
          state = 1108;
          errorHandler.sync(this);
          switch (interpreter.adaptivePredict(tokenStream, 138, context)) {
          case 1:
            state = 1104;
            storageClassSpecifier();
            break;
          case 2:
            state = 1105;
            attributeSpecifier();
            break;
          case 3:
            state = 1106;
            commonSpecifiers();
            break;
          case 4:
            state = 1107;
            typeSpecifier();
            break;
          }
          break;
        default:
          throw NoViableAltException(this);
        }
        state = 1110; 
        errorHandler.sync(this);
        _alt = interpreter.adaptivePredict(tokenStream, 139, context);
      } while (_alt != 2 && _alt != ATN.INVALID_ALT_NUMBER);
    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return _localctx;
  }

  PointerQualifierContext pointerQualifier() {
    dynamic _localctx = PointerQualifierContext(context, state);
    enterRule(_localctx, 160, RULE_pointerQualifier);
    try {
      int _alt;
      enterOuterAlt(_localctx, 1);
      state = 1115; 
      errorHandler.sync(this);
      _alt = 1;
      do {
        switch (_alt) {
        case 1:
          state = 1115;
          errorHandler.sync(this);
          switch (tokenStream.LA(1)) {
          case TOKEN_AUTO:
          case TOKEN_EXTERN:
          case TOKEN_REGISTER:
          case TOKEN_STATIC:
            state = 1112;
            storageClassSpecifier();
            break;
          case TOKEN_ATTRIBUTE:
            state = 1113;
            attributeSpecifier();
            break;
          case TOKEN_CONST:
          case TOKEN_INLINE:
          case TOKEN_RESTRICT:
          case TOKEN_VOLATILE:
          case TOKEN_BYCOPY:
          case TOKEN_BYREF:
          case TOKEN_IN:
          case TOKEN_INOUT:
          case TOKEN_ONEWAY:
          case TOKEN_OUT:
          case TOKEN_AUTORELEASING_QUALIFIER:
          case TOKEN_BLOCK:
          case TOKEN_BRIDGE:
          case TOKEN_BRIDGE_RETAINED:
          case TOKEN_BRIDGE_TRANSFER:
          case TOKEN_KINDOF:
          case TOKEN_STRONG_QUALIFIER:
          case TOKEN_UNSAFE_UNRETAINED_QUALIFIER:
          case TOKEN_WEAK_QUALIFIER:
          case TOKEN_NULL_UNSPECIFIED:
          case TOKEN_NULLABLE:
          case TOKEN_NONNULL:
          case TOKEN_NULL_RESETTABLE:
          case TOKEN_NS_INLINE:
          case TOKEN_IB_OUTLET:
          case TOKEN_IB_OUTLET_COLLECTION:
            state = 1114;
            commonSpecifiers();
            break;
          default:
            throw NoViableAltException(this);
          }
          break;
        default:
          throw NoViableAltException(this);
        }
        state = 1117; 
        errorHandler.sync(this);
        _alt = interpreter.adaptivePredict(tokenStream, 141, context);
      } while (_alt != 2 && _alt != ATN.INVALID_ALT_NUMBER);
    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return _localctx;
  }

  AttributeSpecifierContext attributeSpecifier() {
    dynamic _localctx = AttributeSpecifierContext(context, state);
    enterRule(_localctx, 162, RULE_attributeSpecifier);
    int _la;
    try {
      enterOuterAlt(_localctx, 1);
      state = 1119;
      match(TOKEN_ATTRIBUTE);
      state = 1120;
      match(TOKEN_LP);
      state = 1121;
      match(TOKEN_LP);
      state = 1122;
      attribute();
      state = 1127;
      errorHandler.sync(this);
      _la = tokenStream.LA(1);
      while (_la == TOKEN_COMMA) {
        state = 1123;
        match(TOKEN_COMMA);
        state = 1124;
        attribute();
        state = 1129;
        errorHandler.sync(this);
        _la = tokenStream.LA(1);
      }
      state = 1130;
      match(TOKEN_RP);
      state = 1131;
      match(TOKEN_RP);
    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return _localctx;
  }

  InitDeclaratorListContext initDeclaratorList() {
    dynamic _localctx = InitDeclaratorListContext(context, state);
    enterRule(_localctx, 164, RULE_initDeclaratorList);
    int _la;
    try {
      enterOuterAlt(_localctx, 1);
      state = 1133;
      initDeclarator();
      state = 1138;
      errorHandler.sync(this);
      _la = tokenStream.LA(1);
      while (_la == TOKEN_COMMA) {
        state = 1134;
        match(TOKEN_COMMA);
        state = 1135;
        initDeclarator();
        state = 1140;
        errorHandler.sync(this);
        _la = tokenStream.LA(1);
      }
    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return _localctx;
  }

  InitDeclaratorContext initDeclarator() {
    dynamic _localctx = InitDeclaratorContext(context, state);
    enterRule(_localctx, 166, RULE_initDeclarator);
    int _la;
    try {
      int _alt;
      enterOuterAlt(_localctx, 1);
      state = 1141;
      declarator();
      state = 1146;
      errorHandler.sync(this);
      _alt = interpreter.adaptivePredict(tokenStream, 145, context);
      while (_alt != 2 && _alt != ATN.INVALID_ALT_NUMBER) {
        if (_alt == 1) {
          state = 1144;
          errorHandler.sync(this);
          switch (tokenStream.LA(1)) {
          case TOKEN_BOOL:
          case TOKEN_Class:
          case TOKEN_BYCOPY:
          case TOKEN_BYREF:
          case TOKEN_ID:
          case TOKEN_IMP:
          case TOKEN_IN:
          case TOKEN_INOUT:
          case TOKEN_ONEWAY:
          case TOKEN_OUT:
          case TOKEN_PROTOCOL_:
          case TOKEN_SEL:
          case TOKEN_SELF:
          case TOKEN_SUPER:
          case TOKEN_ATOMIC:
          case TOKEN_NONATOMIC:
          case TOKEN_RETAIN:
          case TOKEN_AUTORELEASING_QUALIFIER:
          case TOKEN_BLOCK:
          case TOKEN_BRIDGE_RETAINED:
          case TOKEN_BRIDGE_TRANSFER:
          case TOKEN_COVARIANT:
          case TOKEN_CONTRAVARIANT:
          case TOKEN_DEPRECATED:
          case TOKEN_KINDOF:
          case TOKEN_UNUSED:
          case TOKEN_NULL_UNSPECIFIED:
          case TOKEN_NULLABLE:
          case TOKEN_NONNULL:
          case TOKEN_NULL_RESETTABLE:
          case TOKEN_NS_INLINE:
          case TOKEN_NS_ENUM:
          case TOKEN_NS_OPTIONS:
          case TOKEN_ASSIGN:
          case TOKEN_COPY:
          case TOKEN_GETTER:
          case TOKEN_SETTER:
          case TOKEN_STRONG:
          case TOKEN_READONLY:
          case TOKEN_READWRITE:
          case TOKEN_WEAK:
          case TOKEN_UNSAFE_UNRETAINED:
          case TOKEN_IB_OUTLET:
          case TOKEN_IB_OUTLET_COLLECTION:
          case TOKEN_IB_INSPECTABLE:
          case TOKEN_IB_DESIGNABLE:
          case TOKEN_IDENTIFIER:
            state = 1142;
            macro();
            break;
          case TOKEN_ATTRIBUTE:
            state = 1143;
            attributeSpecifier();
            break;
          default:
            throw NoViableAltException(this);
          } 
        }
        state = 1148;
        errorHandler.sync(this);
        _alt = interpreter.adaptivePredict(tokenStream, 145, context);
      }
      state = 1151;
      errorHandler.sync(this);
      _la = tokenStream.LA(1);
      if (_la == TOKEN_ASSIGNMENT) {
        state = 1149;
        match(TOKEN_ASSIGNMENT);
        state = 1150;
        initializer();
      }

    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return _localctx;
  }

  StructOrUnionSpecifierContext structOrUnionSpecifier() {
    dynamic _localctx = StructOrUnionSpecifierContext(context, state);
    enterRule(_localctx, 168, RULE_structOrUnionSpecifier);
    int _la;
    try {
      enterOuterAlt(_localctx, 1);
      state = 1153;
      _la = tokenStream.LA(1);
      if (!(_la == TOKEN_STRUCT || _la == TOKEN_UNION)) {
      errorHandler.recoverInline(this);
      } else {
        if ( tokenStream.LA(1)==IntStream.EOF ) matchedEOF = true;
        errorHandler.reportMatch(this);
        consume();
      }
      state = 1166;
      errorHandler.sync(this);
      switch (interpreter.adaptivePredict(tokenStream, 149, context)) {
      case 1:
        state = 1154;
        identifier();
        break;
      case 2:
        state = 1156;
        errorHandler.sync(this);
        _la = tokenStream.LA(1);
        if ((((_la) & ~0x3f) == 0 && ((BigInt.one << _la) & ((BigInt.one << TOKEN_BOOL) | (BigInt.one << TOKEN_Class) | (BigInt.one << TOKEN_BYCOPY) | (BigInt.one << TOKEN_BYREF) | (BigInt.one << TOKEN_ID) | (BigInt.one << TOKEN_IMP) | (BigInt.one << TOKEN_IN) | (BigInt.one << TOKEN_INOUT) | (BigInt.one << TOKEN_ONEWAY) | (BigInt.one << TOKEN_OUT) | (BigInt.one << TOKEN_PROTOCOL_) | (BigInt.one << TOKEN_SEL) | (BigInt.one << TOKEN_SELF) | (BigInt.one << TOKEN_SUPER))) != BigInt.zero) || ((((_la - 81)) & ~0x3f) == 0 && ((BigInt.one << (_la - 81)) & ((BigInt.one << (TOKEN_ATOMIC - 81)) | (BigInt.one << (TOKEN_NONATOMIC - 81)) | (BigInt.one << (TOKEN_RETAIN - 81)) | (BigInt.one << (TOKEN_AUTORELEASING_QUALIFIER - 81)) | (BigInt.one << (TOKEN_BLOCK - 81)) | (BigInt.one << (TOKEN_BRIDGE_RETAINED - 81)) | (BigInt.one << (TOKEN_BRIDGE_TRANSFER - 81)) | (BigInt.one << (TOKEN_COVARIANT - 81)) | (BigInt.one << (TOKEN_CONTRAVARIANT - 81)) | (BigInt.one << (TOKEN_DEPRECATED - 81)) | (BigInt.one << (TOKEN_KINDOF - 81)) | (BigInt.one << (TOKEN_UNUSED - 81)) | (BigInt.one << (TOKEN_NULL_UNSPECIFIED - 81)) | (BigInt.one << (TOKEN_NULLABLE - 81)) | (BigInt.one << (TOKEN_NONNULL - 81)) | (BigInt.one << (TOKEN_NULL_RESETTABLE - 81)) | (BigInt.one << (TOKEN_NS_INLINE - 81)) | (BigInt.one << (TOKEN_NS_ENUM - 81)) | (BigInt.one << (TOKEN_NS_OPTIONS - 81)) | (BigInt.one << (TOKEN_ASSIGN - 81)) | (BigInt.one << (TOKEN_COPY - 81)) | (BigInt.one << (TOKEN_GETTER - 81)) | (BigInt.one << (TOKEN_SETTER - 81)) | (BigInt.one << (TOKEN_STRONG - 81)) | (BigInt.one << (TOKEN_READONLY - 81)) | (BigInt.one << (TOKEN_READWRITE - 81)) | (BigInt.one << (TOKEN_WEAK - 81)) | (BigInt.one << (TOKEN_UNSAFE_UNRETAINED - 81)) | (BigInt.one << (TOKEN_IB_OUTLET - 81)) | (BigInt.one << (TOKEN_IB_OUTLET_COLLECTION - 81)) | (BigInt.one << (TOKEN_IB_INSPECTABLE - 81)) | (BigInt.one << (TOKEN_IB_DESIGNABLE - 81)) | (BigInt.one << (TOKEN_IDENTIFIER - 81)))) != BigInt.zero)) {
          state = 1155;
          identifier();
        }

        state = 1158;
        match(TOKEN_LBRACE);
        state = 1160; 
        errorHandler.sync(this);
        _la = tokenStream.LA(1);
        do {
          state = 1159;
          fieldDeclaration();
          state = 1162; 
          errorHandler.sync(this);
          _la = tokenStream.LA(1);
        } while ((((_la) & ~0x3f) == 0 && ((BigInt.one << _la) & ((BigInt.one << TOKEN_AUTO) | (BigInt.one << TOKEN_CHAR) | (BigInt.one << TOKEN_CONST) | (BigInt.one << TOKEN_DOUBLE) | (BigInt.one << TOKEN_ENUM) | (BigInt.one << TOKEN_EXTERN) | (BigInt.one << TOKEN_FLOAT) | (BigInt.one << TOKEN_INLINE) | (BigInt.one << TOKEN_INT) | (BigInt.one << TOKEN_LONG) | (BigInt.one << TOKEN_REGISTER) | (BigInt.one << TOKEN_RESTRICT) | (BigInt.one << TOKEN_SHORT) | (BigInt.one << TOKEN_SIGNED) | (BigInt.one << TOKEN_STATIC) | (BigInt.one << TOKEN_STRUCT) | (BigInt.one << TOKEN_UNION) | (BigInt.one << TOKEN_UNSIGNED) | (BigInt.one << TOKEN_VOID) | (BigInt.one << TOKEN_VOLATILE) | (BigInt.one << TOKEN_BOOL) | (BigInt.one << TOKEN_Class) | (BigInt.one << TOKEN_BYCOPY) | (BigInt.one << TOKEN_BYREF) | (BigInt.one << TOKEN_ID) | (BigInt.one << TOKEN_IMP) | (BigInt.one << TOKEN_IN) | (BigInt.one << TOKEN_INOUT) | (BigInt.one << TOKEN_ONEWAY) | (BigInt.one << TOKEN_OUT) | (BigInt.one << TOKEN_PROTOCOL_) | (BigInt.one << TOKEN_SEL) | (BigInt.one << TOKEN_SELF) | (BigInt.one << TOKEN_SUPER))) != BigInt.zero) || ((((_la - 81)) & ~0x3f) == 0 && ((BigInt.one << (_la - 81)) & ((BigInt.one << (TOKEN_ATOMIC - 81)) | (BigInt.one << (TOKEN_NONATOMIC - 81)) | (BigInt.one << (TOKEN_RETAIN - 81)) | (BigInt.one << (TOKEN_ATTRIBUTE - 81)) | (BigInt.one << (TOKEN_AUTORELEASING_QUALIFIER - 81)) | (BigInt.one << (TOKEN_BLOCK - 81)) | (BigInt.one << (TOKEN_BRIDGE - 81)) | (BigInt.one << (TOKEN_BRIDGE_RETAINED - 81)) | (BigInt.one << (TOKEN_BRIDGE_TRANSFER - 81)) | (BigInt.one << (TOKEN_COVARIANT - 81)) | (BigInt.one << (TOKEN_CONTRAVARIANT - 81)) | (BigInt.one << (TOKEN_DEPRECATED - 81)) | (BigInt.one << (TOKEN_KINDOF - 81)) | (BigInt.one << (TOKEN_STRONG_QUALIFIER - 81)) | (BigInt.one << (TOKEN_TYPEOF - 81)) | (BigInt.one << (TOKEN_UNSAFE_UNRETAINED_QUALIFIER - 81)) | (BigInt.one << (TOKEN_UNUSED - 81)) | (BigInt.one << (TOKEN_WEAK_QUALIFIER - 81)) | (BigInt.one << (TOKEN_NULL_UNSPECIFIED - 81)) | (BigInt.one << (TOKEN_NULLABLE - 81)) | (BigInt.one << (TOKEN_NONNULL - 81)) | (BigInt.one << (TOKEN_NULL_RESETTABLE - 81)) | (BigInt.one << (TOKEN_NS_INLINE - 81)) | (BigInt.one << (TOKEN_NS_ENUM - 81)) | (BigInt.one << (TOKEN_NS_OPTIONS - 81)) | (BigInt.one << (TOKEN_NS_CLOSED_ENUM - 81)) | (BigInt.one << (TOKEN_NS_ERROR_ENUM - 81)) | (BigInt.one << (TOKEN_ASSIGN - 81)) | (BigInt.one << (TOKEN_COPY - 81)) | (BigInt.one << (TOKEN_GETTER - 81)) | (BigInt.one << (TOKEN_SETTER - 81)) | (BigInt.one << (TOKEN_STRONG - 81)) | (BigInt.one << (TOKEN_READONLY - 81)) | (BigInt.one << (TOKEN_READWRITE - 81)) | (BigInt.one << (TOKEN_WEAK - 81)) | (BigInt.one << (TOKEN_UNSAFE_UNRETAINED - 81)) | (BigInt.one << (TOKEN_IB_OUTLET - 81)) | (BigInt.one << (TOKEN_IB_OUTLET_COLLECTION - 81)) | (BigInt.one << (TOKEN_IB_INSPECTABLE - 81)) | (BigInt.one << (TOKEN_IB_DESIGNABLE - 81)) | (BigInt.one << (TOKEN_IDENTIFIER - 81)) | (BigInt.one << (TOKEN_LP - 81)))) != BigInt.zero));
        state = 1164;
        match(TOKEN_RBRACE);
        break;
      }
    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return _localctx;
  }

  FieldDeclarationContext fieldDeclaration() {
    dynamic _localctx = FieldDeclarationContext(context, state);
    enterRule(_localctx, 170, RULE_fieldDeclaration);
    int _la;
    try {
      enterOuterAlt(_localctx, 1);
      state = 1172;
      errorHandler.sync(this);
      switch (interpreter.adaptivePredict(tokenStream, 150, context)) {
      case 1:
        state = 1168;
        specifierQualifierList();
        state = 1169;
        fieldDeclaratorList();
        break;
      case 2:
        state = 1171;
        functionPointer();
        break;
      }
      state = 1178;
      errorHandler.sync(this);
      _la = tokenStream.LA(1);
      while ((((_la) & ~0x3f) == 0 && ((BigInt.one << _la) & ((BigInt.one << TOKEN_BOOL) | (BigInt.one << TOKEN_Class) | (BigInt.one << TOKEN_BYCOPY) | (BigInt.one << TOKEN_BYREF) | (BigInt.one << TOKEN_ID) | (BigInt.one << TOKEN_IMP) | (BigInt.one << TOKEN_IN) | (BigInt.one << TOKEN_INOUT) | (BigInt.one << TOKEN_ONEWAY) | (BigInt.one << TOKEN_OUT) | (BigInt.one << TOKEN_PROTOCOL_) | (BigInt.one << TOKEN_SEL) | (BigInt.one << TOKEN_SELF) | (BigInt.one << TOKEN_SUPER))) != BigInt.zero) || ((((_la - 81)) & ~0x3f) == 0 && ((BigInt.one << (_la - 81)) & ((BigInt.one << (TOKEN_ATOMIC - 81)) | (BigInt.one << (TOKEN_NONATOMIC - 81)) | (BigInt.one << (TOKEN_RETAIN - 81)) | (BigInt.one << (TOKEN_ATTRIBUTE - 81)) | (BigInt.one << (TOKEN_AUTORELEASING_QUALIFIER - 81)) | (BigInt.one << (TOKEN_BLOCK - 81)) | (BigInt.one << (TOKEN_BRIDGE_RETAINED - 81)) | (BigInt.one << (TOKEN_BRIDGE_TRANSFER - 81)) | (BigInt.one << (TOKEN_COVARIANT - 81)) | (BigInt.one << (TOKEN_CONTRAVARIANT - 81)) | (BigInt.one << (TOKEN_DEPRECATED - 81)) | (BigInt.one << (TOKEN_KINDOF - 81)) | (BigInt.one << (TOKEN_UNUSED - 81)) | (BigInt.one << (TOKEN_NULL_UNSPECIFIED - 81)) | (BigInt.one << (TOKEN_NULLABLE - 81)) | (BigInt.one << (TOKEN_NONNULL - 81)) | (BigInt.one << (TOKEN_NULL_RESETTABLE - 81)) | (BigInt.one << (TOKEN_NS_INLINE - 81)) | (BigInt.one << (TOKEN_NS_ENUM - 81)) | (BigInt.one << (TOKEN_NS_OPTIONS - 81)) | (BigInt.one << (TOKEN_ASSIGN - 81)) | (BigInt.one << (TOKEN_COPY - 81)) | (BigInt.one << (TOKEN_GETTER - 81)) | (BigInt.one << (TOKEN_SETTER - 81)) | (BigInt.one << (TOKEN_STRONG - 81)) | (BigInt.one << (TOKEN_READONLY - 81)) | (BigInt.one << (TOKEN_READWRITE - 81)) | (BigInt.one << (TOKEN_WEAK - 81)) | (BigInt.one << (TOKEN_UNSAFE_UNRETAINED - 81)) | (BigInt.one << (TOKEN_IB_OUTLET - 81)) | (BigInt.one << (TOKEN_IB_OUTLET_COLLECTION - 81)) | (BigInt.one << (TOKEN_IB_INSPECTABLE - 81)) | (BigInt.one << (TOKEN_IB_DESIGNABLE - 81)) | (BigInt.one << (TOKEN_IDENTIFIER - 81)))) != BigInt.zero)) {
        state = 1176;
        errorHandler.sync(this);
        switch (tokenStream.LA(1)) {
        case TOKEN_BOOL:
        case TOKEN_Class:
        case TOKEN_BYCOPY:
        case TOKEN_BYREF:
        case TOKEN_ID:
        case TOKEN_IMP:
        case TOKEN_IN:
        case TOKEN_INOUT:
        case TOKEN_ONEWAY:
        case TOKEN_OUT:
        case TOKEN_PROTOCOL_:
        case TOKEN_SEL:
        case TOKEN_SELF:
        case TOKEN_SUPER:
        case TOKEN_ATOMIC:
        case TOKEN_NONATOMIC:
        case TOKEN_RETAIN:
        case TOKEN_AUTORELEASING_QUALIFIER:
        case TOKEN_BLOCK:
        case TOKEN_BRIDGE_RETAINED:
        case TOKEN_BRIDGE_TRANSFER:
        case TOKEN_COVARIANT:
        case TOKEN_CONTRAVARIANT:
        case TOKEN_DEPRECATED:
        case TOKEN_KINDOF:
        case TOKEN_UNUSED:
        case TOKEN_NULL_UNSPECIFIED:
        case TOKEN_NULLABLE:
        case TOKEN_NONNULL:
        case TOKEN_NULL_RESETTABLE:
        case TOKEN_NS_INLINE:
        case TOKEN_NS_ENUM:
        case TOKEN_NS_OPTIONS:
        case TOKEN_ASSIGN:
        case TOKEN_COPY:
        case TOKEN_GETTER:
        case TOKEN_SETTER:
        case TOKEN_STRONG:
        case TOKEN_READONLY:
        case TOKEN_READWRITE:
        case TOKEN_WEAK:
        case TOKEN_UNSAFE_UNRETAINED:
        case TOKEN_IB_OUTLET:
        case TOKEN_IB_OUTLET_COLLECTION:
        case TOKEN_IB_INSPECTABLE:
        case TOKEN_IB_DESIGNABLE:
        case TOKEN_IDENTIFIER:
          state = 1174;
          macro();
          break;
        case TOKEN_ATTRIBUTE:
          state = 1175;
          attributeSpecifier();
          break;
        default:
          throw NoViableAltException(this);
        }
        state = 1180;
        errorHandler.sync(this);
        _la = tokenStream.LA(1);
      }
      state = 1181;
      match(TOKEN_SEMI);
    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return _localctx;
  }

  SpecifierQualifierListContext specifierQualifierList() {
    dynamic _localctx = SpecifierQualifierListContext(context, state);
    enterRule(_localctx, 172, RULE_specifierQualifierList);
    try {
      int _alt;
      enterOuterAlt(_localctx, 1);
      state = 1185; 
      errorHandler.sync(this);
      _alt = 1;
      do {
        switch (_alt) {
        case 1:
          state = 1185;
          errorHandler.sync(this);
          switch (interpreter.adaptivePredict(tokenStream, 153, context)) {
          case 1:
            state = 1183;
            commonSpecifiers();
            break;
          case 2:
            state = 1184;
            typeSpecifier();
            break;
          }
          break;
        default:
          throw NoViableAltException(this);
        }
        state = 1187; 
        errorHandler.sync(this);
        _alt = interpreter.adaptivePredict(tokenStream, 154, context);
      } while (_alt != 2 && _alt != ATN.INVALID_ALT_NUMBER);
    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return _localctx;
  }

  IbOutletQualifierContext ibOutletQualifier() {
    dynamic _localctx = IbOutletQualifierContext(context, state);
    enterRule(_localctx, 174, RULE_ibOutletQualifier);
    try {
      state = 1195;
      errorHandler.sync(this);
      switch (tokenStream.LA(1)) {
      case TOKEN_IB_OUTLET_COLLECTION:
        enterOuterAlt(_localctx, 1);
        state = 1189;
        match(TOKEN_IB_OUTLET_COLLECTION);
        state = 1190;
        match(TOKEN_LP);
        state = 1191;
        identifier();
        state = 1192;
        match(TOKEN_RP);
        break;
      case TOKEN_IB_OUTLET:
        enterOuterAlt(_localctx, 2);
        state = 1194;
        match(TOKEN_IB_OUTLET);
        break;
      default:
        throw NoViableAltException(this);
      }
    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return _localctx;
  }

  ArcBehaviourSpecifierContext arcBehaviourSpecifier() {
    dynamic _localctx = ArcBehaviourSpecifierContext(context, state);
    enterRule(_localctx, 176, RULE_arcBehaviourSpecifier);
    int _la;
    try {
      enterOuterAlt(_localctx, 1);
      state = 1197;
      _la = tokenStream.LA(1);
      if (!(((((_la - 85)) & ~0x3f) == 0 && ((BigInt.one << (_la - 85)) & ((BigInt.one << (TOKEN_AUTORELEASING_QUALIFIER - 85)) | (BigInt.one << (TOKEN_STRONG_QUALIFIER - 85)) | (BigInt.one << (TOKEN_UNSAFE_UNRETAINED_QUALIFIER - 85)) | (BigInt.one << (TOKEN_WEAK_QUALIFIER - 85)))) != BigInt.zero))) {
      errorHandler.recoverInline(this);
      } else {
        if ( tokenStream.LA(1)==IntStream.EOF ) matchedEOF = true;
        errorHandler.reportMatch(this);
        consume();
      }
    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return _localctx;
  }

  NullabilitySpecifierContext nullabilitySpecifier() {
    dynamic _localctx = NullabilitySpecifierContext(context, state);
    enterRule(_localctx, 178, RULE_nullabilitySpecifier);
    int _la;
    try {
      enterOuterAlt(_localctx, 1);
      state = 1199;
      _la = tokenStream.LA(1);
      if (!(((((_la - 99)) & ~0x3f) == 0 && ((BigInt.one << (_la - 99)) & ((BigInt.one << (TOKEN_NULL_UNSPECIFIED - 99)) | (BigInt.one << (TOKEN_NULLABLE - 99)) | (BigInt.one << (TOKEN_NONNULL - 99)) | (BigInt.one << (TOKEN_NULL_RESETTABLE - 99)))) != BigInt.zero))) {
      errorHandler.recoverInline(this);
      } else {
        if ( tokenStream.LA(1)==IntStream.EOF ) matchedEOF = true;
        errorHandler.reportMatch(this);
        consume();
      }
    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return _localctx;
  }

  StorageClassSpecifierContext storageClassSpecifier() {
    dynamic _localctx = StorageClassSpecifierContext(context, state);
    enterRule(_localctx, 180, RULE_storageClassSpecifier);
    int _la;
    try {
      enterOuterAlt(_localctx, 1);
      state = 1201;
      _la = tokenStream.LA(1);
      if (!((((_la) & ~0x3f) == 0 && ((BigInt.one << _la) & ((BigInt.one << TOKEN_AUTO) | (BigInt.one << TOKEN_EXTERN) | (BigInt.one << TOKEN_REGISTER) | (BigInt.one << TOKEN_STATIC))) != BigInt.zero))) {
      errorHandler.recoverInline(this);
      } else {
        if ( tokenStream.LA(1)==IntStream.EOF ) matchedEOF = true;
        errorHandler.reportMatch(this);
        consume();
      }
    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return _localctx;
  }

  TypePrefixContext typePrefix() {
    dynamic _localctx = TypePrefixContext(context, state);
    enterRule(_localctx, 182, RULE_typePrefix);
    int _la;
    try {
      enterOuterAlt(_localctx, 1);
      state = 1203;
      _la = tokenStream.LA(1);
      if (!(_la == TOKEN_INLINE || ((((_la - 86)) & ~0x3f) == 0 && ((BigInt.one << (_la - 86)) & ((BigInt.one << (TOKEN_BLOCK - 86)) | (BigInt.one << (TOKEN_BRIDGE - 86)) | (BigInt.one << (TOKEN_BRIDGE_RETAINED - 86)) | (BigInt.one << (TOKEN_BRIDGE_TRANSFER - 86)) | (BigInt.one << (TOKEN_KINDOF - 86)) | (BigInt.one << (TOKEN_NS_INLINE - 86)))) != BigInt.zero))) {
      errorHandler.recoverInline(this);
      } else {
        if ( tokenStream.LA(1)==IntStream.EOF ) matchedEOF = true;
        errorHandler.reportMatch(this);
        consume();
      }
    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return _localctx;
  }

  TypeQualifierContext typeQualifier() {
    dynamic _localctx = TypeQualifierContext(context, state);
    enterRule(_localctx, 184, RULE_typeQualifier);
    try {
      state = 1209;
      errorHandler.sync(this);
      switch (tokenStream.LA(1)) {
      case TOKEN_CONST:
        enterOuterAlt(_localctx, 1);
        state = 1205;
        match(TOKEN_CONST);
        break;
      case TOKEN_VOLATILE:
        enterOuterAlt(_localctx, 2);
        state = 1206;
        match(TOKEN_VOLATILE);
        break;
      case TOKEN_RESTRICT:
        enterOuterAlt(_localctx, 3);
        state = 1207;
        match(TOKEN_RESTRICT);
        break;
      case TOKEN_BYCOPY:
      case TOKEN_BYREF:
      case TOKEN_IN:
      case TOKEN_INOUT:
      case TOKEN_ONEWAY:
      case TOKEN_OUT:
        enterOuterAlt(_localctx, 4);
        state = 1208;
        protocolQualifier();
        break;
      default:
        throw NoViableAltException(this);
      }
    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return _localctx;
  }

  ProtocolQualifierContext protocolQualifier() {
    dynamic _localctx = ProtocolQualifierContext(context, state);
    enterRule(_localctx, 186, RULE_protocolQualifier);
    int _la;
    try {
      enterOuterAlt(_localctx, 1);
      state = 1211;
      _la = tokenStream.LA(1);
      if (!((((_la) & ~0x3f) == 0 && ((BigInt.one << _la) & ((BigInt.one << TOKEN_BYCOPY) | (BigInt.one << TOKEN_BYREF) | (BigInt.one << TOKEN_IN) | (BigInt.one << TOKEN_INOUT) | (BigInt.one << TOKEN_ONEWAY) | (BigInt.one << TOKEN_OUT))) != BigInt.zero))) {
      errorHandler.recoverInline(this);
      } else {
        if ( tokenStream.LA(1)==IntStream.EOF ) matchedEOF = true;
        errorHandler.reportMatch(this);
        consume();
      }
    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return _localctx;
  }

  TypeSpecifierContext typeSpecifier() {
    dynamic _localctx = TypeSpecifierContext(context, state);
    enterRule(_localctx, 188, RULE_typeSpecifier);
    int _la;
    try {
      int _alt;
      enterOuterAlt(_localctx, 1);
      state = 1223;
      errorHandler.sync(this);
      switch (interpreter.adaptivePredict(tokenStream, 158, context)) {
      case 1:
        state = 1214; 
        errorHandler.sync(this);
        _alt = 1;
        do {
          switch (_alt) {
          case 1:
            state = 1213;
            _la = tokenStream.LA(1);
            if (!((((_la) & ~0x3f) == 0 && ((BigInt.one << _la) & ((BigInt.one << TOKEN_CHAR) | (BigInt.one << TOKEN_DOUBLE) | (BigInt.one << TOKEN_FLOAT) | (BigInt.one << TOKEN_INT) | (BigInt.one << TOKEN_LONG) | (BigInt.one << TOKEN_SHORT) | (BigInt.one << TOKEN_SIGNED) | (BigInt.one << TOKEN_UNSIGNED) | (BigInt.one << TOKEN_VOID))) != BigInt.zero))) {
            errorHandler.recoverInline(this);
            } else {
              if ( tokenStream.LA(1)==IntStream.EOF ) matchedEOF = true;
              errorHandler.reportMatch(this);
              consume();
            }
            break;
          default:
            throw NoViableAltException(this);
          }
          state = 1216; 
          errorHandler.sync(this);
          _alt = interpreter.adaptivePredict(tokenStream, 157, context);
        } while (_alt != 2 && _alt != ATN.INVALID_ALT_NUMBER);
        break;
      case 2:
        state = 1218;
        typeofExpression();
        break;
      case 3:
        state = 1219;
        genericTypeSpecifier();
        break;
      case 4:
        state = 1220;
        structOrUnionSpecifier();
        break;
      case 5:
        state = 1221;
        enumSpecifier();
        break;
      case 6:
        state = 1222;
        identifier();
        break;
      }
      state = 1226;
      errorHandler.sync(this);
      switch (interpreter.adaptivePredict(tokenStream, 159, context)) {
      case 1:
        state = 1225;
        pointer();
        break;
      }
    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return _localctx;
  }

  TypeofExpressionContext typeofExpression() {
    dynamic _localctx = TypeofExpressionContext(context, state);
    enterRule(_localctx, 190, RULE_typeofExpression);
    try {
      enterOuterAlt(_localctx, 1);
      state = 1228;
      match(TOKEN_TYPEOF);

      state = 1229;
      match(TOKEN_LP);
      state = 1230;
      expression(0);
      state = 1231;
      match(TOKEN_RP);
    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return _localctx;
  }

  FieldDeclaratorListContext fieldDeclaratorList() {
    dynamic _localctx = FieldDeclaratorListContext(context, state);
    enterRule(_localctx, 192, RULE_fieldDeclaratorList);
    int _la;
    try {
      enterOuterAlt(_localctx, 1);
      state = 1233;
      fieldDeclarator();
      state = 1238;
      errorHandler.sync(this);
      _la = tokenStream.LA(1);
      while (_la == TOKEN_COMMA) {
        state = 1234;
        match(TOKEN_COMMA);
        state = 1235;
        fieldDeclarator();
        state = 1240;
        errorHandler.sync(this);
        _la = tokenStream.LA(1);
      }
    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return _localctx;
  }

  FieldDeclaratorContext fieldDeclarator() {
    dynamic _localctx = FieldDeclaratorContext(context, state);
    enterRule(_localctx, 194, RULE_fieldDeclarator);
    int _la;
    try {
      state = 1247;
      errorHandler.sync(this);
      switch (interpreter.adaptivePredict(tokenStream, 162, context)) {
      case 1:
        enterOuterAlt(_localctx, 1);
        state = 1241;
        declarator();
        break;
      case 2:
        enterOuterAlt(_localctx, 2);
        state = 1243;
        errorHandler.sync(this);
        _la = tokenStream.LA(1);
        if (((((_la - 40)) & ~0x3f) == 0 && ((BigInt.one << (_la - 40)) & ((BigInt.one << (TOKEN_BOOL - 40)) | (BigInt.one << (TOKEN_Class - 40)) | (BigInt.one << (TOKEN_BYCOPY - 40)) | (BigInt.one << (TOKEN_BYREF - 40)) | (BigInt.one << (TOKEN_ID - 40)) | (BigInt.one << (TOKEN_IMP - 40)) | (BigInt.one << (TOKEN_IN - 40)) | (BigInt.one << (TOKEN_INOUT - 40)) | (BigInt.one << (TOKEN_ONEWAY - 40)) | (BigInt.one << (TOKEN_OUT - 40)) | (BigInt.one << (TOKEN_PROTOCOL_ - 40)) | (BigInt.one << (TOKEN_SEL - 40)) | (BigInt.one << (TOKEN_SELF - 40)) | (BigInt.one << (TOKEN_SUPER - 40)) | (BigInt.one << (TOKEN_ATOMIC - 40)) | (BigInt.one << (TOKEN_NONATOMIC - 40)) | (BigInt.one << (TOKEN_RETAIN - 40)) | (BigInt.one << (TOKEN_AUTORELEASING_QUALIFIER - 40)) | (BigInt.one << (TOKEN_BLOCK - 40)) | (BigInt.one << (TOKEN_BRIDGE_RETAINED - 40)) | (BigInt.one << (TOKEN_BRIDGE_TRANSFER - 40)) | (BigInt.one << (TOKEN_COVARIANT - 40)) | (BigInt.one << (TOKEN_CONTRAVARIANT - 40)) | (BigInt.one << (TOKEN_DEPRECATED - 40)) | (BigInt.one << (TOKEN_KINDOF - 40)) | (BigInt.one << (TOKEN_UNUSED - 40)) | (BigInt.one << (TOKEN_NULL_UNSPECIFIED - 40)) | (BigInt.one << (TOKEN_NULLABLE - 40)) | (BigInt.one << (TOKEN_NONNULL - 40)) | (BigInt.one << (TOKEN_NULL_RESETTABLE - 40)) | (BigInt.one << (TOKEN_NS_INLINE - 40)))) != BigInt.zero) || ((((_la - 104)) & ~0x3f) == 0 && ((BigInt.one << (_la - 104)) & ((BigInt.one << (TOKEN_NS_ENUM - 104)) | (BigInt.one << (TOKEN_NS_OPTIONS - 104)) | (BigInt.one << (TOKEN_ASSIGN - 104)) | (BigInt.one << (TOKEN_COPY - 104)) | (BigInt.one << (TOKEN_GETTER - 104)) | (BigInt.one << (TOKEN_SETTER - 104)) | (BigInt.one << (TOKEN_STRONG - 104)) | (BigInt.one << (TOKEN_READONLY - 104)) | (BigInt.one << (TOKEN_READWRITE - 104)) | (BigInt.one << (TOKEN_WEAK - 104)) | (BigInt.one << (TOKEN_UNSAFE_UNRETAINED - 104)) | (BigInt.one << (TOKEN_IB_OUTLET - 104)) | (BigInt.one << (TOKEN_IB_OUTLET_COLLECTION - 104)) | (BigInt.one << (TOKEN_IB_INSPECTABLE - 104)) | (BigInt.one << (TOKEN_IB_DESIGNABLE - 104)) | (BigInt.one << (TOKEN_IDENTIFIER - 104)) | (BigInt.one << (TOKEN_LP - 104)) | (BigInt.one << (TOKEN_MUL - 104)))) != BigInt.zero)) {
          state = 1242;
          declarator();
        }

        state = 1245;
        match(TOKEN_COLON);
        state = 1246;
        constant();
        break;
      }
    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return _localctx;
  }

  EnumSpecifierContext enumSpecifier() {
    dynamic _localctx = EnumSpecifierContext(context, state);
    enterRule(_localctx, 196, RULE_enumSpecifier);
    int _la;
    try {
      state = 1282;
      errorHandler.sync(this);
      switch (tokenStream.LA(1)) {
      case TOKEN_ENUM:
        enterOuterAlt(_localctx, 1);
        state = 1249;
        match(TOKEN_ENUM);
        state = 1255;
        errorHandler.sync(this);
        switch (interpreter.adaptivePredict(tokenStream, 164, context)) {
        case 1:
          state = 1251;
          errorHandler.sync(this);
          _la = tokenStream.LA(1);
          if ((((_la) & ~0x3f) == 0 && ((BigInt.one << _la) & ((BigInt.one << TOKEN_BOOL) | (BigInt.one << TOKEN_Class) | (BigInt.one << TOKEN_BYCOPY) | (BigInt.one << TOKEN_BYREF) | (BigInt.one << TOKEN_ID) | (BigInt.one << TOKEN_IMP) | (BigInt.one << TOKEN_IN) | (BigInt.one << TOKEN_INOUT) | (BigInt.one << TOKEN_ONEWAY) | (BigInt.one << TOKEN_OUT) | (BigInt.one << TOKEN_PROTOCOL_) | (BigInt.one << TOKEN_SEL) | (BigInt.one << TOKEN_SELF) | (BigInt.one << TOKEN_SUPER))) != BigInt.zero) || ((((_la - 81)) & ~0x3f) == 0 && ((BigInt.one << (_la - 81)) & ((BigInt.one << (TOKEN_ATOMIC - 81)) | (BigInt.one << (TOKEN_NONATOMIC - 81)) | (BigInt.one << (TOKEN_RETAIN - 81)) | (BigInt.one << (TOKEN_AUTORELEASING_QUALIFIER - 81)) | (BigInt.one << (TOKEN_BLOCK - 81)) | (BigInt.one << (TOKEN_BRIDGE_RETAINED - 81)) | (BigInt.one << (TOKEN_BRIDGE_TRANSFER - 81)) | (BigInt.one << (TOKEN_COVARIANT - 81)) | (BigInt.one << (TOKEN_CONTRAVARIANT - 81)) | (BigInt.one << (TOKEN_DEPRECATED - 81)) | (BigInt.one << (TOKEN_KINDOF - 81)) | (BigInt.one << (TOKEN_UNUSED - 81)) | (BigInt.one << (TOKEN_NULL_UNSPECIFIED - 81)) | (BigInt.one << (TOKEN_NULLABLE - 81)) | (BigInt.one << (TOKEN_NONNULL - 81)) | (BigInt.one << (TOKEN_NULL_RESETTABLE - 81)) | (BigInt.one << (TOKEN_NS_INLINE - 81)) | (BigInt.one << (TOKEN_NS_ENUM - 81)) | (BigInt.one << (TOKEN_NS_OPTIONS - 81)) | (BigInt.one << (TOKEN_ASSIGN - 81)) | (BigInt.one << (TOKEN_COPY - 81)) | (BigInt.one << (TOKEN_GETTER - 81)) | (BigInt.one << (TOKEN_SETTER - 81)) | (BigInt.one << (TOKEN_STRONG - 81)) | (BigInt.one << (TOKEN_READONLY - 81)) | (BigInt.one << (TOKEN_READWRITE - 81)) | (BigInt.one << (TOKEN_WEAK - 81)) | (BigInt.one << (TOKEN_UNSAFE_UNRETAINED - 81)) | (BigInt.one << (TOKEN_IB_OUTLET - 81)) | (BigInt.one << (TOKEN_IB_OUTLET_COLLECTION - 81)) | (BigInt.one << (TOKEN_IB_INSPECTABLE - 81)) | (BigInt.one << (TOKEN_IB_DESIGNABLE - 81)) | (BigInt.one << (TOKEN_IDENTIFIER - 81)))) != BigInt.zero)) {
            state = 1250;
            _localctx.name = identifier();
          }

          state = 1253;
          match(TOKEN_COLON);
          state = 1254;
          typeName();
          break;
        }
        state = 1268;
        errorHandler.sync(this);
        switch (tokenStream.LA(1)) {
        case TOKEN_BOOL:
        case TOKEN_Class:
        case TOKEN_BYCOPY:
        case TOKEN_BYREF:
        case TOKEN_ID:
        case TOKEN_IMP:
        case TOKEN_IN:
        case TOKEN_INOUT:
        case TOKEN_ONEWAY:
        case TOKEN_OUT:
        case TOKEN_PROTOCOL_:
        case TOKEN_SEL:
        case TOKEN_SELF:
        case TOKEN_SUPER:
        case TOKEN_ATOMIC:
        case TOKEN_NONATOMIC:
        case TOKEN_RETAIN:
        case TOKEN_AUTORELEASING_QUALIFIER:
        case TOKEN_BLOCK:
        case TOKEN_BRIDGE_RETAINED:
        case TOKEN_BRIDGE_TRANSFER:
        case TOKEN_COVARIANT:
        case TOKEN_CONTRAVARIANT:
        case TOKEN_DEPRECATED:
        case TOKEN_KINDOF:
        case TOKEN_UNUSED:
        case TOKEN_NULL_UNSPECIFIED:
        case TOKEN_NULLABLE:
        case TOKEN_NONNULL:
        case TOKEN_NULL_RESETTABLE:
        case TOKEN_NS_INLINE:
        case TOKEN_NS_ENUM:
        case TOKEN_NS_OPTIONS:
        case TOKEN_ASSIGN:
        case TOKEN_COPY:
        case TOKEN_GETTER:
        case TOKEN_SETTER:
        case TOKEN_STRONG:
        case TOKEN_READONLY:
        case TOKEN_READWRITE:
        case TOKEN_WEAK:
        case TOKEN_UNSAFE_UNRETAINED:
        case TOKEN_IB_OUTLET:
        case TOKEN_IB_OUTLET_COLLECTION:
        case TOKEN_IB_INSPECTABLE:
        case TOKEN_IB_DESIGNABLE:
        case TOKEN_IDENTIFIER:
          state = 1257;
          identifier();
          state = 1262;
          errorHandler.sync(this);
          switch (interpreter.adaptivePredict(tokenStream, 165, context)) {
          case 1:
            state = 1258;
            match(TOKEN_LBRACE);
            state = 1259;
            enumeratorList();
            state = 1260;
            match(TOKEN_RBRACE);
            break;
          }
          break;
        case TOKEN_LBRACE:
          state = 1264;
          match(TOKEN_LBRACE);
          state = 1265;
          enumeratorList();
          state = 1266;
          match(TOKEN_RBRACE);
          break;
        default:
          throw NoViableAltException(this);
        }
        break;
      case TOKEN_NS_ENUM:
      case TOKEN_NS_OPTIONS:
      case TOKEN_NS_CLOSED_ENUM:
      case TOKEN_NS_ERROR_ENUM:
        enterOuterAlt(_localctx, 2);
        state = 1270;
        _localctx.type = tokenStream.LT(1);
        _la = tokenStream.LA(1);
        if (!(((((_la - 104)) & ~0x3f) == 0 && ((BigInt.one << (_la - 104)) & ((BigInt.one << (TOKEN_NS_ENUM - 104)) | (BigInt.one << (TOKEN_NS_OPTIONS - 104)) | (BigInt.one << (TOKEN_NS_CLOSED_ENUM - 104)) | (BigInt.one << (TOKEN_NS_ERROR_ENUM - 104)))) != BigInt.zero))) {
          _localctx.type = errorHandler.recoverInline(this);
        } else {
          if ( tokenStream.LA(1)==IntStream.EOF ) matchedEOF = true;
          errorHandler.reportMatch(this);
          consume();
        }
        state = 1271;
        match(TOKEN_LP);
        state = 1272;
        typeName();
        state = 1275;
        errorHandler.sync(this);
        _la = tokenStream.LA(1);
        if (_la == TOKEN_COMMA) {
          state = 1273;
          match(TOKEN_COMMA);
          state = 1274;
          _localctx.name = identifier();
        }

        state = 1277;
        match(TOKEN_RP);
        state = 1278;
        match(TOKEN_LBRACE);
        state = 1279;
        enumeratorList();
        state = 1280;
        match(TOKEN_RBRACE);
        break;
      default:
        throw NoViableAltException(this);
      }
    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return _localctx;
  }

  EnumeratorListContext enumeratorList() {
    dynamic _localctx = EnumeratorListContext(context, state);
    enterRule(_localctx, 198, RULE_enumeratorList);
    int _la;
    try {
      int _alt;
      enterOuterAlt(_localctx, 1);
      state = 1284;
      _localctx._enumerator = enumerator();
      _localctx.list.add(_localctx._enumerator);
      state = 1289;
      errorHandler.sync(this);
      _alt = interpreter.adaptivePredict(tokenStream, 169, context);
      while (_alt != 2 && _alt != ATN.INVALID_ALT_NUMBER) {
        if (_alt == 1) {
          state = 1285;
          match(TOKEN_COMMA);
          state = 1286;
          _localctx._enumerator = enumerator();
          _localctx.list.add(_localctx._enumerator); 
        }
        state = 1291;
        errorHandler.sync(this);
        _alt = interpreter.adaptivePredict(tokenStream, 169, context);
      }
      state = 1293;
      errorHandler.sync(this);
      _la = tokenStream.LA(1);
      if (_la == TOKEN_COMMA) {
        state = 1292;
        match(TOKEN_COMMA);
      }

    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return _localctx;
  }

  EnumeratorContext enumerator() {
    dynamic _localctx = EnumeratorContext(context, state);
    enterRule(_localctx, 200, RULE_enumerator);
    int _la;
    try {
      enterOuterAlt(_localctx, 1);
      state = 1295;
      _localctx.name = enumeratorIdentifier();
      state = 1300;
      errorHandler.sync(this);
      _la = tokenStream.LA(1);
      while ((((_la) & ~0x3f) == 0 && ((BigInt.one << _la) & ((BigInt.one << TOKEN_BOOL) | (BigInt.one << TOKEN_Class) | (BigInt.one << TOKEN_BYCOPY) | (BigInt.one << TOKEN_BYREF) | (BigInt.one << TOKEN_ID) | (BigInt.one << TOKEN_IMP) | (BigInt.one << TOKEN_IN) | (BigInt.one << TOKEN_INOUT) | (BigInt.one << TOKEN_ONEWAY) | (BigInt.one << TOKEN_OUT) | (BigInt.one << TOKEN_PROTOCOL_) | (BigInt.one << TOKEN_SEL) | (BigInt.one << TOKEN_SELF) | (BigInt.one << TOKEN_SUPER))) != BigInt.zero) || ((((_la - 81)) & ~0x3f) == 0 && ((BigInt.one << (_la - 81)) & ((BigInt.one << (TOKEN_ATOMIC - 81)) | (BigInt.one << (TOKEN_NONATOMIC - 81)) | (BigInt.one << (TOKEN_RETAIN - 81)) | (BigInt.one << (TOKEN_ATTRIBUTE - 81)) | (BigInt.one << (TOKEN_AUTORELEASING_QUALIFIER - 81)) | (BigInt.one << (TOKEN_BLOCK - 81)) | (BigInt.one << (TOKEN_BRIDGE_RETAINED - 81)) | (BigInt.one << (TOKEN_BRIDGE_TRANSFER - 81)) | (BigInt.one << (TOKEN_COVARIANT - 81)) | (BigInt.one << (TOKEN_CONTRAVARIANT - 81)) | (BigInt.one << (TOKEN_DEPRECATED - 81)) | (BigInt.one << (TOKEN_KINDOF - 81)) | (BigInt.one << (TOKEN_UNUSED - 81)) | (BigInt.one << (TOKEN_NULL_UNSPECIFIED - 81)) | (BigInt.one << (TOKEN_NULLABLE - 81)) | (BigInt.one << (TOKEN_NONNULL - 81)) | (BigInt.one << (TOKEN_NULL_RESETTABLE - 81)) | (BigInt.one << (TOKEN_NS_INLINE - 81)) | (BigInt.one << (TOKEN_NS_ENUM - 81)) | (BigInt.one << (TOKEN_NS_OPTIONS - 81)) | (BigInt.one << (TOKEN_ASSIGN - 81)) | (BigInt.one << (TOKEN_COPY - 81)) | (BigInt.one << (TOKEN_GETTER - 81)) | (BigInt.one << (TOKEN_SETTER - 81)) | (BigInt.one << (TOKEN_STRONG - 81)) | (BigInt.one << (TOKEN_READONLY - 81)) | (BigInt.one << (TOKEN_READWRITE - 81)) | (BigInt.one << (TOKEN_WEAK - 81)) | (BigInt.one << (TOKEN_UNSAFE_UNRETAINED - 81)) | (BigInt.one << (TOKEN_IB_OUTLET - 81)) | (BigInt.one << (TOKEN_IB_OUTLET_COLLECTION - 81)) | (BigInt.one << (TOKEN_IB_INSPECTABLE - 81)) | (BigInt.one << (TOKEN_IB_DESIGNABLE - 81)) | (BigInt.one << (TOKEN_IDENTIFIER - 81)))) != BigInt.zero)) {
        state = 1298;
        errorHandler.sync(this);
        switch (tokenStream.LA(1)) {
        case TOKEN_BOOL:
        case TOKEN_Class:
        case TOKEN_BYCOPY:
        case TOKEN_BYREF:
        case TOKEN_ID:
        case TOKEN_IMP:
        case TOKEN_IN:
        case TOKEN_INOUT:
        case TOKEN_ONEWAY:
        case TOKEN_OUT:
        case TOKEN_PROTOCOL_:
        case TOKEN_SEL:
        case TOKEN_SELF:
        case TOKEN_SUPER:
        case TOKEN_ATOMIC:
        case TOKEN_NONATOMIC:
        case TOKEN_RETAIN:
        case TOKEN_AUTORELEASING_QUALIFIER:
        case TOKEN_BLOCK:
        case TOKEN_BRIDGE_RETAINED:
        case TOKEN_BRIDGE_TRANSFER:
        case TOKEN_COVARIANT:
        case TOKEN_CONTRAVARIANT:
        case TOKEN_DEPRECATED:
        case TOKEN_KINDOF:
        case TOKEN_UNUSED:
        case TOKEN_NULL_UNSPECIFIED:
        case TOKEN_NULLABLE:
        case TOKEN_NONNULL:
        case TOKEN_NULL_RESETTABLE:
        case TOKEN_NS_INLINE:
        case TOKEN_NS_ENUM:
        case TOKEN_NS_OPTIONS:
        case TOKEN_ASSIGN:
        case TOKEN_COPY:
        case TOKEN_GETTER:
        case TOKEN_SETTER:
        case TOKEN_STRONG:
        case TOKEN_READONLY:
        case TOKEN_READWRITE:
        case TOKEN_WEAK:
        case TOKEN_UNSAFE_UNRETAINED:
        case TOKEN_IB_OUTLET:
        case TOKEN_IB_OUTLET_COLLECTION:
        case TOKEN_IB_INSPECTABLE:
        case TOKEN_IB_DESIGNABLE:
        case TOKEN_IDENTIFIER:
          state = 1296;
          macro();
          break;
        case TOKEN_ATTRIBUTE:
          state = 1297;
          attributeSpecifier();
          break;
        default:
          throw NoViableAltException(this);
        }
        state = 1302;
        errorHandler.sync(this);
        _la = tokenStream.LA(1);
      }
      state = 1305;
      errorHandler.sync(this);
      _la = tokenStream.LA(1);
      if (_la == TOKEN_ASSIGNMENT) {
        state = 1303;
        match(TOKEN_ASSIGNMENT);
        state = 1304;
        _localctx.value = expression(0);
      }

    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return _localctx;
  }

  EnumeratorIdentifierContext enumeratorIdentifier() {
    dynamic _localctx = EnumeratorIdentifierContext(context, state);
    enterRule(_localctx, 202, RULE_enumeratorIdentifier);
    try {
      state = 1309;
      errorHandler.sync(this);
      switch (tokenStream.LA(1)) {
      case TOKEN_BOOL:
      case TOKEN_Class:
      case TOKEN_BYCOPY:
      case TOKEN_BYREF:
      case TOKEN_ID:
      case TOKEN_IMP:
      case TOKEN_IN:
      case TOKEN_INOUT:
      case TOKEN_ONEWAY:
      case TOKEN_OUT:
      case TOKEN_PROTOCOL_:
      case TOKEN_SEL:
      case TOKEN_SELF:
      case TOKEN_SUPER:
      case TOKEN_ATOMIC:
      case TOKEN_NONATOMIC:
      case TOKEN_RETAIN:
      case TOKEN_AUTORELEASING_QUALIFIER:
      case TOKEN_BLOCK:
      case TOKEN_BRIDGE_RETAINED:
      case TOKEN_BRIDGE_TRANSFER:
      case TOKEN_COVARIANT:
      case TOKEN_CONTRAVARIANT:
      case TOKEN_DEPRECATED:
      case TOKEN_KINDOF:
      case TOKEN_UNUSED:
      case TOKEN_NULL_UNSPECIFIED:
      case TOKEN_NULLABLE:
      case TOKEN_NONNULL:
      case TOKEN_NULL_RESETTABLE:
      case TOKEN_NS_INLINE:
      case TOKEN_NS_ENUM:
      case TOKEN_NS_OPTIONS:
      case TOKEN_ASSIGN:
      case TOKEN_COPY:
      case TOKEN_GETTER:
      case TOKEN_SETTER:
      case TOKEN_STRONG:
      case TOKEN_READONLY:
      case TOKEN_READWRITE:
      case TOKEN_WEAK:
      case TOKEN_UNSAFE_UNRETAINED:
      case TOKEN_IB_OUTLET:
      case TOKEN_IB_OUTLET_COLLECTION:
      case TOKEN_IB_INSPECTABLE:
      case TOKEN_IB_DESIGNABLE:
      case TOKEN_IDENTIFIER:
        enterOuterAlt(_localctx, 1);
        state = 1307;
        identifier();
        break;
      case TOKEN_DEFAULT:
        enterOuterAlt(_localctx, 2);
        state = 1308;
        match(TOKEN_DEFAULT);
        break;
      default:
        throw NoViableAltException(this);
      }
    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return _localctx;
  }

  DirectDeclaratorContext directDeclarator() {
    dynamic _localctx = DirectDeclaratorContext(context, state);
    enterRule(_localctx, 204, RULE_directDeclarator);
    int _la;
    try {
      state = 1334;
      errorHandler.sync(this);
      switch (interpreter.adaptivePredict(tokenStream, 179, context)) {
      case 1:
        enterOuterAlt(_localctx, 1);
        state = 1316;
        errorHandler.sync(this);
        switch (tokenStream.LA(1)) {
        case TOKEN_BOOL:
        case TOKEN_Class:
        case TOKEN_BYCOPY:
        case TOKEN_BYREF:
        case TOKEN_ID:
        case TOKEN_IMP:
        case TOKEN_IN:
        case TOKEN_INOUT:
        case TOKEN_ONEWAY:
        case TOKEN_OUT:
        case TOKEN_PROTOCOL_:
        case TOKEN_SEL:
        case TOKEN_SELF:
        case TOKEN_SUPER:
        case TOKEN_ATOMIC:
        case TOKEN_NONATOMIC:
        case TOKEN_RETAIN:
        case TOKEN_AUTORELEASING_QUALIFIER:
        case TOKEN_BLOCK:
        case TOKEN_BRIDGE_RETAINED:
        case TOKEN_BRIDGE_TRANSFER:
        case TOKEN_COVARIANT:
        case TOKEN_CONTRAVARIANT:
        case TOKEN_DEPRECATED:
        case TOKEN_KINDOF:
        case TOKEN_UNUSED:
        case TOKEN_NULL_UNSPECIFIED:
        case TOKEN_NULLABLE:
        case TOKEN_NONNULL:
        case TOKEN_NULL_RESETTABLE:
        case TOKEN_NS_INLINE:
        case TOKEN_NS_ENUM:
        case TOKEN_NS_OPTIONS:
        case TOKEN_ASSIGN:
        case TOKEN_COPY:
        case TOKEN_GETTER:
        case TOKEN_SETTER:
        case TOKEN_STRONG:
        case TOKEN_READONLY:
        case TOKEN_READWRITE:
        case TOKEN_WEAK:
        case TOKEN_UNSAFE_UNRETAINED:
        case TOKEN_IB_OUTLET:
        case TOKEN_IB_OUTLET_COLLECTION:
        case TOKEN_IB_INSPECTABLE:
        case TOKEN_IB_DESIGNABLE:
        case TOKEN_IDENTIFIER:
          state = 1311;
          identifier();
          break;
        case TOKEN_LP:
          state = 1312;
          match(TOKEN_LP);
          state = 1313;
          declarator();
          state = 1314;
          match(TOKEN_RP);
          break;
        default:
          throw NoViableAltException(this);
        }
        state = 1321;
        errorHandler.sync(this);
        _la = tokenStream.LA(1);
        while (_la == TOKEN_LBRACK) {
          state = 1318;
          declaratorSuffix();
          state = 1323;
          errorHandler.sync(this);
          _la = tokenStream.LA(1);
        }
        break;
      case 2:
        enterOuterAlt(_localctx, 2);
        state = 1324;
        match(TOKEN_LP);
        state = 1325;
        match(TOKEN_BITXOR);
        state = 1327;
        errorHandler.sync(this);
        switch (interpreter.adaptivePredict(tokenStream, 177, context)) {
        case 1:
          state = 1326;
          nullabilitySpecifier();
          break;
        }
        state = 1330;
        errorHandler.sync(this);
        _la = tokenStream.LA(1);
        if ((((_la) & ~0x3f) == 0 && ((BigInt.one << _la) & ((BigInt.one << TOKEN_BOOL) | (BigInt.one << TOKEN_Class) | (BigInt.one << TOKEN_BYCOPY) | (BigInt.one << TOKEN_BYREF) | (BigInt.one << TOKEN_ID) | (BigInt.one << TOKEN_IMP) | (BigInt.one << TOKEN_IN) | (BigInt.one << TOKEN_INOUT) | (BigInt.one << TOKEN_ONEWAY) | (BigInt.one << TOKEN_OUT) | (BigInt.one << TOKEN_PROTOCOL_) | (BigInt.one << TOKEN_SEL) | (BigInt.one << TOKEN_SELF) | (BigInt.one << TOKEN_SUPER))) != BigInt.zero) || ((((_la - 81)) & ~0x3f) == 0 && ((BigInt.one << (_la - 81)) & ((BigInt.one << (TOKEN_ATOMIC - 81)) | (BigInt.one << (TOKEN_NONATOMIC - 81)) | (BigInt.one << (TOKEN_RETAIN - 81)) | (BigInt.one << (TOKEN_AUTORELEASING_QUALIFIER - 81)) | (BigInt.one << (TOKEN_BLOCK - 81)) | (BigInt.one << (TOKEN_BRIDGE_RETAINED - 81)) | (BigInt.one << (TOKEN_BRIDGE_TRANSFER - 81)) | (BigInt.one << (TOKEN_COVARIANT - 81)) | (BigInt.one << (TOKEN_CONTRAVARIANT - 81)) | (BigInt.one << (TOKEN_DEPRECATED - 81)) | (BigInt.one << (TOKEN_KINDOF - 81)) | (BigInt.one << (TOKEN_UNUSED - 81)) | (BigInt.one << (TOKEN_NULL_UNSPECIFIED - 81)) | (BigInt.one << (TOKEN_NULLABLE - 81)) | (BigInt.one << (TOKEN_NONNULL - 81)) | (BigInt.one << (TOKEN_NULL_RESETTABLE - 81)) | (BigInt.one << (TOKEN_NS_INLINE - 81)) | (BigInt.one << (TOKEN_NS_ENUM - 81)) | (BigInt.one << (TOKEN_NS_OPTIONS - 81)) | (BigInt.one << (TOKEN_ASSIGN - 81)) | (BigInt.one << (TOKEN_COPY - 81)) | (BigInt.one << (TOKEN_GETTER - 81)) | (BigInt.one << (TOKEN_SETTER - 81)) | (BigInt.one << (TOKEN_STRONG - 81)) | (BigInt.one << (TOKEN_READONLY - 81)) | (BigInt.one << (TOKEN_READWRITE - 81)) | (BigInt.one << (TOKEN_WEAK - 81)) | (BigInt.one << (TOKEN_UNSAFE_UNRETAINED - 81)) | (BigInt.one << (TOKEN_IB_OUTLET - 81)) | (BigInt.one << (TOKEN_IB_OUTLET_COLLECTION - 81)) | (BigInt.one << (TOKEN_IB_INSPECTABLE - 81)) | (BigInt.one << (TOKEN_IB_DESIGNABLE - 81)) | (BigInt.one << (TOKEN_IDENTIFIER - 81)))) != BigInt.zero)) {
          state = 1329;
          identifier();
        }

        state = 1332;
        match(TOKEN_RP);
        state = 1333;
        blockParameters();
        break;
      }
    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return _localctx;
  }

  DeclaratorSuffixContext declaratorSuffix() {
    dynamic _localctx = DeclaratorSuffixContext(context, state);
    enterRule(_localctx, 206, RULE_declaratorSuffix);
    int _la;
    try {
      enterOuterAlt(_localctx, 1);
      state = 1336;
      match(TOKEN_LBRACK);
      state = 1338;
      errorHandler.sync(this);
      _la = tokenStream.LA(1);
      if ((((_la) & ~0x3f) == 0 && ((BigInt.one << _la) & ((BigInt.one << TOKEN_TRUE) | (BigInt.one << TOKEN_FALSE) | (BigInt.one << TOKEN_BOOL) | (BigInt.one << TOKEN_Class) | (BigInt.one << TOKEN_BYCOPY) | (BigInt.one << TOKEN_BYREF) | (BigInt.one << TOKEN_ID) | (BigInt.one << TOKEN_IMP) | (BigInt.one << TOKEN_IN) | (BigInt.one << TOKEN_INOUT) | (BigInt.one << TOKEN_NIL) | (BigInt.one << TOKEN_NO) | (BigInt.one << TOKEN_NULL) | (BigInt.one << TOKEN_ONEWAY) | (BigInt.one << TOKEN_OUT) | (BigInt.one << TOKEN_PROTOCOL_) | (BigInt.one << TOKEN_SEL) | (BigInt.one << TOKEN_SELF) | (BigInt.one << TOKEN_SUPER) | (BigInt.one << TOKEN_YES))) != BigInt.zero) || ((((_la - 81)) & ~0x3f) == 0 && ((BigInt.one << (_la - 81)) & ((BigInt.one << (TOKEN_ATOMIC - 81)) | (BigInt.one << (TOKEN_NONATOMIC - 81)) | (BigInt.one << (TOKEN_RETAIN - 81)) | (BigInt.one << (TOKEN_AUTORELEASING_QUALIFIER - 81)) | (BigInt.one << (TOKEN_BLOCK - 81)) | (BigInt.one << (TOKEN_BRIDGE_RETAINED - 81)) | (BigInt.one << (TOKEN_BRIDGE_TRANSFER - 81)) | (BigInt.one << (TOKEN_COVARIANT - 81)) | (BigInt.one << (TOKEN_CONTRAVARIANT - 81)) | (BigInt.one << (TOKEN_DEPRECATED - 81)) | (BigInt.one << (TOKEN_KINDOF - 81)) | (BigInt.one << (TOKEN_UNUSED - 81)) | (BigInt.one << (TOKEN_NULL_UNSPECIFIED - 81)) | (BigInt.one << (TOKEN_NULLABLE - 81)) | (BigInt.one << (TOKEN_NONNULL - 81)) | (BigInt.one << (TOKEN_NULL_RESETTABLE - 81)) | (BigInt.one << (TOKEN_NS_INLINE - 81)) | (BigInt.one << (TOKEN_NS_ENUM - 81)) | (BigInt.one << (TOKEN_NS_OPTIONS - 81)) | (BigInt.one << (TOKEN_ASSIGN - 81)) | (BigInt.one << (TOKEN_COPY - 81)) | (BigInt.one << (TOKEN_GETTER - 81)) | (BigInt.one << (TOKEN_SETTER - 81)) | (BigInt.one << (TOKEN_STRONG - 81)) | (BigInt.one << (TOKEN_READONLY - 81)) | (BigInt.one << (TOKEN_READWRITE - 81)) | (BigInt.one << (TOKEN_WEAK - 81)) | (BigInt.one << (TOKEN_UNSAFE_UNRETAINED - 81)) | (BigInt.one << (TOKEN_IB_OUTLET - 81)) | (BigInt.one << (TOKEN_IB_OUTLET_COLLECTION - 81)) | (BigInt.one << (TOKEN_IB_INSPECTABLE - 81)) | (BigInt.one << (TOKEN_IB_DESIGNABLE - 81)) | (BigInt.one << (TOKEN_IDENTIFIER - 81)))) != BigInt.zero) || ((((_la - 163)) & ~0x3f) == 0 && ((BigInt.one << (_la - 163)) & ((BigInt.one << (TOKEN_ADD - 163)) | (BigInt.one << (TOKEN_SUB - 163)) | (BigInt.one << (TOKEN_CHARACTER_LITERAL - 163)) | (BigInt.one << (TOKEN_HEX_LITERAL - 163)) | (BigInt.one << (TOKEN_OCTAL_LITERAL - 163)) | (BigInt.one << (TOKEN_BINARY_LITERAL - 163)) | (BigInt.one << (TOKEN_DECIMAL_LITERAL - 163)) | (BigInt.one << (TOKEN_FLOATING_POINT_LITERAL - 163)))) != BigInt.zero)) {
        state = 1337;
        constantExpression();
      }

      state = 1340;
      match(TOKEN_RBRACK);
    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return _localctx;
  }

  ParameterListContext parameterList() {
    dynamic _localctx = ParameterListContext(context, state);
    enterRule(_localctx, 208, RULE_parameterList);
    int _la;
    try {
      enterOuterAlt(_localctx, 1);
      state = 1342;
      parameterDeclarationList();
      state = 1345;
      errorHandler.sync(this);
      _la = tokenStream.LA(1);
      if (_la == TOKEN_COMMA) {
        state = 1343;
        match(TOKEN_COMMA);
        state = 1344;
        match(TOKEN_ELIPSIS);
      }

    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return _localctx;
  }

  PointerContext pointer() {
    dynamic _localctx = PointerContext(context, state);
    enterRule(_localctx, 210, RULE_pointer);
    try {
      enterOuterAlt(_localctx, 1);
      state = 1347;
      match(TOKEN_MUL);
      state = 1349;
      errorHandler.sync(this);
      switch (interpreter.adaptivePredict(tokenStream, 182, context)) {
      case 1:
        state = 1348;
        pointerQualifier();
        break;
      }
      state = 1352;
      errorHandler.sync(this);
      switch (interpreter.adaptivePredict(tokenStream, 183, context)) {
      case 1:
        state = 1351;
        _localctx.nextPointer = pointer();
        break;
      }
    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return _localctx;
  }

  MacroContext macro() {
    dynamic _localctx = MacroContext(context, state);
    enterRule(_localctx, 212, RULE_macro);
    int _la;
    try {
      enterOuterAlt(_localctx, 1);
      state = 1354;
      identifier();
      state = 1392;
      errorHandler.sync(this);
      _la = tokenStream.LA(1);
      if (_la == TOKEN_LP) {
        state = 1355;
        match(TOKEN_LP);
        state = 1378;
        errorHandler.sync(this);
        switch (interpreter.adaptivePredict(tokenStream, 187, context)) {
        case 1:
          state = 1356;
          _localctx._primaryExpression = primaryExpression();
          _localctx.messages.add(_localctx._primaryExpression);
          break;
        case 2:
          state = 1357;
          _localctx._osVersion = osVersion();
          _localctx.nativeOsVersions.add(_localctx._osVersion);
          break;
        case 3:
          state = 1358;
          identifier();
          state = 1363;
          errorHandler.sync(this);
          _la = tokenStream.LA(1);
          while (_la == TOKEN_DOT) {
            state = 1359;
            match(TOKEN_DOT);
            state = 1360;
            identifier();
            state = 1365;
            errorHandler.sync(this);
            _la = tokenStream.LA(1);
          }
          state = 1376;
          errorHandler.sync(this);
          _la = tokenStream.LA(1);
          if (_la == TOKEN_LP) {
            state = 1366;
            match(TOKEN_LP);
            state = 1372;
            errorHandler.sync(this);
            _la = tokenStream.LA(1);
            while ((((_la) & ~0x3f) == 0 && ((BigInt.one << _la) & ((BigInt.one << TOKEN_BOOL) | (BigInt.one << TOKEN_Class) | (BigInt.one << TOKEN_BYCOPY) | (BigInt.one << TOKEN_BYREF) | (BigInt.one << TOKEN_ID) | (BigInt.one << TOKEN_IMP) | (BigInt.one << TOKEN_IN) | (BigInt.one << TOKEN_INOUT) | (BigInt.one << TOKEN_ONEWAY) | (BigInt.one << TOKEN_OUT) | (BigInt.one << TOKEN_PROTOCOL_) | (BigInt.one << TOKEN_SEL) | (BigInt.one << TOKEN_SELF) | (BigInt.one << TOKEN_SUPER))) != BigInt.zero) || ((((_la - 81)) & ~0x3f) == 0 && ((BigInt.one << (_la - 81)) & ((BigInt.one << (TOKEN_ATOMIC - 81)) | (BigInt.one << (TOKEN_NONATOMIC - 81)) | (BigInt.one << (TOKEN_RETAIN - 81)) | (BigInt.one << (TOKEN_AUTORELEASING_QUALIFIER - 81)) | (BigInt.one << (TOKEN_BLOCK - 81)) | (BigInt.one << (TOKEN_BRIDGE_RETAINED - 81)) | (BigInt.one << (TOKEN_BRIDGE_TRANSFER - 81)) | (BigInt.one << (TOKEN_COVARIANT - 81)) | (BigInt.one << (TOKEN_CONTRAVARIANT - 81)) | (BigInt.one << (TOKEN_DEPRECATED - 81)) | (BigInt.one << (TOKEN_KINDOF - 81)) | (BigInt.one << (TOKEN_UNUSED - 81)) | (BigInt.one << (TOKEN_NULL_UNSPECIFIED - 81)) | (BigInt.one << (TOKEN_NULLABLE - 81)) | (BigInt.one << (TOKEN_NONNULL - 81)) | (BigInt.one << (TOKEN_NULL_RESETTABLE - 81)) | (BigInt.one << (TOKEN_NS_INLINE - 81)) | (BigInt.one << (TOKEN_NS_ENUM - 81)) | (BigInt.one << (TOKEN_NS_OPTIONS - 81)) | (BigInt.one << (TOKEN_ASSIGN - 81)) | (BigInt.one << (TOKEN_COPY - 81)) | (BigInt.one << (TOKEN_GETTER - 81)) | (BigInt.one << (TOKEN_SETTER - 81)) | (BigInt.one << (TOKEN_STRONG - 81)) | (BigInt.one << (TOKEN_READONLY - 81)) | (BigInt.one << (TOKEN_READWRITE - 81)) | (BigInt.one << (TOKEN_WEAK - 81)) | (BigInt.one << (TOKEN_UNSAFE_UNRETAINED - 81)) | (BigInt.one << (TOKEN_IB_OUTLET - 81)) | (BigInt.one << (TOKEN_IB_OUTLET_COLLECTION - 81)) | (BigInt.one << (TOKEN_IB_INSPECTABLE - 81)) | (BigInt.one << (TOKEN_IB_DESIGNABLE - 81)) | (BigInt.one << (TOKEN_IDENTIFIER - 81)))) != BigInt.zero)) {
              state = 1367;
              identifier();
              state = 1368;
              match(TOKEN_COLON);
              state = 1374;
              errorHandler.sync(this);
              _la = tokenStream.LA(1);
            }
            state = 1375;
            match(TOKEN_RP);
          }

          break;
        }
        state = 1387;
        errorHandler.sync(this);
        _la = tokenStream.LA(1);
        while (_la == TOKEN_COMMA) {
          state = 1380;
          match(TOKEN_COMMA);
          state = 1383;
          errorHandler.sync(this);
          switch (interpreter.adaptivePredict(tokenStream, 188, context)) {
          case 1:
            state = 1381;
            _localctx._primaryExpression = primaryExpression();
            _localctx.messages.add(_localctx._primaryExpression);
            break;
          case 2:
            state = 1382;
            _localctx._osVersion = osVersion();
            _localctx.nativeOsVersions.add(_localctx._osVersion);
            break;
          }
          state = 1389;
          errorHandler.sync(this);
          _la = tokenStream.LA(1);
        }
        state = 1390;
        match(TOKEN_RP);
      }

    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return _localctx;
  }

  ArrayInitializerContext arrayInitializer() {
    dynamic _localctx = ArrayInitializerContext(context, state);
    enterRule(_localctx, 214, RULE_arrayInitializer);
    int _la;
    try {
      enterOuterAlt(_localctx, 1);
      state = 1394;
      match(TOKEN_LBRACE);
      state = 1399;
      errorHandler.sync(this);
      _la = tokenStream.LA(1);
      if ((((_la) & ~0x3f) == 0 && ((BigInt.one << _la) & ((BigInt.one << TOKEN_SIZEOF) | (BigInt.one << TOKEN_TRUE) | (BigInt.one << TOKEN_FALSE) | (BigInt.one << TOKEN_BOOL) | (BigInt.one << TOKEN_Class) | (BigInt.one << TOKEN_BYCOPY) | (BigInt.one << TOKEN_BYREF) | (BigInt.one << TOKEN_ID) | (BigInt.one << TOKEN_IMP) | (BigInt.one << TOKEN_IN) | (BigInt.one << TOKEN_INOUT) | (BigInt.one << TOKEN_NIL) | (BigInt.one << TOKEN_NO) | (BigInt.one << TOKEN_NULL) | (BigInt.one << TOKEN_ONEWAY) | (BigInt.one << TOKEN_OUT) | (BigInt.one << TOKEN_PROTOCOL_) | (BigInt.one << TOKEN_SEL) | (BigInt.one << TOKEN_SELF) | (BigInt.one << TOKEN_SUPER) | (BigInt.one << TOKEN_YES) | (BigInt.one << TOKEN_ENCODE))) != BigInt.zero) || ((((_la - 69)) & ~0x3f) == 0 && ((BigInt.one << (_la - 69)) & ((BigInt.one << (TOKEN_PROTOCOL - 69)) | (BigInt.one << (TOKEN_SELECTOR - 69)) | (BigInt.one << (TOKEN_ATOMIC - 69)) | (BigInt.one << (TOKEN_NONATOMIC - 69)) | (BigInt.one << (TOKEN_RETAIN - 69)) | (BigInt.one << (TOKEN_AUTORELEASING_QUALIFIER - 69)) | (BigInt.one << (TOKEN_BLOCK - 69)) | (BigInt.one << (TOKEN_BRIDGE_RETAINED - 69)) | (BigInt.one << (TOKEN_BRIDGE_TRANSFER - 69)) | (BigInt.one << (TOKEN_COVARIANT - 69)) | (BigInt.one << (TOKEN_CONTRAVARIANT - 69)) | (BigInt.one << (TOKEN_DEPRECATED - 69)) | (BigInt.one << (TOKEN_KINDOF - 69)) | (BigInt.one << (TOKEN_UNUSED - 69)) | (BigInt.one << (TOKEN_NULL_UNSPECIFIED - 69)) | (BigInt.one << (TOKEN_NULLABLE - 69)) | (BigInt.one << (TOKEN_NONNULL - 69)) | (BigInt.one << (TOKEN_NULL_RESETTABLE - 69)) | (BigInt.one << (TOKEN_NS_INLINE - 69)) | (BigInt.one << (TOKEN_NS_ENUM - 69)) | (BigInt.one << (TOKEN_NS_OPTIONS - 69)) | (BigInt.one << (TOKEN_ASSIGN - 69)) | (BigInt.one << (TOKEN_COPY - 69)) | (BigInt.one << (TOKEN_GETTER - 69)) | (BigInt.one << (TOKEN_SETTER - 69)) | (BigInt.one << (TOKEN_STRONG - 69)) | (BigInt.one << (TOKEN_READONLY - 69)) | (BigInt.one << (TOKEN_READWRITE - 69)) | (BigInt.one << (TOKEN_WEAK - 69)) | (BigInt.one << (TOKEN_UNSAFE_UNRETAINED - 69)) | (BigInt.one << (TOKEN_IB_OUTLET - 69)) | (BigInt.one << (TOKEN_IB_OUTLET_COLLECTION - 69)) | (BigInt.one << (TOKEN_IB_INSPECTABLE - 69)) | (BigInt.one << (TOKEN_IB_DESIGNABLE - 69)))) != BigInt.zero) || ((((_la - 136)) & ~0x3f) == 0 && ((BigInt.one << (_la - 136)) & ((BigInt.one << (TOKEN_IDENTIFIER - 136)) | (BigInt.one << (TOKEN_LP - 136)) | (BigInt.one << (TOKEN_LBRACK - 136)) | (BigInt.one << (TOKEN_AT - 136)) | (BigInt.one << (TOKEN_BANG - 136)) | (BigInt.one << (TOKEN_TILDE - 136)) | (BigInt.one << (TOKEN_INC - 136)) | (BigInt.one << (TOKEN_DEC - 136)) | (BigInt.one << (TOKEN_ADD - 136)) | (BigInt.one << (TOKEN_SUB - 136)) | (BigInt.one << (TOKEN_MUL - 136)) | (BigInt.one << (TOKEN_BITAND - 136)) | (BigInt.one << (TOKEN_BITXOR - 136)) | (BigInt.one << (TOKEN_CHARACTER_LITERAL - 136)) | (BigInt.one << (TOKEN_STRING_START - 136)) | (BigInt.one << (TOKEN_HEX_LITERAL - 136)) | (BigInt.one << (TOKEN_OCTAL_LITERAL - 136)) | (BigInt.one << (TOKEN_BINARY_LITERAL - 136)) | (BigInt.one << (TOKEN_DECIMAL_LITERAL - 136)) | (BigInt.one << (TOKEN_FLOATING_POINT_LITERAL - 136)))) != BigInt.zero)) {
        state = 1395;
        expressions();
        state = 1397;
        errorHandler.sync(this);
        _la = tokenStream.LA(1);
        if (_la == TOKEN_COMMA) {
          state = 1396;
          match(TOKEN_COMMA);
        }

      }

      state = 1401;
      match(TOKEN_RBRACE);
    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return _localctx;
  }

  StructInitializerContext structInitializer() {
    dynamic _localctx = StructInitializerContext(context, state);
    enterRule(_localctx, 216, RULE_structInitializer);
    int _la;
    try {
      int _alt;
      enterOuterAlt(_localctx, 1);
      state = 1403;
      match(TOKEN_LBRACE);
      state = 1417;
      errorHandler.sync(this);
      _la = tokenStream.LA(1);
      if (_la == TOKEN_DOT) {
        state = 1404;
        match(TOKEN_DOT);
        state = 1405;
        expression(0);
        state = 1411;
        errorHandler.sync(this);
        _alt = interpreter.adaptivePredict(tokenStream, 193, context);
        while (_alt != 2 && _alt != ATN.INVALID_ALT_NUMBER) {
          if (_alt == 1) {
            state = 1406;
            match(TOKEN_COMMA);
            state = 1407;
            match(TOKEN_DOT);
            state = 1408;
            expression(0); 
          }
          state = 1413;
          errorHandler.sync(this);
          _alt = interpreter.adaptivePredict(tokenStream, 193, context);
        }
        state = 1415;
        errorHandler.sync(this);
        _la = tokenStream.LA(1);
        if (_la == TOKEN_COMMA) {
          state = 1414;
          match(TOKEN_COMMA);
        }

      }

      state = 1419;
      match(TOKEN_RBRACE);
    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return _localctx;
  }

  InitializerListContext initializerList() {
    dynamic _localctx = InitializerListContext(context, state);
    enterRule(_localctx, 218, RULE_initializerList);
    int _la;
    try {
      int _alt;
      enterOuterAlt(_localctx, 1);
      state = 1421;
      initializer();
      state = 1426;
      errorHandler.sync(this);
      _alt = interpreter.adaptivePredict(tokenStream, 196, context);
      while (_alt != 2 && _alt != ATN.INVALID_ALT_NUMBER) {
        if (_alt == 1) {
          state = 1422;
          match(TOKEN_COMMA);
          state = 1423;
          initializer(); 
        }
        state = 1428;
        errorHandler.sync(this);
        _alt = interpreter.adaptivePredict(tokenStream, 196, context);
      }
      state = 1430;
      errorHandler.sync(this);
      _la = tokenStream.LA(1);
      if (_la == TOKEN_COMMA) {
        state = 1429;
        match(TOKEN_COMMA);
      }

    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return _localctx;
  }

  TypeNameContext typeName() {
    dynamic _localctx = TypeNameContext(context, state);
    enterRule(_localctx, 220, RULE_typeName);
    int _la;
    try {
      state = 1438;
      errorHandler.sync(this);
      switch (interpreter.adaptivePredict(tokenStream, 199, context)) {
      case 1:
        enterOuterAlt(_localctx, 1);
        state = 1432;
        specifierQualifierList();
        state = 1434;
        errorHandler.sync(this);
        _la = tokenStream.LA(1);
        if (((((_la - 137)) & ~0x3f) == 0 && ((BigInt.one << (_la - 137)) & ((BigInt.one << (TOKEN_LP - 137)) | (BigInt.one << (TOKEN_LBRACK - 137)) | (BigInt.one << (TOKEN_MUL - 137)))) != BigInt.zero)) {
          state = 1433;
          abstractDeclarator();
        }

        break;
      case 2:
        enterOuterAlt(_localctx, 2);
        state = 1436;
        blockType();
        break;
      case 3:
        enterOuterAlt(_localctx, 3);
        state = 1437;
        functionPointer();
        break;
      }
    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return _localctx;
  }

  AbstractDeclaratorContext abstractDeclarator() {
    dynamic _localctx = AbstractDeclaratorContext(context, state);
    enterRule(_localctx, 222, RULE_abstractDeclarator);
    int _la;
    try {
      state = 1463;
      errorHandler.sync(this);
      switch (tokenStream.LA(1)) {
      case TOKEN_MUL:
        enterOuterAlt(_localctx, 1);
        state = 1440;
        pointer();
        state = 1442;
        errorHandler.sync(this);
        _la = tokenStream.LA(1);
        if (((((_la - 137)) & ~0x3f) == 0 && ((BigInt.one << (_la - 137)) & ((BigInt.one << (TOKEN_LP - 137)) | (BigInt.one << (TOKEN_LBRACK - 137)) | (BigInt.one << (TOKEN_MUL - 137)))) != BigInt.zero)) {
          state = 1441;
          abstractDeclarator();
        }

        break;
      case TOKEN_LP:
        enterOuterAlt(_localctx, 2);
        state = 1444;
        match(TOKEN_LP);
        state = 1446;
        errorHandler.sync(this);
        _la = tokenStream.LA(1);
        if (((((_la - 137)) & ~0x3f) == 0 && ((BigInt.one << (_la - 137)) & ((BigInt.one << (TOKEN_LP - 137)) | (BigInt.one << (TOKEN_LBRACK - 137)) | (BigInt.one << (TOKEN_MUL - 137)))) != BigInt.zero)) {
          state = 1445;
          abstractDeclarator();
        }

        state = 1448;
        match(TOKEN_RP);
        state = 1450; 
        errorHandler.sync(this);
        _la = tokenStream.LA(1);
        do {
          state = 1449;
          abstractDeclaratorSuffix();
          state = 1452; 
          errorHandler.sync(this);
          _la = tokenStream.LA(1);
        } while (_la == TOKEN_LP || _la == TOKEN_LBRACK);
        break;
      case TOKEN_LBRACK:
        enterOuterAlt(_localctx, 3);
        state = 1459; 
        errorHandler.sync(this);
        _la = tokenStream.LA(1);
        do {
          state = 1454;
          match(TOKEN_LBRACK);
          state = 1456;
          errorHandler.sync(this);
          _la = tokenStream.LA(1);
          if ((((_la) & ~0x3f) == 0 && ((BigInt.one << _la) & ((BigInt.one << TOKEN_TRUE) | (BigInt.one << TOKEN_FALSE) | (BigInt.one << TOKEN_BOOL) | (BigInt.one << TOKEN_Class) | (BigInt.one << TOKEN_BYCOPY) | (BigInt.one << TOKEN_BYREF) | (BigInt.one << TOKEN_ID) | (BigInt.one << TOKEN_IMP) | (BigInt.one << TOKEN_IN) | (BigInt.one << TOKEN_INOUT) | (BigInt.one << TOKEN_NIL) | (BigInt.one << TOKEN_NO) | (BigInt.one << TOKEN_NULL) | (BigInt.one << TOKEN_ONEWAY) | (BigInt.one << TOKEN_OUT) | (BigInt.one << TOKEN_PROTOCOL_) | (BigInt.one << TOKEN_SEL) | (BigInt.one << TOKEN_SELF) | (BigInt.one << TOKEN_SUPER) | (BigInt.one << TOKEN_YES))) != BigInt.zero) || ((((_la - 81)) & ~0x3f) == 0 && ((BigInt.one << (_la - 81)) & ((BigInt.one << (TOKEN_ATOMIC - 81)) | (BigInt.one << (TOKEN_NONATOMIC - 81)) | (BigInt.one << (TOKEN_RETAIN - 81)) | (BigInt.one << (TOKEN_AUTORELEASING_QUALIFIER - 81)) | (BigInt.one << (TOKEN_BLOCK - 81)) | (BigInt.one << (TOKEN_BRIDGE_RETAINED - 81)) | (BigInt.one << (TOKEN_BRIDGE_TRANSFER - 81)) | (BigInt.one << (TOKEN_COVARIANT - 81)) | (BigInt.one << (TOKEN_CONTRAVARIANT - 81)) | (BigInt.one << (TOKEN_DEPRECATED - 81)) | (BigInt.one << (TOKEN_KINDOF - 81)) | (BigInt.one << (TOKEN_UNUSED - 81)) | (BigInt.one << (TOKEN_NULL_UNSPECIFIED - 81)) | (BigInt.one << (TOKEN_NULLABLE - 81)) | (BigInt.one << (TOKEN_NONNULL - 81)) | (BigInt.one << (TOKEN_NULL_RESETTABLE - 81)) | (BigInt.one << (TOKEN_NS_INLINE - 81)) | (BigInt.one << (TOKEN_NS_ENUM - 81)) | (BigInt.one << (TOKEN_NS_OPTIONS - 81)) | (BigInt.one << (TOKEN_ASSIGN - 81)) | (BigInt.one << (TOKEN_COPY - 81)) | (BigInt.one << (TOKEN_GETTER - 81)) | (BigInt.one << (TOKEN_SETTER - 81)) | (BigInt.one << (TOKEN_STRONG - 81)) | (BigInt.one << (TOKEN_READONLY - 81)) | (BigInt.one << (TOKEN_READWRITE - 81)) | (BigInt.one << (TOKEN_WEAK - 81)) | (BigInt.one << (TOKEN_UNSAFE_UNRETAINED - 81)) | (BigInt.one << (TOKEN_IB_OUTLET - 81)) | (BigInt.one << (TOKEN_IB_OUTLET_COLLECTION - 81)) | (BigInt.one << (TOKEN_IB_INSPECTABLE - 81)) | (BigInt.one << (TOKEN_IB_DESIGNABLE - 81)) | (BigInt.one << (TOKEN_IDENTIFIER - 81)))) != BigInt.zero) || ((((_la - 163)) & ~0x3f) == 0 && ((BigInt.one << (_la - 163)) & ((BigInt.one << (TOKEN_ADD - 163)) | (BigInt.one << (TOKEN_SUB - 163)) | (BigInt.one << (TOKEN_CHARACTER_LITERAL - 163)) | (BigInt.one << (TOKEN_HEX_LITERAL - 163)) | (BigInt.one << (TOKEN_OCTAL_LITERAL - 163)) | (BigInt.one << (TOKEN_BINARY_LITERAL - 163)) | (BigInt.one << (TOKEN_DECIMAL_LITERAL - 163)) | (BigInt.one << (TOKEN_FLOATING_POINT_LITERAL - 163)))) != BigInt.zero)) {
            state = 1455;
            constantExpression();
          }

          state = 1458;
          match(TOKEN_RBRACK);
          state = 1461; 
          errorHandler.sync(this);
          _la = tokenStream.LA(1);
        } while (_la == TOKEN_LBRACK);
        break;
      default:
        throw NoViableAltException(this);
      }
    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return _localctx;
  }

  AbstractDeclaratorSuffixContext abstractDeclaratorSuffix() {
    dynamic _localctx = AbstractDeclaratorSuffixContext(context, state);
    enterRule(_localctx, 224, RULE_abstractDeclaratorSuffix);
    int _la;
    try {
      state = 1475;
      errorHandler.sync(this);
      switch (tokenStream.LA(1)) {
      case TOKEN_LBRACK:
        enterOuterAlt(_localctx, 1);
        state = 1465;
        match(TOKEN_LBRACK);
        state = 1467;
        errorHandler.sync(this);
        _la = tokenStream.LA(1);
        if ((((_la) & ~0x3f) == 0 && ((BigInt.one << _la) & ((BigInt.one << TOKEN_TRUE) | (BigInt.one << TOKEN_FALSE) | (BigInt.one << TOKEN_BOOL) | (BigInt.one << TOKEN_Class) | (BigInt.one << TOKEN_BYCOPY) | (BigInt.one << TOKEN_BYREF) | (BigInt.one << TOKEN_ID) | (BigInt.one << TOKEN_IMP) | (BigInt.one << TOKEN_IN) | (BigInt.one << TOKEN_INOUT) | (BigInt.one << TOKEN_NIL) | (BigInt.one << TOKEN_NO) | (BigInt.one << TOKEN_NULL) | (BigInt.one << TOKEN_ONEWAY) | (BigInt.one << TOKEN_OUT) | (BigInt.one << TOKEN_PROTOCOL_) | (BigInt.one << TOKEN_SEL) | (BigInt.one << TOKEN_SELF) | (BigInt.one << TOKEN_SUPER) | (BigInt.one << TOKEN_YES))) != BigInt.zero) || ((((_la - 81)) & ~0x3f) == 0 && ((BigInt.one << (_la - 81)) & ((BigInt.one << (TOKEN_ATOMIC - 81)) | (BigInt.one << (TOKEN_NONATOMIC - 81)) | (BigInt.one << (TOKEN_RETAIN - 81)) | (BigInt.one << (TOKEN_AUTORELEASING_QUALIFIER - 81)) | (BigInt.one << (TOKEN_BLOCK - 81)) | (BigInt.one << (TOKEN_BRIDGE_RETAINED - 81)) | (BigInt.one << (TOKEN_BRIDGE_TRANSFER - 81)) | (BigInt.one << (TOKEN_COVARIANT - 81)) | (BigInt.one << (TOKEN_CONTRAVARIANT - 81)) | (BigInt.one << (TOKEN_DEPRECATED - 81)) | (BigInt.one << (TOKEN_KINDOF - 81)) | (BigInt.one << (TOKEN_UNUSED - 81)) | (BigInt.one << (TOKEN_NULL_UNSPECIFIED - 81)) | (BigInt.one << (TOKEN_NULLABLE - 81)) | (BigInt.one << (TOKEN_NONNULL - 81)) | (BigInt.one << (TOKEN_NULL_RESETTABLE - 81)) | (BigInt.one << (TOKEN_NS_INLINE - 81)) | (BigInt.one << (TOKEN_NS_ENUM - 81)) | (BigInt.one << (TOKEN_NS_OPTIONS - 81)) | (BigInt.one << (TOKEN_ASSIGN - 81)) | (BigInt.one << (TOKEN_COPY - 81)) | (BigInt.one << (TOKEN_GETTER - 81)) | (BigInt.one << (TOKEN_SETTER - 81)) | (BigInt.one << (TOKEN_STRONG - 81)) | (BigInt.one << (TOKEN_READONLY - 81)) | (BigInt.one << (TOKEN_READWRITE - 81)) | (BigInt.one << (TOKEN_WEAK - 81)) | (BigInt.one << (TOKEN_UNSAFE_UNRETAINED - 81)) | (BigInt.one << (TOKEN_IB_OUTLET - 81)) | (BigInt.one << (TOKEN_IB_OUTLET_COLLECTION - 81)) | (BigInt.one << (TOKEN_IB_INSPECTABLE - 81)) | (BigInt.one << (TOKEN_IB_DESIGNABLE - 81)) | (BigInt.one << (TOKEN_IDENTIFIER - 81)))) != BigInt.zero) || ((((_la - 163)) & ~0x3f) == 0 && ((BigInt.one << (_la - 163)) & ((BigInt.one << (TOKEN_ADD - 163)) | (BigInt.one << (TOKEN_SUB - 163)) | (BigInt.one << (TOKEN_CHARACTER_LITERAL - 163)) | (BigInt.one << (TOKEN_HEX_LITERAL - 163)) | (BigInt.one << (TOKEN_OCTAL_LITERAL - 163)) | (BigInt.one << (TOKEN_BINARY_LITERAL - 163)) | (BigInt.one << (TOKEN_DECIMAL_LITERAL - 163)) | (BigInt.one << (TOKEN_FLOATING_POINT_LITERAL - 163)))) != BigInt.zero)) {
          state = 1466;
          constantExpression();
        }

        state = 1469;
        match(TOKEN_RBRACK);
        break;
      case TOKEN_LP:
        enterOuterAlt(_localctx, 2);
        state = 1470;
        match(TOKEN_LP);
        state = 1472;
        errorHandler.sync(this);
        _la = tokenStream.LA(1);
        if ((((_la) & ~0x3f) == 0 && ((BigInt.one << _la) & ((BigInt.one << TOKEN_AUTO) | (BigInt.one << TOKEN_CHAR) | (BigInt.one << TOKEN_CONST) | (BigInt.one << TOKEN_DOUBLE) | (BigInt.one << TOKEN_ENUM) | (BigInt.one << TOKEN_EXTERN) | (BigInt.one << TOKEN_FLOAT) | (BigInt.one << TOKEN_INLINE) | (BigInt.one << TOKEN_INT) | (BigInt.one << TOKEN_LONG) | (BigInt.one << TOKEN_REGISTER) | (BigInt.one << TOKEN_RESTRICT) | (BigInt.one << TOKEN_SHORT) | (BigInt.one << TOKEN_SIGNED) | (BigInt.one << TOKEN_STATIC) | (BigInt.one << TOKEN_STRUCT) | (BigInt.one << TOKEN_UNION) | (BigInt.one << TOKEN_UNSIGNED) | (BigInt.one << TOKEN_VOID) | (BigInt.one << TOKEN_VOLATILE) | (BigInt.one << TOKEN_BOOL) | (BigInt.one << TOKEN_Class) | (BigInt.one << TOKEN_BYCOPY) | (BigInt.one << TOKEN_BYREF) | (BigInt.one << TOKEN_ID) | (BigInt.one << TOKEN_IMP) | (BigInt.one << TOKEN_IN) | (BigInt.one << TOKEN_INOUT) | (BigInt.one << TOKEN_ONEWAY) | (BigInt.one << TOKEN_OUT) | (BigInt.one << TOKEN_PROTOCOL_) | (BigInt.one << TOKEN_SEL) | (BigInt.one << TOKEN_SELF) | (BigInt.one << TOKEN_SUPER))) != BigInt.zero) || ((((_la - 81)) & ~0x3f) == 0 && ((BigInt.one << (_la - 81)) & ((BigInt.one << (TOKEN_ATOMIC - 81)) | (BigInt.one << (TOKEN_NONATOMIC - 81)) | (BigInt.one << (TOKEN_RETAIN - 81)) | (BigInt.one << (TOKEN_ATTRIBUTE - 81)) | (BigInt.one << (TOKEN_AUTORELEASING_QUALIFIER - 81)) | (BigInt.one << (TOKEN_BLOCK - 81)) | (BigInt.one << (TOKEN_BRIDGE - 81)) | (BigInt.one << (TOKEN_BRIDGE_RETAINED - 81)) | (BigInt.one << (TOKEN_BRIDGE_TRANSFER - 81)) | (BigInt.one << (TOKEN_COVARIANT - 81)) | (BigInt.one << (TOKEN_CONTRAVARIANT - 81)) | (BigInt.one << (TOKEN_DEPRECATED - 81)) | (BigInt.one << (TOKEN_KINDOF - 81)) | (BigInt.one << (TOKEN_STRONG_QUALIFIER - 81)) | (BigInt.one << (TOKEN_TYPEOF - 81)) | (BigInt.one << (TOKEN_UNSAFE_UNRETAINED_QUALIFIER - 81)) | (BigInt.one << (TOKEN_UNUSED - 81)) | (BigInt.one << (TOKEN_WEAK_QUALIFIER - 81)) | (BigInt.one << (TOKEN_NULL_UNSPECIFIED - 81)) | (BigInt.one << (TOKEN_NULLABLE - 81)) | (BigInt.one << (TOKEN_NONNULL - 81)) | (BigInt.one << (TOKEN_NULL_RESETTABLE - 81)) | (BigInt.one << (TOKEN_NS_INLINE - 81)) | (BigInt.one << (TOKEN_NS_ENUM - 81)) | (BigInt.one << (TOKEN_NS_OPTIONS - 81)) | (BigInt.one << (TOKEN_NS_CLOSED_ENUM - 81)) | (BigInt.one << (TOKEN_NS_ERROR_ENUM - 81)) | (BigInt.one << (TOKEN_ASSIGN - 81)) | (BigInt.one << (TOKEN_COPY - 81)) | (BigInt.one << (TOKEN_GETTER - 81)) | (BigInt.one << (TOKEN_SETTER - 81)) | (BigInt.one << (TOKEN_STRONG - 81)) | (BigInt.one << (TOKEN_READONLY - 81)) | (BigInt.one << (TOKEN_READWRITE - 81)) | (BigInt.one << (TOKEN_WEAK - 81)) | (BigInt.one << (TOKEN_UNSAFE_UNRETAINED - 81)) | (BigInt.one << (TOKEN_IB_OUTLET - 81)) | (BigInt.one << (TOKEN_IB_OUTLET_COLLECTION - 81)) | (BigInt.one << (TOKEN_IB_INSPECTABLE - 81)) | (BigInt.one << (TOKEN_IB_DESIGNABLE - 81)) | (BigInt.one << (TOKEN_IDENTIFIER - 81)) | (BigInt.one << (TOKEN_LP - 81)))) != BigInt.zero)) {
          state = 1471;
          parameterDeclarationList();
        }

        state = 1474;
        match(TOKEN_RP);
        break;
      default:
        throw NoViableAltException(this);
      }
    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return _localctx;
  }

  ParameterDeclarationListContext parameterDeclarationList() {
    dynamic _localctx = ParameterDeclarationListContext(context, state);
    enterRule(_localctx, 226, RULE_parameterDeclarationList);
    try {
      int _alt;
      enterOuterAlt(_localctx, 1);
      state = 1477;
      parameterDeclaration();
      state = 1482;
      errorHandler.sync(this);
      _alt = interpreter.adaptivePredict(tokenStream, 209, context);
      while (_alt != 2 && _alt != ATN.INVALID_ALT_NUMBER) {
        if (_alt == 1) {
          state = 1478;
          match(TOKEN_COMMA);
          state = 1479;
          parameterDeclaration(); 
        }
        state = 1484;
        errorHandler.sync(this);
        _alt = interpreter.adaptivePredict(tokenStream, 209, context);
      }
    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return _localctx;
  }

  ParameterDeclarationContext parameterDeclaration() {
    dynamic _localctx = ParameterDeclarationContext(context, state);
    enterRule(_localctx, 228, RULE_parameterDeclaration);
    int _la;
    try {
      state = 1491;
      errorHandler.sync(this);
      switch (interpreter.adaptivePredict(tokenStream, 211, context)) {
      case 1:
        enterOuterAlt(_localctx, 1);
        state = 1485;
        declarationSpecifiers();
        state = 1487;
        errorHandler.sync(this);
        _la = tokenStream.LA(1);
        if (((((_la - 40)) & ~0x3f) == 0 && ((BigInt.one << (_la - 40)) & ((BigInt.one << (TOKEN_BOOL - 40)) | (BigInt.one << (TOKEN_Class - 40)) | (BigInt.one << (TOKEN_BYCOPY - 40)) | (BigInt.one << (TOKEN_BYREF - 40)) | (BigInt.one << (TOKEN_ID - 40)) | (BigInt.one << (TOKEN_IMP - 40)) | (BigInt.one << (TOKEN_IN - 40)) | (BigInt.one << (TOKEN_INOUT - 40)) | (BigInt.one << (TOKEN_ONEWAY - 40)) | (BigInt.one << (TOKEN_OUT - 40)) | (BigInt.one << (TOKEN_PROTOCOL_ - 40)) | (BigInt.one << (TOKEN_SEL - 40)) | (BigInt.one << (TOKEN_SELF - 40)) | (BigInt.one << (TOKEN_SUPER - 40)) | (BigInt.one << (TOKEN_ATOMIC - 40)) | (BigInt.one << (TOKEN_NONATOMIC - 40)) | (BigInt.one << (TOKEN_RETAIN - 40)) | (BigInt.one << (TOKEN_AUTORELEASING_QUALIFIER - 40)) | (BigInt.one << (TOKEN_BLOCK - 40)) | (BigInt.one << (TOKEN_BRIDGE_RETAINED - 40)) | (BigInt.one << (TOKEN_BRIDGE_TRANSFER - 40)) | (BigInt.one << (TOKEN_COVARIANT - 40)) | (BigInt.one << (TOKEN_CONTRAVARIANT - 40)) | (BigInt.one << (TOKEN_DEPRECATED - 40)) | (BigInt.one << (TOKEN_KINDOF - 40)) | (BigInt.one << (TOKEN_UNUSED - 40)) | (BigInt.one << (TOKEN_NULL_UNSPECIFIED - 40)) | (BigInt.one << (TOKEN_NULLABLE - 40)) | (BigInt.one << (TOKEN_NONNULL - 40)) | (BigInt.one << (TOKEN_NULL_RESETTABLE - 40)) | (BigInt.one << (TOKEN_NS_INLINE - 40)))) != BigInt.zero) || ((((_la - 104)) & ~0x3f) == 0 && ((BigInt.one << (_la - 104)) & ((BigInt.one << (TOKEN_NS_ENUM - 104)) | (BigInt.one << (TOKEN_NS_OPTIONS - 104)) | (BigInt.one << (TOKEN_ASSIGN - 104)) | (BigInt.one << (TOKEN_COPY - 104)) | (BigInt.one << (TOKEN_GETTER - 104)) | (BigInt.one << (TOKEN_SETTER - 104)) | (BigInt.one << (TOKEN_STRONG - 104)) | (BigInt.one << (TOKEN_READONLY - 104)) | (BigInt.one << (TOKEN_READWRITE - 104)) | (BigInt.one << (TOKEN_WEAK - 104)) | (BigInt.one << (TOKEN_UNSAFE_UNRETAINED - 104)) | (BigInt.one << (TOKEN_IB_OUTLET - 104)) | (BigInt.one << (TOKEN_IB_OUTLET_COLLECTION - 104)) | (BigInt.one << (TOKEN_IB_INSPECTABLE - 104)) | (BigInt.one << (TOKEN_IB_DESIGNABLE - 104)) | (BigInt.one << (TOKEN_IDENTIFIER - 104)) | (BigInt.one << (TOKEN_LP - 104)) | (BigInt.one << (TOKEN_MUL - 104)))) != BigInt.zero)) {
          state = 1486;
          declarator();
        }

        break;
      case 2:
        enterOuterAlt(_localctx, 2);
        state = 1489;
        match(TOKEN_VOID);
        break;
      case 3:
        enterOuterAlt(_localctx, 3);
        state = 1490;
        functionPointer();
        break;
      }
    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return _localctx;
  }

  DeclaratorContext declarator() {
    dynamic _localctx = DeclaratorContext(context, state);
    enterRule(_localctx, 230, RULE_declarator);
    int _la;
    try {
      enterOuterAlt(_localctx, 1);
      state = 1494;
      errorHandler.sync(this);
      _la = tokenStream.LA(1);
      if (_la == TOKEN_MUL) {
        state = 1493;
        pointer();
      }

      state = 1496;
      directDeclarator();
    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return _localctx;
  }

  StatementContext statement() {
    dynamic _localctx = StatementContext(context, state);
    enterRule(_localctx, 232, RULE_statement);
    try {
      state = 1539;
      errorHandler.sync(this);
      switch (interpreter.adaptivePredict(tokenStream, 223, context)) {
      case 1:
        enterOuterAlt(_localctx, 1);
        state = 1498;
        labeledStatement();
        state = 1500;
        errorHandler.sync(this);
        switch (interpreter.adaptivePredict(tokenStream, 213, context)) {
        case 1:
          state = 1499;
          match(TOKEN_SEMI);
          break;
        }
        break;
      case 2:
        enterOuterAlt(_localctx, 2);
        state = 1502;
        compoundStatement();
        state = 1504;
        errorHandler.sync(this);
        switch (interpreter.adaptivePredict(tokenStream, 214, context)) {
        case 1:
          state = 1503;
          match(TOKEN_SEMI);
          break;
        }
        break;
      case 3:
        enterOuterAlt(_localctx, 3);
        state = 1506;
        selectionStatement();
        state = 1508;
        errorHandler.sync(this);
        switch (interpreter.adaptivePredict(tokenStream, 215, context)) {
        case 1:
          state = 1507;
          match(TOKEN_SEMI);
          break;
        }
        break;
      case 4:
        enterOuterAlt(_localctx, 4);
        state = 1510;
        iterationStatement();
        state = 1512;
        errorHandler.sync(this);
        switch (interpreter.adaptivePredict(tokenStream, 216, context)) {
        case 1:
          state = 1511;
          match(TOKEN_SEMI);
          break;
        }
        break;
      case 5:
        enterOuterAlt(_localctx, 5);
        state = 1514;
        jumpStatement();
        state = 1516;
        errorHandler.sync(this);
        switch (interpreter.adaptivePredict(tokenStream, 217, context)) {
        case 1:
          state = 1515;
          match(TOKEN_SEMI);
          break;
        }
        break;
      case 6:
        enterOuterAlt(_localctx, 6);
        state = 1518;
        synchronizedStatement();
        state = 1520;
        errorHandler.sync(this);
        switch (interpreter.adaptivePredict(tokenStream, 218, context)) {
        case 1:
          state = 1519;
          match(TOKEN_SEMI);
          break;
        }
        break;
      case 7:
        enterOuterAlt(_localctx, 7);
        state = 1522;
        autoreleaseStatement();
        state = 1524;
        errorHandler.sync(this);
        switch (interpreter.adaptivePredict(tokenStream, 219, context)) {
        case 1:
          state = 1523;
          match(TOKEN_SEMI);
          break;
        }
        break;
      case 8:
        enterOuterAlt(_localctx, 8);
        state = 1526;
        throwStatement();
        state = 1528;
        errorHandler.sync(this);
        switch (interpreter.adaptivePredict(tokenStream, 220, context)) {
        case 1:
          state = 1527;
          match(TOKEN_SEMI);
          break;
        }
        break;
      case 9:
        enterOuterAlt(_localctx, 9);
        state = 1530;
        tryBlock();
        state = 1532;
        errorHandler.sync(this);
        switch (interpreter.adaptivePredict(tokenStream, 221, context)) {
        case 1:
          state = 1531;
          match(TOKEN_SEMI);
          break;
        }
        break;
      case 10:
        enterOuterAlt(_localctx, 10);
        state = 1534;
        expressions();
        state = 1536;
        errorHandler.sync(this);
        switch (interpreter.adaptivePredict(tokenStream, 222, context)) {
        case 1:
          state = 1535;
          match(TOKEN_SEMI);
          break;
        }
        break;
      case 11:
        enterOuterAlt(_localctx, 11);
        state = 1538;
        match(TOKEN_SEMI);
        break;
      }
    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return _localctx;
  }

  LabeledStatementContext labeledStatement() {
    dynamic _localctx = LabeledStatementContext(context, state);
    enterRule(_localctx, 234, RULE_labeledStatement);
    try {
      enterOuterAlt(_localctx, 1);
      state = 1541;
      identifier();
      state = 1542;
      match(TOKEN_COLON);
      state = 1543;
      statement();
    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return _localctx;
  }

  RangeExpressionContext rangeExpression() {
    dynamic _localctx = RangeExpressionContext(context, state);
    enterRule(_localctx, 236, RULE_rangeExpression);
    int _la;
    try {
      enterOuterAlt(_localctx, 1);
      state = 1545;
      constantExpression();
      state = 1548;
      errorHandler.sync(this);
      _la = tokenStream.LA(1);
      if (_la == TOKEN_ELIPSIS) {
        state = 1546;
        match(TOKEN_ELIPSIS);
        state = 1547;
        constantExpression();
      }

    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return _localctx;
  }

  CompoundStatementContext compoundStatement() {
    dynamic _localctx = CompoundStatementContext(context, state);
    enterRule(_localctx, 238, RULE_compoundStatement);
    int _la;
    try {
      enterOuterAlt(_localctx, 1);
      state = 1550;
      match(TOKEN_LBRACE);
      state = 1555;
      errorHandler.sync(this);
      _la = tokenStream.LA(1);
      while ((((_la) & ~0x3f) == 0 && ((BigInt.one << _la) & ((BigInt.one << TOKEN_AUTO) | (BigInt.one << TOKEN_BREAK) | (BigInt.one << TOKEN_CHAR) | (BigInt.one << TOKEN_CONST) | (BigInt.one << TOKEN_CONTINUE) | (BigInt.one << TOKEN_DO) | (BigInt.one << TOKEN_DOUBLE) | (BigInt.one << TOKEN_ENUM) | (BigInt.one << TOKEN_EXTERN) | (BigInt.one << TOKEN_FLOAT) | (BigInt.one << TOKEN_FOR) | (BigInt.one << TOKEN_GOTO) | (BigInt.one << TOKEN_IF) | (BigInt.one << TOKEN_INLINE) | (BigInt.one << TOKEN_INT) | (BigInt.one << TOKEN_LONG) | (BigInt.one << TOKEN_REGISTER) | (BigInt.one << TOKEN_RESTRICT) | (BigInt.one << TOKEN_RETURN) | (BigInt.one << TOKEN_SHORT) | (BigInt.one << TOKEN_SIGNED) | (BigInt.one << TOKEN_SIZEOF) | (BigInt.one << TOKEN_STATIC) | (BigInt.one << TOKEN_STRUCT) | (BigInt.one << TOKEN_SWITCH) | (BigInt.one << TOKEN_TYPEDEF) | (BigInt.one << TOKEN_UNION) | (BigInt.one << TOKEN_UNSIGNED) | (BigInt.one << TOKEN_VOID) | (BigInt.one << TOKEN_VOLATILE) | (BigInt.one << TOKEN_WHILE) | (BigInt.one << TOKEN_TRUE) | (BigInt.one << TOKEN_FALSE) | (BigInt.one << TOKEN_BOOL) | (BigInt.one << TOKEN_Class) | (BigInt.one << TOKEN_BYCOPY) | (BigInt.one << TOKEN_BYREF) | (BigInt.one << TOKEN_ID) | (BigInt.one << TOKEN_IMP) | (BigInt.one << TOKEN_IN) | (BigInt.one << TOKEN_INOUT) | (BigInt.one << TOKEN_NIL) | (BigInt.one << TOKEN_NO) | (BigInt.one << TOKEN_NULL) | (BigInt.one << TOKEN_ONEWAY) | (BigInt.one << TOKEN_OUT) | (BigInt.one << TOKEN_PROTOCOL_) | (BigInt.one << TOKEN_SEL) | (BigInt.one << TOKEN_SELF) | (BigInt.one << TOKEN_SUPER) | (BigInt.one << TOKEN_YES) | (BigInt.one << TOKEN_AUTORELEASEPOOL) | (BigInt.one << TOKEN_ENCODE))) != BigInt.zero) || ((((_la - 69)) & ~0x3f) == 0 && ((BigInt.one << (_la - 69)) & ((BigInt.one << (TOKEN_PROTOCOL - 69)) | (BigInt.one << (TOKEN_SELECTOR - 69)) | (BigInt.one << (TOKEN_SYNCHRONIZED - 69)) | (BigInt.one << (TOKEN_THROW - 69)) | (BigInt.one << (TOKEN_TRY - 69)) | (BigInt.one << (TOKEN_ATOMIC - 69)) | (BigInt.one << (TOKEN_NONATOMIC - 69)) | (BigInt.one << (TOKEN_RETAIN - 69)) | (BigInt.one << (TOKEN_ATTRIBUTE - 69)) | (BigInt.one << (TOKEN_AUTORELEASING_QUALIFIER - 69)) | (BigInt.one << (TOKEN_BLOCK - 69)) | (BigInt.one << (TOKEN_BRIDGE - 69)) | (BigInt.one << (TOKEN_BRIDGE_RETAINED - 69)) | (BigInt.one << (TOKEN_BRIDGE_TRANSFER - 69)) | (BigInt.one << (TOKEN_COVARIANT - 69)) | (BigInt.one << (TOKEN_CONTRAVARIANT - 69)) | (BigInt.one << (TOKEN_DEPRECATED - 69)) | (BigInt.one << (TOKEN_KINDOF - 69)) | (BigInt.one << (TOKEN_STRONG_QUALIFIER - 69)) | (BigInt.one << (TOKEN_TYPEOF - 69)) | (BigInt.one << (TOKEN_UNSAFE_UNRETAINED_QUALIFIER - 69)) | (BigInt.one << (TOKEN_UNUSED - 69)) | (BigInt.one << (TOKEN_WEAK_QUALIFIER - 69)) | (BigInt.one << (TOKEN_NULL_UNSPECIFIED - 69)) | (BigInt.one << (TOKEN_NULLABLE - 69)) | (BigInt.one << (TOKEN_NONNULL - 69)) | (BigInt.one << (TOKEN_NULL_RESETTABLE - 69)) | (BigInt.one << (TOKEN_NS_INLINE - 69)) | (BigInt.one << (TOKEN_NS_ENUM - 69)) | (BigInt.one << (TOKEN_NS_OPTIONS - 69)) | (BigInt.one << (TOKEN_NS_CLOSED_ENUM - 69)) | (BigInt.one << (TOKEN_NS_ERROR_ENUM - 69)) | (BigInt.one << (TOKEN_ASSIGN - 69)) | (BigInt.one << (TOKEN_COPY - 69)) | (BigInt.one << (TOKEN_GETTER - 69)) | (BigInt.one << (TOKEN_SETTER - 69)) | (BigInt.one << (TOKEN_STRONG - 69)) | (BigInt.one << (TOKEN_READONLY - 69)) | (BigInt.one << (TOKEN_READWRITE - 69)) | (BigInt.one << (TOKEN_WEAK - 69)) | (BigInt.one << (TOKEN_UNSAFE_UNRETAINED - 69)) | (BigInt.one << (TOKEN_IB_OUTLET - 69)) | (BigInt.one << (TOKEN_IB_OUTLET_COLLECTION - 69)) | (BigInt.one << (TOKEN_IB_INSPECTABLE - 69)) | (BigInt.one << (TOKEN_IB_DESIGNABLE - 69)))) != BigInt.zero) || ((((_la - 136)) & ~0x3f) == 0 && ((BigInt.one << (_la - 136)) & ((BigInt.one << (TOKEN_IDENTIFIER - 136)) | (BigInt.one << (TOKEN_LP - 136)) | (BigInt.one << (TOKEN_LBRACE - 136)) | (BigInt.one << (TOKEN_LBRACK - 136)) | (BigInt.one << (TOKEN_SEMI - 136)) | (BigInt.one << (TOKEN_AT - 136)) | (BigInt.one << (TOKEN_BANG - 136)) | (BigInt.one << (TOKEN_TILDE - 136)) | (BigInt.one << (TOKEN_INC - 136)) | (BigInt.one << (TOKEN_DEC - 136)) | (BigInt.one << (TOKEN_ADD - 136)) | (BigInt.one << (TOKEN_SUB - 136)) | (BigInt.one << (TOKEN_MUL - 136)) | (BigInt.one << (TOKEN_BITAND - 136)) | (BigInt.one << (TOKEN_BITXOR - 136)) | (BigInt.one << (TOKEN_CHARACTER_LITERAL - 136)) | (BigInt.one << (TOKEN_STRING_START - 136)) | (BigInt.one << (TOKEN_HEX_LITERAL - 136)) | (BigInt.one << (TOKEN_OCTAL_LITERAL - 136)) | (BigInt.one << (TOKEN_BINARY_LITERAL - 136)) | (BigInt.one << (TOKEN_DECIMAL_LITERAL - 136)) | (BigInt.one << (TOKEN_FLOATING_POINT_LITERAL - 136)))) != BigInt.zero)) {
        state = 1553;
        errorHandler.sync(this);
        switch (interpreter.adaptivePredict(tokenStream, 225, context)) {
        case 1:
          state = 1551;
          declaration();
          break;
        case 2:
          state = 1552;
          statement();
          break;
        }
        state = 1557;
        errorHandler.sync(this);
        _la = tokenStream.LA(1);
      }
      state = 1558;
      match(TOKEN_RBRACE);
    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return _localctx;
  }

  SelectionStatementContext selectionStatement() {
    dynamic _localctx = SelectionStatementContext(context, state);
    enterRule(_localctx, 240, RULE_selectionStatement);
    try {
      state = 1570;
      errorHandler.sync(this);
      switch (tokenStream.LA(1)) {
      case TOKEN_IF:
        enterOuterAlt(_localctx, 1);
        state = 1560;
        match(TOKEN_IF);
        state = 1561;
        match(TOKEN_LP);
        state = 1562;
        expression(0);
        state = 1563;
        match(TOKEN_RP);
        state = 1564;
        _localctx.ifBody = statement();
        state = 1567;
        errorHandler.sync(this);
        switch (interpreter.adaptivePredict(tokenStream, 227, context)) {
        case 1:
          state = 1565;
          match(TOKEN_ELSE);
          state = 1566;
          _localctx.elseBody = statement();
          break;
        }
        break;
      case TOKEN_SWITCH:
        enterOuterAlt(_localctx, 2);
        state = 1569;
        switchStatement();
        break;
      default:
        throw NoViableAltException(this);
      }
    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return _localctx;
  }

  SwitchStatementContext switchStatement() {
    dynamic _localctx = SwitchStatementContext(context, state);
    enterRule(_localctx, 242, RULE_switchStatement);
    try {
      enterOuterAlt(_localctx, 1);
      state = 1572;
      match(TOKEN_SWITCH);
      state = 1573;
      match(TOKEN_LP);
      state = 1574;
      expression(0);
      state = 1575;
      match(TOKEN_RP);
      state = 1576;
      switchBlock();
    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return _localctx;
  }

  SwitchBlockContext switchBlock() {
    dynamic _localctx = SwitchBlockContext(context, state);
    enterRule(_localctx, 244, RULE_switchBlock);
    int _la;
    try {
      enterOuterAlt(_localctx, 1);
      state = 1578;
      match(TOKEN_LBRACE);
      state = 1582;
      errorHandler.sync(this);
      _la = tokenStream.LA(1);
      while (_la == TOKEN_CASE || _la == TOKEN_DEFAULT) {
        state = 1579;
        switchSection();
        state = 1584;
        errorHandler.sync(this);
        _la = tokenStream.LA(1);
      }
      state = 1585;
      match(TOKEN_RBRACE);
    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return _localctx;
  }

  SwitchSectionContext switchSection() {
    dynamic _localctx = SwitchSectionContext(context, state);
    enterRule(_localctx, 246, RULE_switchSection);
    int _la;
    try {
      enterOuterAlt(_localctx, 1);
      state = 1588; 
      errorHandler.sync(this);
      _la = tokenStream.LA(1);
      do {
        state = 1587;
        switchLabel();
        state = 1590; 
        errorHandler.sync(this);
        _la = tokenStream.LA(1);
      } while (_la == TOKEN_CASE || _la == TOKEN_DEFAULT);
      state = 1593; 
      errorHandler.sync(this);
      _la = tokenStream.LA(1);
      do {
        state = 1592;
        statement();
        state = 1595; 
        errorHandler.sync(this);
        _la = tokenStream.LA(1);
      } while ((((_la) & ~0x3f) == 0 && ((BigInt.one << _la) & ((BigInt.one << TOKEN_BREAK) | (BigInt.one << TOKEN_CONTINUE) | (BigInt.one << TOKEN_DO) | (BigInt.one << TOKEN_FOR) | (BigInt.one << TOKEN_GOTO) | (BigInt.one << TOKEN_IF) | (BigInt.one << TOKEN_RETURN) | (BigInt.one << TOKEN_SIZEOF) | (BigInt.one << TOKEN_SWITCH) | (BigInt.one << TOKEN_WHILE) | (BigInt.one << TOKEN_TRUE) | (BigInt.one << TOKEN_FALSE) | (BigInt.one << TOKEN_BOOL) | (BigInt.one << TOKEN_Class) | (BigInt.one << TOKEN_BYCOPY) | (BigInt.one << TOKEN_BYREF) | (BigInt.one << TOKEN_ID) | (BigInt.one << TOKEN_IMP) | (BigInt.one << TOKEN_IN) | (BigInt.one << TOKEN_INOUT) | (BigInt.one << TOKEN_NIL) | (BigInt.one << TOKEN_NO) | (BigInt.one << TOKEN_NULL) | (BigInt.one << TOKEN_ONEWAY) | (BigInt.one << TOKEN_OUT) | (BigInt.one << TOKEN_PROTOCOL_) | (BigInt.one << TOKEN_SEL) | (BigInt.one << TOKEN_SELF) | (BigInt.one << TOKEN_SUPER) | (BigInt.one << TOKEN_YES) | (BigInt.one << TOKEN_AUTORELEASEPOOL) | (BigInt.one << TOKEN_ENCODE))) != BigInt.zero) || ((((_la - 69)) & ~0x3f) == 0 && ((BigInt.one << (_la - 69)) & ((BigInt.one << (TOKEN_PROTOCOL - 69)) | (BigInt.one << (TOKEN_SELECTOR - 69)) | (BigInt.one << (TOKEN_SYNCHRONIZED - 69)) | (BigInt.one << (TOKEN_THROW - 69)) | (BigInt.one << (TOKEN_TRY - 69)) | (BigInt.one << (TOKEN_ATOMIC - 69)) | (BigInt.one << (TOKEN_NONATOMIC - 69)) | (BigInt.one << (TOKEN_RETAIN - 69)) | (BigInt.one << (TOKEN_AUTORELEASING_QUALIFIER - 69)) | (BigInt.one << (TOKEN_BLOCK - 69)) | (BigInt.one << (TOKEN_BRIDGE_RETAINED - 69)) | (BigInt.one << (TOKEN_BRIDGE_TRANSFER - 69)) | (BigInt.one << (TOKEN_COVARIANT - 69)) | (BigInt.one << (TOKEN_CONTRAVARIANT - 69)) | (BigInt.one << (TOKEN_DEPRECATED - 69)) | (BigInt.one << (TOKEN_KINDOF - 69)) | (BigInt.one << (TOKEN_UNUSED - 69)) | (BigInt.one << (TOKEN_NULL_UNSPECIFIED - 69)) | (BigInt.one << (TOKEN_NULLABLE - 69)) | (BigInt.one << (TOKEN_NONNULL - 69)) | (BigInt.one << (TOKEN_NULL_RESETTABLE - 69)) | (BigInt.one << (TOKEN_NS_INLINE - 69)) | (BigInt.one << (TOKEN_NS_ENUM - 69)) | (BigInt.one << (TOKEN_NS_OPTIONS - 69)) | (BigInt.one << (TOKEN_ASSIGN - 69)) | (BigInt.one << (TOKEN_COPY - 69)) | (BigInt.one << (TOKEN_GETTER - 69)) | (BigInt.one << (TOKEN_SETTER - 69)) | (BigInt.one << (TOKEN_STRONG - 69)) | (BigInt.one << (TOKEN_READONLY - 69)) | (BigInt.one << (TOKEN_READWRITE - 69)) | (BigInt.one << (TOKEN_WEAK - 69)) | (BigInt.one << (TOKEN_UNSAFE_UNRETAINED - 69)) | (BigInt.one << (TOKEN_IB_OUTLET - 69)) | (BigInt.one << (TOKEN_IB_OUTLET_COLLECTION - 69)) | (BigInt.one << (TOKEN_IB_INSPECTABLE - 69)) | (BigInt.one << (TOKEN_IB_DESIGNABLE - 69)))) != BigInt.zero) || ((((_la - 136)) & ~0x3f) == 0 && ((BigInt.one << (_la - 136)) & ((BigInt.one << (TOKEN_IDENTIFIER - 136)) | (BigInt.one << (TOKEN_LP - 136)) | (BigInt.one << (TOKEN_LBRACE - 136)) | (BigInt.one << (TOKEN_LBRACK - 136)) | (BigInt.one << (TOKEN_SEMI - 136)) | (BigInt.one << (TOKEN_AT - 136)) | (BigInt.one << (TOKEN_BANG - 136)) | (BigInt.one << (TOKEN_TILDE - 136)) | (BigInt.one << (TOKEN_INC - 136)) | (BigInt.one << (TOKEN_DEC - 136)) | (BigInt.one << (TOKEN_ADD - 136)) | (BigInt.one << (TOKEN_SUB - 136)) | (BigInt.one << (TOKEN_MUL - 136)) | (BigInt.one << (TOKEN_BITAND - 136)) | (BigInt.one << (TOKEN_BITXOR - 136)) | (BigInt.one << (TOKEN_CHARACTER_LITERAL - 136)) | (BigInt.one << (TOKEN_STRING_START - 136)) | (BigInt.one << (TOKEN_HEX_LITERAL - 136)) | (BigInt.one << (TOKEN_OCTAL_LITERAL - 136)) | (BigInt.one << (TOKEN_BINARY_LITERAL - 136)) | (BigInt.one << (TOKEN_DECIMAL_LITERAL - 136)) | (BigInt.one << (TOKEN_FLOATING_POINT_LITERAL - 136)))) != BigInt.zero));
    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return _localctx;
  }

  SwitchLabelContext switchLabel() {
    dynamic _localctx = SwitchLabelContext(context, state);
    enterRule(_localctx, 248, RULE_switchLabel);
    try {
      state = 1609;
      errorHandler.sync(this);
      switch (tokenStream.LA(1)) {
      case TOKEN_CASE:
        enterOuterAlt(_localctx, 1);
        state = 1597;
        match(TOKEN_CASE);
        state = 1603;
        errorHandler.sync(this);
        switch (tokenStream.LA(1)) {
        case TOKEN_TRUE:
        case TOKEN_FALSE:
        case TOKEN_BOOL:
        case TOKEN_Class:
        case TOKEN_BYCOPY:
        case TOKEN_BYREF:
        case TOKEN_ID:
        case TOKEN_IMP:
        case TOKEN_IN:
        case TOKEN_INOUT:
        case TOKEN_NIL:
        case TOKEN_NO:
        case TOKEN_NULL:
        case TOKEN_ONEWAY:
        case TOKEN_OUT:
        case TOKEN_PROTOCOL_:
        case TOKEN_SEL:
        case TOKEN_SELF:
        case TOKEN_SUPER:
        case TOKEN_YES:
        case TOKEN_ATOMIC:
        case TOKEN_NONATOMIC:
        case TOKEN_RETAIN:
        case TOKEN_AUTORELEASING_QUALIFIER:
        case TOKEN_BLOCK:
        case TOKEN_BRIDGE_RETAINED:
        case TOKEN_BRIDGE_TRANSFER:
        case TOKEN_COVARIANT:
        case TOKEN_CONTRAVARIANT:
        case TOKEN_DEPRECATED:
        case TOKEN_KINDOF:
        case TOKEN_UNUSED:
        case TOKEN_NULL_UNSPECIFIED:
        case TOKEN_NULLABLE:
        case TOKEN_NONNULL:
        case TOKEN_NULL_RESETTABLE:
        case TOKEN_NS_INLINE:
        case TOKEN_NS_ENUM:
        case TOKEN_NS_OPTIONS:
        case TOKEN_ASSIGN:
        case TOKEN_COPY:
        case TOKEN_GETTER:
        case TOKEN_SETTER:
        case TOKEN_STRONG:
        case TOKEN_READONLY:
        case TOKEN_READWRITE:
        case TOKEN_WEAK:
        case TOKEN_UNSAFE_UNRETAINED:
        case TOKEN_IB_OUTLET:
        case TOKEN_IB_OUTLET_COLLECTION:
        case TOKEN_IB_INSPECTABLE:
        case TOKEN_IB_DESIGNABLE:
        case TOKEN_IDENTIFIER:
        case TOKEN_ADD:
        case TOKEN_SUB:
        case TOKEN_CHARACTER_LITERAL:
        case TOKEN_HEX_LITERAL:
        case TOKEN_OCTAL_LITERAL:
        case TOKEN_BINARY_LITERAL:
        case TOKEN_DECIMAL_LITERAL:
        case TOKEN_FLOATING_POINT_LITERAL:
          state = 1598;
          rangeExpression();
          break;
        case TOKEN_LP:
          state = 1599;
          match(TOKEN_LP);
          state = 1600;
          rangeExpression();
          state = 1601;
          match(TOKEN_RP);
          break;
        default:
          throw NoViableAltException(this);
        }
        state = 1605;
        match(TOKEN_COLON);
        break;
      case TOKEN_DEFAULT:
        enterOuterAlt(_localctx, 2);
        state = 1607;
        match(TOKEN_DEFAULT);
        state = 1608;
        match(TOKEN_COLON);
        break;
      default:
        throw NoViableAltException(this);
      }
    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return _localctx;
  }

  IterationStatementContext iterationStatement() {
    dynamic _localctx = IterationStatementContext(context, state);
    enterRule(_localctx, 250, RULE_iterationStatement);
    try {
      state = 1615;
      errorHandler.sync(this);
      switch (interpreter.adaptivePredict(tokenStream, 234, context)) {
      case 1:
        enterOuterAlt(_localctx, 1);
        state = 1611;
        whileStatement();
        break;
      case 2:
        enterOuterAlt(_localctx, 2);
        state = 1612;
        doStatement();
        break;
      case 3:
        enterOuterAlt(_localctx, 3);
        state = 1613;
        forStatement();
        break;
      case 4:
        enterOuterAlt(_localctx, 4);
        state = 1614;
        forInStatement();
        break;
      }
    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return _localctx;
  }

  WhileStatementContext whileStatement() {
    dynamic _localctx = WhileStatementContext(context, state);
    enterRule(_localctx, 252, RULE_whileStatement);
    try {
      enterOuterAlt(_localctx, 1);
      state = 1617;
      match(TOKEN_WHILE);
      state = 1618;
      match(TOKEN_LP);
      state = 1619;
      expression(0);
      state = 1620;
      match(TOKEN_RP);
      state = 1621;
      statement();
    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return _localctx;
  }

  DoStatementContext doStatement() {
    dynamic _localctx = DoStatementContext(context, state);
    enterRule(_localctx, 254, RULE_doStatement);
    try {
      enterOuterAlt(_localctx, 1);
      state = 1623;
      match(TOKEN_DO);
      state = 1624;
      statement();
      state = 1625;
      match(TOKEN_WHILE);
      state = 1626;
      match(TOKEN_LP);
      state = 1627;
      expression(0);
      state = 1628;
      match(TOKEN_RP);
      state = 1629;
      match(TOKEN_SEMI);
    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return _localctx;
  }

  ForStatementContext forStatement() {
    dynamic _localctx = ForStatementContext(context, state);
    enterRule(_localctx, 256, RULE_forStatement);
    int _la;
    try {
      enterOuterAlt(_localctx, 1);
      state = 1631;
      match(TOKEN_FOR);
      state = 1632;
      match(TOKEN_LP);
      state = 1634;
      errorHandler.sync(this);
      _la = tokenStream.LA(1);
      if ((((_la) & ~0x3f) == 0 && ((BigInt.one << _la) & ((BigInt.one << TOKEN_AUTO) | (BigInt.one << TOKEN_CHAR) | (BigInt.one << TOKEN_CONST) | (BigInt.one << TOKEN_DOUBLE) | (BigInt.one << TOKEN_ENUM) | (BigInt.one << TOKEN_EXTERN) | (BigInt.one << TOKEN_FLOAT) | (BigInt.one << TOKEN_INLINE) | (BigInt.one << TOKEN_INT) | (BigInt.one << TOKEN_LONG) | (BigInt.one << TOKEN_REGISTER) | (BigInt.one << TOKEN_RESTRICT) | (BigInt.one << TOKEN_SHORT) | (BigInt.one << TOKEN_SIGNED) | (BigInt.one << TOKEN_SIZEOF) | (BigInt.one << TOKEN_STATIC) | (BigInt.one << TOKEN_STRUCT) | (BigInt.one << TOKEN_UNION) | (BigInt.one << TOKEN_UNSIGNED) | (BigInt.one << TOKEN_VOID) | (BigInt.one << TOKEN_VOLATILE) | (BigInt.one << TOKEN_TRUE) | (BigInt.one << TOKEN_FALSE) | (BigInt.one << TOKEN_BOOL) | (BigInt.one << TOKEN_Class) | (BigInt.one << TOKEN_BYCOPY) | (BigInt.one << TOKEN_BYREF) | (BigInt.one << TOKEN_ID) | (BigInt.one << TOKEN_IMP) | (BigInt.one << TOKEN_IN) | (BigInt.one << TOKEN_INOUT) | (BigInt.one << TOKEN_NIL) | (BigInt.one << TOKEN_NO) | (BigInt.one << TOKEN_NULL) | (BigInt.one << TOKEN_ONEWAY) | (BigInt.one << TOKEN_OUT) | (BigInt.one << TOKEN_PROTOCOL_) | (BigInt.one << TOKEN_SEL) | (BigInt.one << TOKEN_SELF) | (BigInt.one << TOKEN_SUPER) | (BigInt.one << TOKEN_YES) | (BigInt.one << TOKEN_ENCODE))) != BigInt.zero) || ((((_la - 69)) & ~0x3f) == 0 && ((BigInt.one << (_la - 69)) & ((BigInt.one << (TOKEN_PROTOCOL - 69)) | (BigInt.one << (TOKEN_SELECTOR - 69)) | (BigInt.one << (TOKEN_ATOMIC - 69)) | (BigInt.one << (TOKEN_NONATOMIC - 69)) | (BigInt.one << (TOKEN_RETAIN - 69)) | (BigInt.one << (TOKEN_ATTRIBUTE - 69)) | (BigInt.one << (TOKEN_AUTORELEASING_QUALIFIER - 69)) | (BigInt.one << (TOKEN_BLOCK - 69)) | (BigInt.one << (TOKEN_BRIDGE - 69)) | (BigInt.one << (TOKEN_BRIDGE_RETAINED - 69)) | (BigInt.one << (TOKEN_BRIDGE_TRANSFER - 69)) | (BigInt.one << (TOKEN_COVARIANT - 69)) | (BigInt.one << (TOKEN_CONTRAVARIANT - 69)) | (BigInt.one << (TOKEN_DEPRECATED - 69)) | (BigInt.one << (TOKEN_KINDOF - 69)) | (BigInt.one << (TOKEN_STRONG_QUALIFIER - 69)) | (BigInt.one << (TOKEN_TYPEOF - 69)) | (BigInt.one << (TOKEN_UNSAFE_UNRETAINED_QUALIFIER - 69)) | (BigInt.one << (TOKEN_UNUSED - 69)) | (BigInt.one << (TOKEN_WEAK_QUALIFIER - 69)) | (BigInt.one << (TOKEN_NULL_UNSPECIFIED - 69)) | (BigInt.one << (TOKEN_NULLABLE - 69)) | (BigInt.one << (TOKEN_NONNULL - 69)) | (BigInt.one << (TOKEN_NULL_RESETTABLE - 69)) | (BigInt.one << (TOKEN_NS_INLINE - 69)) | (BigInt.one << (TOKEN_NS_ENUM - 69)) | (BigInt.one << (TOKEN_NS_OPTIONS - 69)) | (BigInt.one << (TOKEN_NS_CLOSED_ENUM - 69)) | (BigInt.one << (TOKEN_NS_ERROR_ENUM - 69)) | (BigInt.one << (TOKEN_ASSIGN - 69)) | (BigInt.one << (TOKEN_COPY - 69)) | (BigInt.one << (TOKEN_GETTER - 69)) | (BigInt.one << (TOKEN_SETTER - 69)) | (BigInt.one << (TOKEN_STRONG - 69)) | (BigInt.one << (TOKEN_READONLY - 69)) | (BigInt.one << (TOKEN_READWRITE - 69)) | (BigInt.one << (TOKEN_WEAK - 69)) | (BigInt.one << (TOKEN_UNSAFE_UNRETAINED - 69)) | (BigInt.one << (TOKEN_IB_OUTLET - 69)) | (BigInt.one << (TOKEN_IB_OUTLET_COLLECTION - 69)) | (BigInt.one << (TOKEN_IB_INSPECTABLE - 69)) | (BigInt.one << (TOKEN_IB_DESIGNABLE - 69)))) != BigInt.zero) || ((((_la - 136)) & ~0x3f) == 0 && ((BigInt.one << (_la - 136)) & ((BigInt.one << (TOKEN_IDENTIFIER - 136)) | (BigInt.one << (TOKEN_LP - 136)) | (BigInt.one << (TOKEN_LBRACK - 136)) | (BigInt.one << (TOKEN_AT - 136)) | (BigInt.one << (TOKEN_BANG - 136)) | (BigInt.one << (TOKEN_TILDE - 136)) | (BigInt.one << (TOKEN_INC - 136)) | (BigInt.one << (TOKEN_DEC - 136)) | (BigInt.one << (TOKEN_ADD - 136)) | (BigInt.one << (TOKEN_SUB - 136)) | (BigInt.one << (TOKEN_MUL - 136)) | (BigInt.one << (TOKEN_BITAND - 136)) | (BigInt.one << (TOKEN_BITXOR - 136)) | (BigInt.one << (TOKEN_CHARACTER_LITERAL - 136)) | (BigInt.one << (TOKEN_STRING_START - 136)) | (BigInt.one << (TOKEN_HEX_LITERAL - 136)) | (BigInt.one << (TOKEN_OCTAL_LITERAL - 136)) | (BigInt.one << (TOKEN_BINARY_LITERAL - 136)) | (BigInt.one << (TOKEN_DECIMAL_LITERAL - 136)) | (BigInt.one << (TOKEN_FLOATING_POINT_LITERAL - 136)))) != BigInt.zero)) {
        state = 1633;
        forLoopInitializer();
      }

      state = 1636;
      match(TOKEN_SEMI);
      state = 1638;
      errorHandler.sync(this);
      _la = tokenStream.LA(1);
      if ((((_la) & ~0x3f) == 0 && ((BigInt.one << _la) & ((BigInt.one << TOKEN_SIZEOF) | (BigInt.one << TOKEN_TRUE) | (BigInt.one << TOKEN_FALSE) | (BigInt.one << TOKEN_BOOL) | (BigInt.one << TOKEN_Class) | (BigInt.one << TOKEN_BYCOPY) | (BigInt.one << TOKEN_BYREF) | (BigInt.one << TOKEN_ID) | (BigInt.one << TOKEN_IMP) | (BigInt.one << TOKEN_IN) | (BigInt.one << TOKEN_INOUT) | (BigInt.one << TOKEN_NIL) | (BigInt.one << TOKEN_NO) | (BigInt.one << TOKEN_NULL) | (BigInt.one << TOKEN_ONEWAY) | (BigInt.one << TOKEN_OUT) | (BigInt.one << TOKEN_PROTOCOL_) | (BigInt.one << TOKEN_SEL) | (BigInt.one << TOKEN_SELF) | (BigInt.one << TOKEN_SUPER) | (BigInt.one << TOKEN_YES) | (BigInt.one << TOKEN_ENCODE))) != BigInt.zero) || ((((_la - 69)) & ~0x3f) == 0 && ((BigInt.one << (_la - 69)) & ((BigInt.one << (TOKEN_PROTOCOL - 69)) | (BigInt.one << (TOKEN_SELECTOR - 69)) | (BigInt.one << (TOKEN_ATOMIC - 69)) | (BigInt.one << (TOKEN_NONATOMIC - 69)) | (BigInt.one << (TOKEN_RETAIN - 69)) | (BigInt.one << (TOKEN_AUTORELEASING_QUALIFIER - 69)) | (BigInt.one << (TOKEN_BLOCK - 69)) | (BigInt.one << (TOKEN_BRIDGE_RETAINED - 69)) | (BigInt.one << (TOKEN_BRIDGE_TRANSFER - 69)) | (BigInt.one << (TOKEN_COVARIANT - 69)) | (BigInt.one << (TOKEN_CONTRAVARIANT - 69)) | (BigInt.one << (TOKEN_DEPRECATED - 69)) | (BigInt.one << (TOKEN_KINDOF - 69)) | (BigInt.one << (TOKEN_UNUSED - 69)) | (BigInt.one << (TOKEN_NULL_UNSPECIFIED - 69)) | (BigInt.one << (TOKEN_NULLABLE - 69)) | (BigInt.one << (TOKEN_NONNULL - 69)) | (BigInt.one << (TOKEN_NULL_RESETTABLE - 69)) | (BigInt.one << (TOKEN_NS_INLINE - 69)) | (BigInt.one << (TOKEN_NS_ENUM - 69)) | (BigInt.one << (TOKEN_NS_OPTIONS - 69)) | (BigInt.one << (TOKEN_ASSIGN - 69)) | (BigInt.one << (TOKEN_COPY - 69)) | (BigInt.one << (TOKEN_GETTER - 69)) | (BigInt.one << (TOKEN_SETTER - 69)) | (BigInt.one << (TOKEN_STRONG - 69)) | (BigInt.one << (TOKEN_READONLY - 69)) | (BigInt.one << (TOKEN_READWRITE - 69)) | (BigInt.one << (TOKEN_WEAK - 69)) | (BigInt.one << (TOKEN_UNSAFE_UNRETAINED - 69)) | (BigInt.one << (TOKEN_IB_OUTLET - 69)) | (BigInt.one << (TOKEN_IB_OUTLET_COLLECTION - 69)) | (BigInt.one << (TOKEN_IB_INSPECTABLE - 69)) | (BigInt.one << (TOKEN_IB_DESIGNABLE - 69)))) != BigInt.zero) || ((((_la - 136)) & ~0x3f) == 0 && ((BigInt.one << (_la - 136)) & ((BigInt.one << (TOKEN_IDENTIFIER - 136)) | (BigInt.one << (TOKEN_LP - 136)) | (BigInt.one << (TOKEN_LBRACK - 136)) | (BigInt.one << (TOKEN_AT - 136)) | (BigInt.one << (TOKEN_BANG - 136)) | (BigInt.one << (TOKEN_TILDE - 136)) | (BigInt.one << (TOKEN_INC - 136)) | (BigInt.one << (TOKEN_DEC - 136)) | (BigInt.one << (TOKEN_ADD - 136)) | (BigInt.one << (TOKEN_SUB - 136)) | (BigInt.one << (TOKEN_MUL - 136)) | (BigInt.one << (TOKEN_BITAND - 136)) | (BigInt.one << (TOKEN_BITXOR - 136)) | (BigInt.one << (TOKEN_CHARACTER_LITERAL - 136)) | (BigInt.one << (TOKEN_STRING_START - 136)) | (BigInt.one << (TOKEN_HEX_LITERAL - 136)) | (BigInt.one << (TOKEN_OCTAL_LITERAL - 136)) | (BigInt.one << (TOKEN_BINARY_LITERAL - 136)) | (BigInt.one << (TOKEN_DECIMAL_LITERAL - 136)) | (BigInt.one << (TOKEN_FLOATING_POINT_LITERAL - 136)))) != BigInt.zero)) {
        state = 1637;
        expression(0);
      }

      state = 1640;
      match(TOKEN_SEMI);
      state = 1642;
      errorHandler.sync(this);
      _la = tokenStream.LA(1);
      if ((((_la) & ~0x3f) == 0 && ((BigInt.one << _la) & ((BigInt.one << TOKEN_SIZEOF) | (BigInt.one << TOKEN_TRUE) | (BigInt.one << TOKEN_FALSE) | (BigInt.one << TOKEN_BOOL) | (BigInt.one << TOKEN_Class) | (BigInt.one << TOKEN_BYCOPY) | (BigInt.one << TOKEN_BYREF) | (BigInt.one << TOKEN_ID) | (BigInt.one << TOKEN_IMP) | (BigInt.one << TOKEN_IN) | (BigInt.one << TOKEN_INOUT) | (BigInt.one << TOKEN_NIL) | (BigInt.one << TOKEN_NO) | (BigInt.one << TOKEN_NULL) | (BigInt.one << TOKEN_ONEWAY) | (BigInt.one << TOKEN_OUT) | (BigInt.one << TOKEN_PROTOCOL_) | (BigInt.one << TOKEN_SEL) | (BigInt.one << TOKEN_SELF) | (BigInt.one << TOKEN_SUPER) | (BigInt.one << TOKEN_YES) | (BigInt.one << TOKEN_ENCODE))) != BigInt.zero) || ((((_la - 69)) & ~0x3f) == 0 && ((BigInt.one << (_la - 69)) & ((BigInt.one << (TOKEN_PROTOCOL - 69)) | (BigInt.one << (TOKEN_SELECTOR - 69)) | (BigInt.one << (TOKEN_ATOMIC - 69)) | (BigInt.one << (TOKEN_NONATOMIC - 69)) | (BigInt.one << (TOKEN_RETAIN - 69)) | (BigInt.one << (TOKEN_AUTORELEASING_QUALIFIER - 69)) | (BigInt.one << (TOKEN_BLOCK - 69)) | (BigInt.one << (TOKEN_BRIDGE_RETAINED - 69)) | (BigInt.one << (TOKEN_BRIDGE_TRANSFER - 69)) | (BigInt.one << (TOKEN_COVARIANT - 69)) | (BigInt.one << (TOKEN_CONTRAVARIANT - 69)) | (BigInt.one << (TOKEN_DEPRECATED - 69)) | (BigInt.one << (TOKEN_KINDOF - 69)) | (BigInt.one << (TOKEN_UNUSED - 69)) | (BigInt.one << (TOKEN_NULL_UNSPECIFIED - 69)) | (BigInt.one << (TOKEN_NULLABLE - 69)) | (BigInt.one << (TOKEN_NONNULL - 69)) | (BigInt.one << (TOKEN_NULL_RESETTABLE - 69)) | (BigInt.one << (TOKEN_NS_INLINE - 69)) | (BigInt.one << (TOKEN_NS_ENUM - 69)) | (BigInt.one << (TOKEN_NS_OPTIONS - 69)) | (BigInt.one << (TOKEN_ASSIGN - 69)) | (BigInt.one << (TOKEN_COPY - 69)) | (BigInt.one << (TOKEN_GETTER - 69)) | (BigInt.one << (TOKEN_SETTER - 69)) | (BigInt.one << (TOKEN_STRONG - 69)) | (BigInt.one << (TOKEN_READONLY - 69)) | (BigInt.one << (TOKEN_READWRITE - 69)) | (BigInt.one << (TOKEN_WEAK - 69)) | (BigInt.one << (TOKEN_UNSAFE_UNRETAINED - 69)) | (BigInt.one << (TOKEN_IB_OUTLET - 69)) | (BigInt.one << (TOKEN_IB_OUTLET_COLLECTION - 69)) | (BigInt.one << (TOKEN_IB_INSPECTABLE - 69)) | (BigInt.one << (TOKEN_IB_DESIGNABLE - 69)))) != BigInt.zero) || ((((_la - 136)) & ~0x3f) == 0 && ((BigInt.one << (_la - 136)) & ((BigInt.one << (TOKEN_IDENTIFIER - 136)) | (BigInt.one << (TOKEN_LP - 136)) | (BigInt.one << (TOKEN_LBRACK - 136)) | (BigInt.one << (TOKEN_AT - 136)) | (BigInt.one << (TOKEN_BANG - 136)) | (BigInt.one << (TOKEN_TILDE - 136)) | (BigInt.one << (TOKEN_INC - 136)) | (BigInt.one << (TOKEN_DEC - 136)) | (BigInt.one << (TOKEN_ADD - 136)) | (BigInt.one << (TOKEN_SUB - 136)) | (BigInt.one << (TOKEN_MUL - 136)) | (BigInt.one << (TOKEN_BITAND - 136)) | (BigInt.one << (TOKEN_BITXOR - 136)) | (BigInt.one << (TOKEN_CHARACTER_LITERAL - 136)) | (BigInt.one << (TOKEN_STRING_START - 136)) | (BigInt.one << (TOKEN_HEX_LITERAL - 136)) | (BigInt.one << (TOKEN_OCTAL_LITERAL - 136)) | (BigInt.one << (TOKEN_BINARY_LITERAL - 136)) | (BigInt.one << (TOKEN_DECIMAL_LITERAL - 136)) | (BigInt.one << (TOKEN_FLOATING_POINT_LITERAL - 136)))) != BigInt.zero)) {
        state = 1641;
        expressions();
      }

      state = 1644;
      match(TOKEN_RP);
      state = 1645;
      statement();
    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return _localctx;
  }

  ForLoopInitializerContext forLoopInitializer() {
    dynamic _localctx = ForLoopInitializerContext(context, state);
    enterRule(_localctx, 258, RULE_forLoopInitializer);
    try {
      state = 1651;
      errorHandler.sync(this);
      switch (interpreter.adaptivePredict(tokenStream, 238, context)) {
      case 1:
        enterOuterAlt(_localctx, 1);
        state = 1647;
        declarationSpecifiers();
        state = 1648;
        initDeclaratorList();
        break;
      case 2:
        enterOuterAlt(_localctx, 2);
        state = 1650;
        expressions();
        break;
      }
    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return _localctx;
  }

  ForInStatementContext forInStatement() {
    dynamic _localctx = ForInStatementContext(context, state);
    enterRule(_localctx, 260, RULE_forInStatement);
    int _la;
    try {
      enterOuterAlt(_localctx, 1);
      state = 1653;
      match(TOKEN_FOR);
      state = 1654;
      match(TOKEN_LP);
      state = 1655;
      typeVariableDeclarator();
      state = 1656;
      match(TOKEN_IN);
      state = 1658;
      errorHandler.sync(this);
      _la = tokenStream.LA(1);
      if ((((_la) & ~0x3f) == 0 && ((BigInt.one << _la) & ((BigInt.one << TOKEN_SIZEOF) | (BigInt.one << TOKEN_TRUE) | (BigInt.one << TOKEN_FALSE) | (BigInt.one << TOKEN_BOOL) | (BigInt.one << TOKEN_Class) | (BigInt.one << TOKEN_BYCOPY) | (BigInt.one << TOKEN_BYREF) | (BigInt.one << TOKEN_ID) | (BigInt.one << TOKEN_IMP) | (BigInt.one << TOKEN_IN) | (BigInt.one << TOKEN_INOUT) | (BigInt.one << TOKEN_NIL) | (BigInt.one << TOKEN_NO) | (BigInt.one << TOKEN_NULL) | (BigInt.one << TOKEN_ONEWAY) | (BigInt.one << TOKEN_OUT) | (BigInt.one << TOKEN_PROTOCOL_) | (BigInt.one << TOKEN_SEL) | (BigInt.one << TOKEN_SELF) | (BigInt.one << TOKEN_SUPER) | (BigInt.one << TOKEN_YES) | (BigInt.one << TOKEN_ENCODE))) != BigInt.zero) || ((((_la - 69)) & ~0x3f) == 0 && ((BigInt.one << (_la - 69)) & ((BigInt.one << (TOKEN_PROTOCOL - 69)) | (BigInt.one << (TOKEN_SELECTOR - 69)) | (BigInt.one << (TOKEN_ATOMIC - 69)) | (BigInt.one << (TOKEN_NONATOMIC - 69)) | (BigInt.one << (TOKEN_RETAIN - 69)) | (BigInt.one << (TOKEN_AUTORELEASING_QUALIFIER - 69)) | (BigInt.one << (TOKEN_BLOCK - 69)) | (BigInt.one << (TOKEN_BRIDGE_RETAINED - 69)) | (BigInt.one << (TOKEN_BRIDGE_TRANSFER - 69)) | (BigInt.one << (TOKEN_COVARIANT - 69)) | (BigInt.one << (TOKEN_CONTRAVARIANT - 69)) | (BigInt.one << (TOKEN_DEPRECATED - 69)) | (BigInt.one << (TOKEN_KINDOF - 69)) | (BigInt.one << (TOKEN_UNUSED - 69)) | (BigInt.one << (TOKEN_NULL_UNSPECIFIED - 69)) | (BigInt.one << (TOKEN_NULLABLE - 69)) | (BigInt.one << (TOKEN_NONNULL - 69)) | (BigInt.one << (TOKEN_NULL_RESETTABLE - 69)) | (BigInt.one << (TOKEN_NS_INLINE - 69)) | (BigInt.one << (TOKEN_NS_ENUM - 69)) | (BigInt.one << (TOKEN_NS_OPTIONS - 69)) | (BigInt.one << (TOKEN_ASSIGN - 69)) | (BigInt.one << (TOKEN_COPY - 69)) | (BigInt.one << (TOKEN_GETTER - 69)) | (BigInt.one << (TOKEN_SETTER - 69)) | (BigInt.one << (TOKEN_STRONG - 69)) | (BigInt.one << (TOKEN_READONLY - 69)) | (BigInt.one << (TOKEN_READWRITE - 69)) | (BigInt.one << (TOKEN_WEAK - 69)) | (BigInt.one << (TOKEN_UNSAFE_UNRETAINED - 69)) | (BigInt.one << (TOKEN_IB_OUTLET - 69)) | (BigInt.one << (TOKEN_IB_OUTLET_COLLECTION - 69)) | (BigInt.one << (TOKEN_IB_INSPECTABLE - 69)) | (BigInt.one << (TOKEN_IB_DESIGNABLE - 69)))) != BigInt.zero) || ((((_la - 136)) & ~0x3f) == 0 && ((BigInt.one << (_la - 136)) & ((BigInt.one << (TOKEN_IDENTIFIER - 136)) | (BigInt.one << (TOKEN_LP - 136)) | (BigInt.one << (TOKEN_LBRACK - 136)) | (BigInt.one << (TOKEN_AT - 136)) | (BigInt.one << (TOKEN_BANG - 136)) | (BigInt.one << (TOKEN_TILDE - 136)) | (BigInt.one << (TOKEN_INC - 136)) | (BigInt.one << (TOKEN_DEC - 136)) | (BigInt.one << (TOKEN_ADD - 136)) | (BigInt.one << (TOKEN_SUB - 136)) | (BigInt.one << (TOKEN_MUL - 136)) | (BigInt.one << (TOKEN_BITAND - 136)) | (BigInt.one << (TOKEN_BITXOR - 136)) | (BigInt.one << (TOKEN_CHARACTER_LITERAL - 136)) | (BigInt.one << (TOKEN_STRING_START - 136)) | (BigInt.one << (TOKEN_HEX_LITERAL - 136)) | (BigInt.one << (TOKEN_OCTAL_LITERAL - 136)) | (BigInt.one << (TOKEN_BINARY_LITERAL - 136)) | (BigInt.one << (TOKEN_DECIMAL_LITERAL - 136)) | (BigInt.one << (TOKEN_FLOATING_POINT_LITERAL - 136)))) != BigInt.zero)) {
        state = 1657;
        expression(0);
      }

      state = 1660;
      match(TOKEN_RP);
      state = 1661;
      statement();
    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return _localctx;
  }

  JumpStatementContext jumpStatement() {
    dynamic _localctx = JumpStatementContext(context, state);
    enterRule(_localctx, 262, RULE_jumpStatement);
    try {
      state = 1671;
      errorHandler.sync(this);
      switch (tokenStream.LA(1)) {
      case TOKEN_GOTO:
        enterOuterAlt(_localctx, 1);
        state = 1663;
        match(TOKEN_GOTO);
        state = 1664;
        identifier();
        break;
      case TOKEN_CONTINUE:
        enterOuterAlt(_localctx, 2);
        state = 1665;
        match(TOKEN_CONTINUE);
        break;
      case TOKEN_BREAK:
        enterOuterAlt(_localctx, 3);
        state = 1666;
        match(TOKEN_BREAK);
        break;
      case TOKEN_RETURN:
        enterOuterAlt(_localctx, 4);
        state = 1667;
        match(TOKEN_RETURN);
        state = 1669;
        errorHandler.sync(this);
        switch (interpreter.adaptivePredict(tokenStream, 240, context)) {
        case 1:
          state = 1668;
          expression(0);
          break;
        }
        break;
      default:
        throw NoViableAltException(this);
      }
    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return _localctx;
  }

  ExpressionsContext expressions() {
    dynamic _localctx = ExpressionsContext(context, state);
    enterRule(_localctx, 264, RULE_expressions);
    try {
      int _alt;
      enterOuterAlt(_localctx, 1);
      state = 1673;
      expression(0);
      state = 1678;
      errorHandler.sync(this);
      _alt = interpreter.adaptivePredict(tokenStream, 242, context);
      while (_alt != 2 && _alt != ATN.INVALID_ALT_NUMBER) {
        if (_alt == 1) {
          state = 1674;
          match(TOKEN_COMMA);
          state = 1675;
          expression(0); 
        }
        state = 1680;
        errorHandler.sync(this);
        _alt = interpreter.adaptivePredict(tokenStream, 242, context);
      }
    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return _localctx;
  }

  ExpressionContext expression([int _p = 0]) {
    final _parentctx = context;
    final _parentState = state;
    dynamic _localctx = ExpressionContext(context, _parentState);
    var _prevctx = _localctx;
    var _startState = 266;
    enterRecursionRule(_localctx, 266, RULE_expression, _p);
    int _la;
    try {
      int _alt;
      enterOuterAlt(_localctx, 1);
      state = 1691;
      errorHandler.sync(this);
      switch (interpreter.adaptivePredict(tokenStream, 243, context)) {
      case 1:
        state = 1682;
        castExpression();
        break;
      case 2:
        state = 1683;
        match(TOKEN_LP);
        state = 1684;
        compoundStatement();
        state = 1685;
        match(TOKEN_RP);
        break;
      case 3:
        state = 1687;
        unaryExpression();
        state = 1688;
        assignmentOperator();
        state = 1689;
        _localctx.assignmentExpression = expression(1);
        break;
      }
      context.stop = tokenStream.LT(-1);
      state = 1737;
      errorHandler.sync(this);
      _alt = interpreter.adaptivePredict(tokenStream, 247, context);
      while (_alt != 2 && _alt != ATN.INVALID_ALT_NUMBER) {
        if (_alt == 1) {
          if (parseListeners != null) triggerExitRuleEvent();
          _prevctx = _localctx;
          state = 1735;
          errorHandler.sync(this);
          switch (interpreter.adaptivePredict(tokenStream, 246, context)) {
          case 1:
            _localctx = ExpressionContext(_parentctx, _parentState);
            pushNewRecursionContext(_localctx, _startState, RULE_expression);
            state = 1693;
            if (!(precpred(context, 13))) {
              throw FailedPredicateException(this, "precpred(context, 13)");
            }
            state = 1694;
            _localctx.op = tokenStream.LT(1);
            _la = tokenStream.LA(1);
            if (!(((((_la - 165)) & ~0x3f) == 0 && ((BigInt.one << (_la - 165)) & ((BigInt.one << (TOKEN_MUL - 165)) | (BigInt.one << (TOKEN_DIV - 165)) | (BigInt.one << (TOKEN_MOD - 165)))) != BigInt.zero))) {
              _localctx.op = errorHandler.recoverInline(this);
            } else {
              if ( tokenStream.LA(1)==IntStream.EOF ) matchedEOF = true;
              errorHandler.reportMatch(this);
              consume();
            }
            state = 1695;
            expression(14);
            break;
          case 2:
            _localctx = ExpressionContext(_parentctx, _parentState);
            pushNewRecursionContext(_localctx, _startState, RULE_expression);
            state = 1696;
            if (!(precpred(context, 12))) {
              throw FailedPredicateException(this, "precpred(context, 12)");
            }
            state = 1697;
            _localctx.op = tokenStream.LT(1);
            _la = tokenStream.LA(1);
            if (!(_la == TOKEN_ADD || _la == TOKEN_SUB)) {
              _localctx.op = errorHandler.recoverInline(this);
            } else {
              if ( tokenStream.LA(1)==IntStream.EOF ) matchedEOF = true;
              errorHandler.reportMatch(this);
              consume();
            }
            state = 1698;
            expression(13);
            break;
          case 3:
            _localctx = ExpressionContext(_parentctx, _parentState);
            pushNewRecursionContext(_localctx, _startState, RULE_expression);
            state = 1699;
            if (!(precpred(context, 11))) {
              throw FailedPredicateException(this, "precpred(context, 11)");
            }
            state = 1704;
            errorHandler.sync(this);
            switch (tokenStream.LA(1)) {
            case TOKEN_LT:
              state = 1700;
              match(TOKEN_LT);
              state = 1701;
              match(TOKEN_LT);
              break;
            case TOKEN_GT:
              state = 1702;
              match(TOKEN_GT);
              state = 1703;
              match(TOKEN_GT);
              break;
            default:
              throw NoViableAltException(this);
            }
            state = 1706;
            expression(12);
            break;
          case 4:
            _localctx = ExpressionContext(_parentctx, _parentState);
            pushNewRecursionContext(_localctx, _startState, RULE_expression);
            state = 1707;
            if (!(precpred(context, 10))) {
              throw FailedPredicateException(this, "precpred(context, 10)");
            }
            state = 1708;
            _localctx.op = tokenStream.LT(1);
            _la = tokenStream.LA(1);
            if (!(((((_la - 149)) & ~0x3f) == 0 && ((BigInt.one << (_la - 149)) & ((BigInt.one << (TOKEN_GT - 149)) | (BigInt.one << (TOKEN_LT - 149)) | (BigInt.one << (TOKEN_LE - 149)) | (BigInt.one << (TOKEN_GE - 149)))) != BigInt.zero))) {
              _localctx.op = errorHandler.recoverInline(this);
            } else {
              if ( tokenStream.LA(1)==IntStream.EOF ) matchedEOF = true;
              errorHandler.reportMatch(this);
              consume();
            }
            state = 1709;
            expression(11);
            break;
          case 5:
            _localctx = ExpressionContext(_parentctx, _parentState);
            pushNewRecursionContext(_localctx, _startState, RULE_expression);
            state = 1710;
            if (!(precpred(context, 9))) {
              throw FailedPredicateException(this, "precpred(context, 9)");
            }
            state = 1711;
            _localctx.op = tokenStream.LT(1);
            _la = tokenStream.LA(1);
            if (!(_la == TOKEN_EQUAL || _la == TOKEN_NOTEQUAL)) {
              _localctx.op = errorHandler.recoverInline(this);
            } else {
              if ( tokenStream.LA(1)==IntStream.EOF ) matchedEOF = true;
              errorHandler.reportMatch(this);
              consume();
            }
            state = 1712;
            expression(10);
            break;
          case 6:
            _localctx = ExpressionContext(_parentctx, _parentState);
            pushNewRecursionContext(_localctx, _startState, RULE_expression);
            state = 1713;
            if (!(precpred(context, 8))) {
              throw FailedPredicateException(this, "precpred(context, 8)");
            }
            state = 1714;
            _localctx.op = match(TOKEN_BITAND);
            state = 1715;
            expression(9);
            break;
          case 7:
            _localctx = ExpressionContext(_parentctx, _parentState);
            pushNewRecursionContext(_localctx, _startState, RULE_expression);
            state = 1716;
            if (!(precpred(context, 7))) {
              throw FailedPredicateException(this, "precpred(context, 7)");
            }
            state = 1717;
            _localctx.op = match(TOKEN_BITXOR);
            state = 1718;
            expression(8);
            break;
          case 8:
            _localctx = ExpressionContext(_parentctx, _parentState);
            pushNewRecursionContext(_localctx, _startState, RULE_expression);
            state = 1719;
            if (!(precpred(context, 6))) {
              throw FailedPredicateException(this, "precpred(context, 6)");
            }
            state = 1720;
            _localctx.op = match(TOKEN_BITOR);
            state = 1721;
            expression(7);
            break;
          case 9:
            _localctx = ExpressionContext(_parentctx, _parentState);
            pushNewRecursionContext(_localctx, _startState, RULE_expression);
            state = 1722;
            if (!(precpred(context, 5))) {
              throw FailedPredicateException(this, "precpred(context, 5)");
            }
            state = 1723;
            _localctx.op = match(TOKEN_AND);
            state = 1724;
            expression(6);
            break;
          case 10:
            _localctx = ExpressionContext(_parentctx, _parentState);
            pushNewRecursionContext(_localctx, _startState, RULE_expression);
            state = 1725;
            if (!(precpred(context, 4))) {
              throw FailedPredicateException(this, "precpred(context, 4)");
            }
            state = 1726;
            _localctx.op = match(TOKEN_OR);
            state = 1727;
            expression(5);
            break;
          case 11:
            _localctx = ExpressionContext(_parentctx, _parentState);
            pushNewRecursionContext(_localctx, _startState, RULE_expression);
            state = 1728;
            if (!(precpred(context, 3))) {
              throw FailedPredicateException(this, "precpred(context, 3)");
            }
            state = 1729;
            match(TOKEN_QUESTION);
            state = 1731;
            errorHandler.sync(this);
            _la = tokenStream.LA(1);
            if ((((_la) & ~0x3f) == 0 && ((BigInt.one << _la) & ((BigInt.one << TOKEN_SIZEOF) | (BigInt.one << TOKEN_TRUE) | (BigInt.one << TOKEN_FALSE) | (BigInt.one << TOKEN_BOOL) | (BigInt.one << TOKEN_Class) | (BigInt.one << TOKEN_BYCOPY) | (BigInt.one << TOKEN_BYREF) | (BigInt.one << TOKEN_ID) | (BigInt.one << TOKEN_IMP) | (BigInt.one << TOKEN_IN) | (BigInt.one << TOKEN_INOUT) | (BigInt.one << TOKEN_NIL) | (BigInt.one << TOKEN_NO) | (BigInt.one << TOKEN_NULL) | (BigInt.one << TOKEN_ONEWAY) | (BigInt.one << TOKEN_OUT) | (BigInt.one << TOKEN_PROTOCOL_) | (BigInt.one << TOKEN_SEL) | (BigInt.one << TOKEN_SELF) | (BigInt.one << TOKEN_SUPER) | (BigInt.one << TOKEN_YES) | (BigInt.one << TOKEN_ENCODE))) != BigInt.zero) || ((((_la - 69)) & ~0x3f) == 0 && ((BigInt.one << (_la - 69)) & ((BigInt.one << (TOKEN_PROTOCOL - 69)) | (BigInt.one << (TOKEN_SELECTOR - 69)) | (BigInt.one << (TOKEN_ATOMIC - 69)) | (BigInt.one << (TOKEN_NONATOMIC - 69)) | (BigInt.one << (TOKEN_RETAIN - 69)) | (BigInt.one << (TOKEN_AUTORELEASING_QUALIFIER - 69)) | (BigInt.one << (TOKEN_BLOCK - 69)) | (BigInt.one << (TOKEN_BRIDGE_RETAINED - 69)) | (BigInt.one << (TOKEN_BRIDGE_TRANSFER - 69)) | (BigInt.one << (TOKEN_COVARIANT - 69)) | (BigInt.one << (TOKEN_CONTRAVARIANT - 69)) | (BigInt.one << (TOKEN_DEPRECATED - 69)) | (BigInt.one << (TOKEN_KINDOF - 69)) | (BigInt.one << (TOKEN_UNUSED - 69)) | (BigInt.one << (TOKEN_NULL_UNSPECIFIED - 69)) | (BigInt.one << (TOKEN_NULLABLE - 69)) | (BigInt.one << (TOKEN_NONNULL - 69)) | (BigInt.one << (TOKEN_NULL_RESETTABLE - 69)) | (BigInt.one << (TOKEN_NS_INLINE - 69)) | (BigInt.one << (TOKEN_NS_ENUM - 69)) | (BigInt.one << (TOKEN_NS_OPTIONS - 69)) | (BigInt.one << (TOKEN_ASSIGN - 69)) | (BigInt.one << (TOKEN_COPY - 69)) | (BigInt.one << (TOKEN_GETTER - 69)) | (BigInt.one << (TOKEN_SETTER - 69)) | (BigInt.one << (TOKEN_STRONG - 69)) | (BigInt.one << (TOKEN_READONLY - 69)) | (BigInt.one << (TOKEN_READWRITE - 69)) | (BigInt.one << (TOKEN_WEAK - 69)) | (BigInt.one << (TOKEN_UNSAFE_UNRETAINED - 69)) | (BigInt.one << (TOKEN_IB_OUTLET - 69)) | (BigInt.one << (TOKEN_IB_OUTLET_COLLECTION - 69)) | (BigInt.one << (TOKEN_IB_INSPECTABLE - 69)) | (BigInt.one << (TOKEN_IB_DESIGNABLE - 69)))) != BigInt.zero) || ((((_la - 136)) & ~0x3f) == 0 && ((BigInt.one << (_la - 136)) & ((BigInt.one << (TOKEN_IDENTIFIER - 136)) | (BigInt.one << (TOKEN_LP - 136)) | (BigInt.one << (TOKEN_LBRACK - 136)) | (BigInt.one << (TOKEN_AT - 136)) | (BigInt.one << (TOKEN_BANG - 136)) | (BigInt.one << (TOKEN_TILDE - 136)) | (BigInt.one << (TOKEN_INC - 136)) | (BigInt.one << (TOKEN_DEC - 136)) | (BigInt.one << (TOKEN_ADD - 136)) | (BigInt.one << (TOKEN_SUB - 136)) | (BigInt.one << (TOKEN_MUL - 136)) | (BigInt.one << (TOKEN_BITAND - 136)) | (BigInt.one << (TOKEN_BITXOR - 136)) | (BigInt.one << (TOKEN_CHARACTER_LITERAL - 136)) | (BigInt.one << (TOKEN_STRING_START - 136)) | (BigInt.one << (TOKEN_HEX_LITERAL - 136)) | (BigInt.one << (TOKEN_OCTAL_LITERAL - 136)) | (BigInt.one << (TOKEN_BINARY_LITERAL - 136)) | (BigInt.one << (TOKEN_DECIMAL_LITERAL - 136)) | (BigInt.one << (TOKEN_FLOATING_POINT_LITERAL - 136)))) != BigInt.zero)) {
              state = 1730;
              _localctx.trueExpression = expression(0);
            }

            state = 1733;
            match(TOKEN_COLON);
            state = 1734;
            _localctx.falseExpression = expression(4);
            break;
          } 
        }
        state = 1739;
        errorHandler.sync(this);
        _alt = interpreter.adaptivePredict(tokenStream, 247, context);
      }
    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      unrollRecursionContexts(_parentctx);
    }
    return _localctx;
  }

  AssignmentOperatorContext assignmentOperator() {
    dynamic _localctx = AssignmentOperatorContext(context, state);
    enterRule(_localctx, 268, RULE_assignmentOperator);
    int _la;
    try {
      enterOuterAlt(_localctx, 1);
      state = 1740;
      _la = tokenStream.LA(1);
      if (!(((((_la - 148)) & ~0x3f) == 0 && ((BigInt.one << (_la - 148)) & ((BigInt.one << (TOKEN_ASSIGNMENT - 148)) | (BigInt.one << (TOKEN_ADD_ASSIGN - 148)) | (BigInt.one << (TOKEN_SUB_ASSIGN - 148)) | (BigInt.one << (TOKEN_MUL_ASSIGN - 148)) | (BigInt.one << (TOKEN_DIV_ASSIGN - 148)) | (BigInt.one << (TOKEN_AND_ASSIGN - 148)) | (BigInt.one << (TOKEN_OR_ASSIGN - 148)) | (BigInt.one << (TOKEN_XOR_ASSIGN - 148)) | (BigInt.one << (TOKEN_MOD_ASSIGN - 148)) | (BigInt.one << (TOKEN_LSHIFT_ASSIGN - 148)) | (BigInt.one << (TOKEN_RSHIFT_ASSIGN - 148)))) != BigInt.zero))) {
      errorHandler.recoverInline(this);
      } else {
        if ( tokenStream.LA(1)==IntStream.EOF ) matchedEOF = true;
        errorHandler.reportMatch(this);
        consume();
      }
    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return _localctx;
  }

  CastExpressionContext castExpression() {
    dynamic _localctx = CastExpressionContext(context, state);
    enterRule(_localctx, 270, RULE_castExpression);
    try {
      state = 1751;
      errorHandler.sync(this);
      switch (interpreter.adaptivePredict(tokenStream, 249, context)) {
      case 1:
        enterOuterAlt(_localctx, 1);
        state = 1742;
        unaryExpression();
        break;
      case 2:
        enterOuterAlt(_localctx, 2);
        state = 1743;
        match(TOKEN_LP);
        state = 1744;
        typeName();
        state = 1745;
        match(TOKEN_RP);
        state = 1749;
        errorHandler.sync(this);
        switch (interpreter.adaptivePredict(tokenStream, 248, context)) {
        case 1:
          state = 1747;
          castExpression();
          break;
        case 2:
          state = 1748;
          initializer();
          break;
        }
        break;
      }
    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return _localctx;
  }

  InitializerContext initializer() {
    dynamic _localctx = InitializerContext(context, state);
    enterRule(_localctx, 272, RULE_initializer);
    try {
      state = 1756;
      errorHandler.sync(this);
      switch (interpreter.adaptivePredict(tokenStream, 250, context)) {
      case 1:
        enterOuterAlt(_localctx, 1);
        state = 1753;
        expression(0);
        break;
      case 2:
        enterOuterAlt(_localctx, 2);
        state = 1754;
        arrayInitializer();
        break;
      case 3:
        enterOuterAlt(_localctx, 3);
        state = 1755;
        structInitializer();
        break;
      }
    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return _localctx;
  }

  ConstantExpressionContext constantExpression() {
    dynamic _localctx = ConstantExpressionContext(context, state);
    enterRule(_localctx, 274, RULE_constantExpression);
    try {
      state = 1760;
      errorHandler.sync(this);
      switch (tokenStream.LA(1)) {
      case TOKEN_BOOL:
      case TOKEN_Class:
      case TOKEN_BYCOPY:
      case TOKEN_BYREF:
      case TOKEN_ID:
      case TOKEN_IMP:
      case TOKEN_IN:
      case TOKEN_INOUT:
      case TOKEN_ONEWAY:
      case TOKEN_OUT:
      case TOKEN_PROTOCOL_:
      case TOKEN_SEL:
      case TOKEN_SELF:
      case TOKEN_SUPER:
      case TOKEN_ATOMIC:
      case TOKEN_NONATOMIC:
      case TOKEN_RETAIN:
      case TOKEN_AUTORELEASING_QUALIFIER:
      case TOKEN_BLOCK:
      case TOKEN_BRIDGE_RETAINED:
      case TOKEN_BRIDGE_TRANSFER:
      case TOKEN_COVARIANT:
      case TOKEN_CONTRAVARIANT:
      case TOKEN_DEPRECATED:
      case TOKEN_KINDOF:
      case TOKEN_UNUSED:
      case TOKEN_NULL_UNSPECIFIED:
      case TOKEN_NULLABLE:
      case TOKEN_NONNULL:
      case TOKEN_NULL_RESETTABLE:
      case TOKEN_NS_INLINE:
      case TOKEN_NS_ENUM:
      case TOKEN_NS_OPTIONS:
      case TOKEN_ASSIGN:
      case TOKEN_COPY:
      case TOKEN_GETTER:
      case TOKEN_SETTER:
      case TOKEN_STRONG:
      case TOKEN_READONLY:
      case TOKEN_READWRITE:
      case TOKEN_WEAK:
      case TOKEN_UNSAFE_UNRETAINED:
      case TOKEN_IB_OUTLET:
      case TOKEN_IB_OUTLET_COLLECTION:
      case TOKEN_IB_INSPECTABLE:
      case TOKEN_IB_DESIGNABLE:
      case TOKEN_IDENTIFIER:
        enterOuterAlt(_localctx, 1);
        state = 1758;
        identifier();
        break;
      case TOKEN_TRUE:
      case TOKEN_FALSE:
      case TOKEN_NIL:
      case TOKEN_NO:
      case TOKEN_NULL:
      case TOKEN_YES:
      case TOKEN_ADD:
      case TOKEN_SUB:
      case TOKEN_CHARACTER_LITERAL:
      case TOKEN_HEX_LITERAL:
      case TOKEN_OCTAL_LITERAL:
      case TOKEN_BINARY_LITERAL:
      case TOKEN_DECIMAL_LITERAL:
      case TOKEN_FLOATING_POINT_LITERAL:
        enterOuterAlt(_localctx, 2);
        state = 1759;
        constant();
        break;
      default:
        throw NoViableAltException(this);
      }
    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return _localctx;
  }

  UnaryExpressionContext unaryExpression() {
    dynamic _localctx = UnaryExpressionContext(context, state);
    enterRule(_localctx, 276, RULE_unaryExpression);
    int _la;
    try {
      state = 1776;
      errorHandler.sync(this);
      switch (interpreter.adaptivePredict(tokenStream, 253, context)) {
      case 1:
        enterOuterAlt(_localctx, 1);
        state = 1762;
        postfixExpression(0);
        break;
      case 2:
        enterOuterAlt(_localctx, 2);
        state = 1763;
        match(TOKEN_SIZEOF);
        state = 1769;
        errorHandler.sync(this);
        switch (interpreter.adaptivePredict(tokenStream, 252, context)) {
        case 1:
          state = 1764;
          unaryExpression();
          break;
        case 2:
          state = 1765;
          match(TOKEN_LP);
          state = 1766;
          typeSpecifier();
          state = 1767;
          match(TOKEN_RP);
          break;
        }
        break;
      case 3:
        enterOuterAlt(_localctx, 3);
        state = 1771;
        _localctx.op = tokenStream.LT(1);
        _la = tokenStream.LA(1);
        if (!(_la == TOKEN_INC || _la == TOKEN_DEC)) {
          _localctx.op = errorHandler.recoverInline(this);
        } else {
          if ( tokenStream.LA(1)==IntStream.EOF ) matchedEOF = true;
          errorHandler.reportMatch(this);
          consume();
        }
        state = 1772;
        unaryExpression();
        break;
      case 4:
        enterOuterAlt(_localctx, 4);
        state = 1773;
        unaryOperator();
        state = 1774;
        castExpression();
        break;
      }
    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return _localctx;
  }

  UnaryOperatorContext unaryOperator() {
    dynamic _localctx = UnaryOperatorContext(context, state);
    enterRule(_localctx, 278, RULE_unaryOperator);
    int _la;
    try {
      enterOuterAlt(_localctx, 1);
      state = 1778;
      _la = tokenStream.LA(1);
      if (!(((((_la - 151)) & ~0x3f) == 0 && ((BigInt.one << (_la - 151)) & ((BigInt.one << (TOKEN_BANG - 151)) | (BigInt.one << (TOKEN_TILDE - 151)) | (BigInt.one << (TOKEN_ADD - 151)) | (BigInt.one << (TOKEN_SUB - 151)) | (BigInt.one << (TOKEN_MUL - 151)) | (BigInt.one << (TOKEN_BITAND - 151)))) != BigInt.zero))) {
      errorHandler.recoverInline(this);
      } else {
        if ( tokenStream.LA(1)==IntStream.EOF ) matchedEOF = true;
        errorHandler.reportMatch(this);
        consume();
      }
    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return _localctx;
  }

  PostfixExpressionContext postfixExpression([int _p = 0]) {
    final _parentctx = context;
    final _parentState = state;
    dynamic _localctx = PostfixExpressionContext(context, _parentState);
    var _prevctx = _localctx;
    var _startState = 280;
    enterRecursionRule(_localctx, 280, RULE_postfixExpression, _p);
    int _la;
    try {
      int _alt;
      enterOuterAlt(_localctx, 1);
      state = 1781;
      primaryExpression();
      state = 1785;
      errorHandler.sync(this);
      _alt = interpreter.adaptivePredict(tokenStream, 254, context);
      while (_alt != 2 && _alt != ATN.INVALID_ALT_NUMBER) {
        if (_alt == 1) {
          state = 1782;
          postfix(); 
        }
        state = 1787;
        errorHandler.sync(this);
        _alt = interpreter.adaptivePredict(tokenStream, 254, context);
      }
      context.stop = tokenStream.LT(-1);
      state = 1799;
      errorHandler.sync(this);
      _alt = interpreter.adaptivePredict(tokenStream, 256, context);
      while (_alt != 2 && _alt != ATN.INVALID_ALT_NUMBER) {
        if (_alt == 1) {
          if (parseListeners != null) triggerExitRuleEvent();
          _prevctx = _localctx;
          _localctx = PostfixExpressionContext(_parentctx, _parentState);
          pushNewRecursionContext(_localctx, _startState, RULE_postfixExpression);
          state = 1788;
          if (!(precpred(context, 1))) {
            throw FailedPredicateException(this, "precpred(context, 1)");
          }
          state = 1789;
          _la = tokenStream.LA(1);
          if (!(_la == TOKEN_DOT || _la == TOKEN_STRUCTACCESS)) {
          errorHandler.recoverInline(this);
          } else {
            if ( tokenStream.LA(1)==IntStream.EOF ) matchedEOF = true;
            errorHandler.reportMatch(this);
            consume();
          }
          state = 1790;
          identifier();
          state = 1794;
          errorHandler.sync(this);
          _alt = interpreter.adaptivePredict(tokenStream, 255, context);
          while (_alt != 2 && _alt != ATN.INVALID_ALT_NUMBER) {
            if (_alt == 1) {
              state = 1791;
              postfix(); 
            }
            state = 1796;
            errorHandler.sync(this);
            _alt = interpreter.adaptivePredict(tokenStream, 255, context);
          } 
        }
        state = 1801;
        errorHandler.sync(this);
        _alt = interpreter.adaptivePredict(tokenStream, 256, context);
      }
    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      unrollRecursionContexts(_parentctx);
    }
    return _localctx;
  }

  PostfixContext postfix() {
    dynamic _localctx = PostfixContext(context, state);
    enterRule(_localctx, 282, RULE_postfix);
    int _la;
    try {
      state = 1820;
      errorHandler.sync(this);
      switch (interpreter.adaptivePredict(tokenStream, 260, context)) {
      case 1:
        enterOuterAlt(_localctx, 1);
        state = 1802;
        match(TOKEN_LBRACK);
        state = 1803;
        expression(0);
        state = 1804;
        match(TOKEN_RBRACK);
        break;
      case 2:
        enterOuterAlt(_localctx, 2);
        state = 1806;
        match(TOKEN_LP);
        state = 1808;
        errorHandler.sync(this);
        _la = tokenStream.LA(1);
        if ((((_la) & ~0x3f) == 0 && ((BigInt.one << _la) & ((BigInt.one << TOKEN_CHAR) | (BigInt.one << TOKEN_DOUBLE) | (BigInt.one << TOKEN_ENUM) | (BigInt.one << TOKEN_FLOAT) | (BigInt.one << TOKEN_INT) | (BigInt.one << TOKEN_LONG) | (BigInt.one << TOKEN_SHORT) | (BigInt.one << TOKEN_SIGNED) | (BigInt.one << TOKEN_SIZEOF) | (BigInt.one << TOKEN_STRUCT) | (BigInt.one << TOKEN_UNION) | (BigInt.one << TOKEN_UNSIGNED) | (BigInt.one << TOKEN_VOID) | (BigInt.one << TOKEN_TRUE) | (BigInt.one << TOKEN_FALSE) | (BigInt.one << TOKEN_BOOL) | (BigInt.one << TOKEN_Class) | (BigInt.one << TOKEN_BYCOPY) | (BigInt.one << TOKEN_BYREF) | (BigInt.one << TOKEN_ID) | (BigInt.one << TOKEN_IMP) | (BigInt.one << TOKEN_IN) | (BigInt.one << TOKEN_INOUT) | (BigInt.one << TOKEN_NIL) | (BigInt.one << TOKEN_NO) | (BigInt.one << TOKEN_NULL) | (BigInt.one << TOKEN_ONEWAY) | (BigInt.one << TOKEN_OUT) | (BigInt.one << TOKEN_PROTOCOL_) | (BigInt.one << TOKEN_SEL) | (BigInt.one << TOKEN_SELF) | (BigInt.one << TOKEN_SUPER) | (BigInt.one << TOKEN_YES) | (BigInt.one << TOKEN_ENCODE))) != BigInt.zero) || ((((_la - 69)) & ~0x3f) == 0 && ((BigInt.one << (_la - 69)) & ((BigInt.one << (TOKEN_PROTOCOL - 69)) | (BigInt.one << (TOKEN_SELECTOR - 69)) | (BigInt.one << (TOKEN_ATOMIC - 69)) | (BigInt.one << (TOKEN_NONATOMIC - 69)) | (BigInt.one << (TOKEN_RETAIN - 69)) | (BigInt.one << (TOKEN_AUTORELEASING_QUALIFIER - 69)) | (BigInt.one << (TOKEN_BLOCK - 69)) | (BigInt.one << (TOKEN_BRIDGE_RETAINED - 69)) | (BigInt.one << (TOKEN_BRIDGE_TRANSFER - 69)) | (BigInt.one << (TOKEN_COVARIANT - 69)) | (BigInt.one << (TOKEN_CONTRAVARIANT - 69)) | (BigInt.one << (TOKEN_DEPRECATED - 69)) | (BigInt.one << (TOKEN_KINDOF - 69)) | (BigInt.one << (TOKEN_TYPEOF - 69)) | (BigInt.one << (TOKEN_UNUSED - 69)) | (BigInt.one << (TOKEN_NULL_UNSPECIFIED - 69)) | (BigInt.one << (TOKEN_NULLABLE - 69)) | (BigInt.one << (TOKEN_NONNULL - 69)) | (BigInt.one << (TOKEN_NULL_RESETTABLE - 69)) | (BigInt.one << (TOKEN_NS_INLINE - 69)) | (BigInt.one << (TOKEN_NS_ENUM - 69)) | (BigInt.one << (TOKEN_NS_OPTIONS - 69)) | (BigInt.one << (TOKEN_NS_CLOSED_ENUM - 69)) | (BigInt.one << (TOKEN_NS_ERROR_ENUM - 69)) | (BigInt.one << (TOKEN_ASSIGN - 69)) | (BigInt.one << (TOKEN_COPY - 69)) | (BigInt.one << (TOKEN_GETTER - 69)) | (BigInt.one << (TOKEN_SETTER - 69)) | (BigInt.one << (TOKEN_STRONG - 69)) | (BigInt.one << (TOKEN_READONLY - 69)) | (BigInt.one << (TOKEN_READWRITE - 69)) | (BigInt.one << (TOKEN_WEAK - 69)) | (BigInt.one << (TOKEN_UNSAFE_UNRETAINED - 69)) | (BigInt.one << (TOKEN_IB_OUTLET - 69)) | (BigInt.one << (TOKEN_IB_OUTLET_COLLECTION - 69)) | (BigInt.one << (TOKEN_IB_INSPECTABLE - 69)) | (BigInt.one << (TOKEN_IB_DESIGNABLE - 69)))) != BigInt.zero) || ((((_la - 136)) & ~0x3f) == 0 && ((BigInt.one << (_la - 136)) & ((BigInt.one << (TOKEN_IDENTIFIER - 136)) | (BigInt.one << (TOKEN_LP - 136)) | (BigInt.one << (TOKEN_LBRACK - 136)) | (BigInt.one << (TOKEN_AT - 136)) | (BigInt.one << (TOKEN_BANG - 136)) | (BigInt.one << (TOKEN_TILDE - 136)) | (BigInt.one << (TOKEN_INC - 136)) | (BigInt.one << (TOKEN_DEC - 136)) | (BigInt.one << (TOKEN_ADD - 136)) | (BigInt.one << (TOKEN_SUB - 136)) | (BigInt.one << (TOKEN_MUL - 136)) | (BigInt.one << (TOKEN_BITAND - 136)) | (BigInt.one << (TOKEN_BITXOR - 136)) | (BigInt.one << (TOKEN_CHARACTER_LITERAL - 136)) | (BigInt.one << (TOKEN_STRING_START - 136)) | (BigInt.one << (TOKEN_HEX_LITERAL - 136)) | (BigInt.one << (TOKEN_OCTAL_LITERAL - 136)) | (BigInt.one << (TOKEN_BINARY_LITERAL - 136)) | (BigInt.one << (TOKEN_DECIMAL_LITERAL - 136)) | (BigInt.one << (TOKEN_FLOATING_POINT_LITERAL - 136)))) != BigInt.zero)) {
          state = 1807;
          argumentExpressionList();
        }

        state = 1810;
        match(TOKEN_RP);
        break;
      case 3:
        enterOuterAlt(_localctx, 3);
        state = 1811;
        match(TOKEN_LP);
        state = 1814; 
        errorHandler.sync(this);
        _la = tokenStream.LA(1);
        do {
          state = 1814;
          errorHandler.sync(this);
          switch (interpreter.adaptivePredict(tokenStream, 258, context)) {
          case 1:
            state = 1812;
            match(TOKEN_COMMA);
            break;
          case 2:
            state = 1813;
            _localctx._tset3557 = tokenStream.LT(1);
            _la = tokenStream.LA(1);
            if (_la <= 0 || (_la == TOKEN_RP)) {
              _localctx._tset3557 = errorHandler.recoverInline(this);
            } else {
              if ( tokenStream.LA(1)==IntStream.EOF ) matchedEOF = true;
              errorHandler.reportMatch(this);
              consume();
            }
            _localctx.macroArguments.add(_localctx._tset3557);
            break;
          }
          state = 1816; 
          errorHandler.sync(this);
          _la = tokenStream.LA(1);
        } while ((((_la) & ~0x3f) == 0 && ((BigInt.one << _la) & ((BigInt.one << TOKEN_AUTO) | (BigInt.one << TOKEN_BREAK) | (BigInt.one << TOKEN_CASE) | (BigInt.one << TOKEN_CHAR) | (BigInt.one << TOKEN_CONST) | (BigInt.one << TOKEN_CONTINUE) | (BigInt.one << TOKEN_DEFAULT) | (BigInt.one << TOKEN_DO) | (BigInt.one << TOKEN_DOUBLE) | (BigInt.one << TOKEN_ELSE) | (BigInt.one << TOKEN_ENUM) | (BigInt.one << TOKEN_EXTERN) | (BigInt.one << TOKEN_FLOAT) | (BigInt.one << TOKEN_FOR) | (BigInt.one << TOKEN_GOTO) | (BigInt.one << TOKEN_IF) | (BigInt.one << TOKEN_INLINE) | (BigInt.one << TOKEN_INT) | (BigInt.one << TOKEN_LONG) | (BigInt.one << TOKEN_REGISTER) | (BigInt.one << TOKEN_RESTRICT) | (BigInt.one << TOKEN_RETURN) | (BigInt.one << TOKEN_SHORT) | (BigInt.one << TOKEN_SIGNED) | (BigInt.one << TOKEN_SIZEOF) | (BigInt.one << TOKEN_STATIC) | (BigInt.one << TOKEN_STRUCT) | (BigInt.one << TOKEN_SWITCH) | (BigInt.one << TOKEN_TYPEDEF) | (BigInt.one << TOKEN_UNION) | (BigInt.one << TOKEN_UNSIGNED) | (BigInt.one << TOKEN_VOID) | (BigInt.one << TOKEN_VOLATILE) | (BigInt.one << TOKEN_WHILE) | (BigInt.one << TOKEN_BOOL_) | (BigInt.one << TOKEN_COMPLEX) | (BigInt.one << TOKEN_IMAGINERY) | (BigInt.one << TOKEN_TRUE) | (BigInt.one << TOKEN_FALSE) | (BigInt.one << TOKEN_BOOL) | (BigInt.one << TOKEN_Class) | (BigInt.one << TOKEN_BYCOPY) | (BigInt.one << TOKEN_BYREF) | (BigInt.one << TOKEN_ID) | (BigInt.one << TOKEN_IMP) | (BigInt.one << TOKEN_IN) | (BigInt.one << TOKEN_INOUT) | (BigInt.one << TOKEN_NIL) | (BigInt.one << TOKEN_NO) | (BigInt.one << TOKEN_NULL) | (BigInt.one << TOKEN_ONEWAY) | (BigInt.one << TOKEN_OUT) | (BigInt.one << TOKEN_PROTOCOL_) | (BigInt.one << TOKEN_SEL) | (BigInt.one << TOKEN_SELF) | (BigInt.one << TOKEN_SUPER) | (BigInt.one << TOKEN_YES) | (BigInt.one << TOKEN_AUTORELEASEPOOL) | (BigInt.one << TOKEN_CATCH) | (BigInt.one << TOKEN_CLASS) | (BigInt.one << TOKEN_DYNAMIC) | (BigInt.one << TOKEN_ENCODE) | (BigInt.one << TOKEN_END))) != BigInt.zero) || ((((_la - 64)) & ~0x3f) == 0 && ((BigInt.one << (_la - 64)) & ((BigInt.one << (TOKEN_FINALLY - 64)) | (BigInt.one << (TOKEN_IMPLEMENTATION - 64)) | (BigInt.one << (TOKEN_INTERFACE - 64)) | (BigInt.one << (TOKEN_IMPORT - 64)) | (BigInt.one << (TOKEN_PACKAGE - 64)) | (BigInt.one << (TOKEN_PROTOCOL - 64)) | (BigInt.one << (TOKEN_OPTIONAL - 64)) | (BigInt.one << (TOKEN_PRIVATE - 64)) | (BigInt.one << (TOKEN_PROPERTY - 64)) | (BigInt.one << (TOKEN_PROTECTED - 64)) | (BigInt.one << (TOKEN_PUBLIC - 64)) | (BigInt.one << (TOKEN_REQUIRED - 64)) | (BigInt.one << (TOKEN_SELECTOR - 64)) | (BigInt.one << (TOKEN_SYNCHRONIZED - 64)) | (BigInt.one << (TOKEN_SYNTHESIZE - 64)) | (BigInt.one << (TOKEN_THROW - 64)) | (BigInt.one << (TOKEN_TRY - 64)) | (BigInt.one << (TOKEN_ATOMIC - 64)) | (BigInt.one << (TOKEN_NONATOMIC - 64)) | (BigInt.one << (TOKEN_RETAIN - 64)) | (BigInt.one << (TOKEN_ATTRIBUTE - 64)) | (BigInt.one << (TOKEN_AUTORELEASING_QUALIFIER - 64)) | (BigInt.one << (TOKEN_BLOCK - 64)) | (BigInt.one << (TOKEN_BRIDGE - 64)) | (BigInt.one << (TOKEN_BRIDGE_RETAINED - 64)) | (BigInt.one << (TOKEN_BRIDGE_TRANSFER - 64)) | (BigInt.one << (TOKEN_COVARIANT - 64)) | (BigInt.one << (TOKEN_CONTRAVARIANT - 64)) | (BigInt.one << (TOKEN_DEPRECATED - 64)) | (BigInt.one << (TOKEN_KINDOF - 64)) | (BigInt.one << (TOKEN_STRONG_QUALIFIER - 64)) | (BigInt.one << (TOKEN_TYPEOF - 64)) | (BigInt.one << (TOKEN_UNSAFE_UNRETAINED_QUALIFIER - 64)) | (BigInt.one << (TOKEN_UNUSED - 64)) | (BigInt.one << (TOKEN_WEAK_QUALIFIER - 64)) | (BigInt.one << (TOKEN_NULL_UNSPECIFIED - 64)) | (BigInt.one << (TOKEN_NULLABLE - 64)) | (BigInt.one << (TOKEN_NONNULL - 64)) | (BigInt.one << (TOKEN_NULL_RESETTABLE - 64)) | (BigInt.one << (TOKEN_NS_INLINE - 64)) | (BigInt.one << (TOKEN_NS_ENUM - 64)) | (BigInt.one << (TOKEN_NS_OPTIONS - 64)) | (BigInt.one << (TOKEN_NS_CLOSED_ENUM - 64)) | (BigInt.one << (TOKEN_NS_TYPED_EXTENSIBLE_ENUM - 64)) | (BigInt.one << (TOKEN_NS_ERROR_ENUM - 64)) | (BigInt.one << (TOKEN_ASSIGN - 64)) | (BigInt.one << (TOKEN_COPY - 64)) | (BigInt.one << (TOKEN_GETTER - 64)) | (BigInt.one << (TOKEN_SETTER - 64)) | (BigInt.one << (TOKEN_STRONG - 64)) | (BigInt.one << (TOKEN_READONLY - 64)) | (BigInt.one << (TOKEN_READWRITE - 64)) | (BigInt.one << (TOKEN_WEAK - 64)) | (BigInt.one << (TOKEN_UNSAFE_UNRETAINED - 64)) | (BigInt.one << (TOKEN_IB_OUTLET - 64)) | (BigInt.one << (TOKEN_IB_OUTLET_COLLECTION - 64)) | (BigInt.one << (TOKEN_IB_INSPECTABLE - 64)) | (BigInt.one << (TOKEN_IB_DESIGNABLE - 64)) | (BigInt.one << (TOKEN_NS_ASSUME_NONNULL_BEGIN - 64)) | (BigInt.one << (TOKEN_NS_ASSUME_NONNULL_END - 64)) | (BigInt.one << (TOKEN_EXTERN_SUFFIX - 64)) | (BigInt.one << (TOKEN_IOS_SUFFIX - 64)) | (BigInt.one << (TOKEN_MAC_SUFFIX - 64)) | (BigInt.one << (TOKEN_TVOS_PROHIBITED - 64)))) != BigInt.zero) || ((((_la - 128)) & ~0x3f) == 0 && ((BigInt.one << (_la - 128)) & ((BigInt.one << (TOKEN_NS_NOESCAPE - 128)) | (BigInt.one << (TOKEN_EXPORT_SUFFIX - 128)) | (BigInt.one << (TOKEN_NS_RETURNS_RETAINED - 128)) | (BigInt.one << (TOKEN_NS_RETURNS_NOT_RETAINED - 128)) | (BigInt.one << (TOKEN_NS_RETURNS_INNER_POINTER - 128)) | (BigInt.one << (TOKEN_CF_RETURNS_RETAINED - 128)) | (BigInt.one << (TOKEN_CF_RETURNS_NOT_RETAINED - 128)) | (BigInt.one << (TOKEN_CF_CONSUMED - 128)) | (BigInt.one << (TOKEN_IDENTIFIER - 128)) | (BigInt.one << (TOKEN_LP - 128)) | (BigInt.one << (TOKEN_LBRACE - 128)) | (BigInt.one << (TOKEN_RBRACE - 128)) | (BigInt.one << (TOKEN_LBRACK - 128)) | (BigInt.one << (TOKEN_RBRACK - 128)) | (BigInt.one << (TOKEN_SEMI - 128)) | (BigInt.one << (TOKEN_COMMA - 128)) | (BigInt.one << (TOKEN_DOT - 128)) | (BigInt.one << (TOKEN_STRUCTACCESS - 128)) | (BigInt.one << (TOKEN_AT - 128)) | (BigInt.one << (TOKEN_ASSIGNMENT - 128)) | (BigInt.one << (TOKEN_GT - 128)) | (BigInt.one << (TOKEN_LT - 128)) | (BigInt.one << (TOKEN_BANG - 128)) | (BigInt.one << (TOKEN_TILDE - 128)) | (BigInt.one << (TOKEN_QUESTION - 128)) | (BigInt.one << (TOKEN_COLON - 128)) | (BigInt.one << (TOKEN_EQUAL - 128)) | (BigInt.one << (TOKEN_LE - 128)) | (BigInt.one << (TOKEN_GE - 128)) | (BigInt.one << (TOKEN_NOTEQUAL - 128)) | (BigInt.one << (TOKEN_AND - 128)) | (BigInt.one << (TOKEN_OR - 128)) | (BigInt.one << (TOKEN_INC - 128)) | (BigInt.one << (TOKEN_DEC - 128)) | (BigInt.one << (TOKEN_ADD - 128)) | (BigInt.one << (TOKEN_SUB - 128)) | (BigInt.one << (TOKEN_MUL - 128)) | (BigInt.one << (TOKEN_DIV - 128)) | (BigInt.one << (TOKEN_BITAND - 128)) | (BigInt.one << (TOKEN_BITOR - 128)) | (BigInt.one << (TOKEN_BITXOR - 128)) | (BigInt.one << (TOKEN_MOD - 128)) | (BigInt.one << (TOKEN_ADD_ASSIGN - 128)) | (BigInt.one << (TOKEN_SUB_ASSIGN - 128)) | (BigInt.one << (TOKEN_MUL_ASSIGN - 128)) | (BigInt.one << (TOKEN_DIV_ASSIGN - 128)) | (BigInt.one << (TOKEN_AND_ASSIGN - 128)) | (BigInt.one << (TOKEN_OR_ASSIGN - 128)) | (BigInt.one << (TOKEN_XOR_ASSIGN - 128)) | (BigInt.one << (TOKEN_MOD_ASSIGN - 128)) | (BigInt.one << (TOKEN_LSHIFT_ASSIGN - 128)) | (BigInt.one << (TOKEN_RSHIFT_ASSIGN - 128)) | (BigInt.one << (TOKEN_ELIPSIS - 128)) | (BigInt.one << (TOKEN_CHARACTER_LITERAL - 128)) | (BigInt.one << (TOKEN_STRING_START - 128)) | (BigInt.one << (TOKEN_HEX_LITERAL - 128)) | (BigInt.one << (TOKEN_OCTAL_LITERAL - 128)) | (BigInt.one << (TOKEN_BINARY_LITERAL - 128)) | (BigInt.one << (TOKEN_DECIMAL_LITERAL - 128)) | (BigInt.one << (TOKEN_FLOATING_POINT_LITERAL - 128)) | (BigInt.one << (TOKEN_VERSION_SEMATIC - 128)) | (BigInt.one << (TOKEN_WS - 128)) | (BigInt.one << (TOKEN_MULTI_COMMENT - 128)))) != BigInt.zero) || ((((_la - 192)) & ~0x3f) == 0 && ((BigInt.one << (_la - 192)) & ((BigInt.one << (TOKEN_SINGLE_COMMENT - 192)) | (BigInt.one << (TOKEN_BACKSLASH - 192)) | (BigInt.one << (TOKEN_SHARP - 192)) | (BigInt.one << (TOKEN_STRING_NEWLINE - 192)) | (BigInt.one << (TOKEN_STRING_END - 192)) | (BigInt.one << (TOKEN_STRING_VALUE - 192)) | (BigInt.one << (TOKEN_DIRECTIVE_IMPORT - 192)) | (BigInt.one << (TOKEN_DIRECTIVE_INCLUDE - 192)) | (BigInt.one << (TOKEN_DIRECTIVE_PRAGMA - 192)) | (BigInt.one << (TOKEN_DIRECTIVE_DEFINE - 192)) | (BigInt.one << (TOKEN_DIRECTIVE_DEFINED - 192)) | (BigInt.one << (TOKEN_DIRECTIVE_IF - 192)) | (BigInt.one << (TOKEN_DIRECTIVE_ELIF - 192)) | (BigInt.one << (TOKEN_DIRECTIVE_ELSE - 192)) | (BigInt.one << (TOKEN_DIRECTIVE_UNDEF - 192)) | (BigInt.one << (TOKEN_DIRECTIVE_IFDEF - 192)) | (BigInt.one << (TOKEN_DIRECTIVE_IFNDEF - 192)) | (BigInt.one << (TOKEN_DIRECTIVE_ENDIF - 192)) | (BigInt.one << (TOKEN_DIRECTIVE_TRUE - 192)) | (BigInt.one << (TOKEN_DIRECTIVE_FALSE - 192)) | (BigInt.one << (TOKEN_DIRECTIVE_ERROR - 192)) | (BigInt.one << (TOKEN_DIRECTIVE_WARNING - 192)) | (BigInt.one << (TOKEN_DIRECTIVE_BANG - 192)) | (BigInt.one << (TOKEN_DIRECTIVE_LP - 192)) | (BigInt.one << (TOKEN_DIRECTIVE_RP - 192)) | (BigInt.one << (TOKEN_DIRECTIVE_EQUAL - 192)) | (BigInt.one << (TOKEN_DIRECTIVE_NOTEQUAL - 192)) | (BigInt.one << (TOKEN_DIRECTIVE_AND - 192)) | (BigInt.one << (TOKEN_DIRECTIVE_OR - 192)) | (BigInt.one << (TOKEN_DIRECTIVE_LT - 192)) | (BigInt.one << (TOKEN_DIRECTIVE_GT - 192)) | (BigInt.one << (TOKEN_DIRECTIVE_LE - 192)) | (BigInt.one << (TOKEN_DIRECTIVE_GE - 192)) | (BigInt.one << (TOKEN_DIRECTIVE_ADD - 192)) | (BigInt.one << (TOKEN_DIRECTIVE_SUB - 192)) | (BigInt.one << (TOKEN_DIRECTIVE_MUL - 192)) | (BigInt.one << (TOKEN_DIRECTIVE_DIV - 192)) | (BigInt.one << (TOKEN_DIRECTIVE_BITAND - 192)) | (BigInt.one << (TOKEN_DIRECTIVE_BITOR - 192)) | (BigInt.one << (TOKEN_DIRECTIVE_BITXOR - 192)) | (BigInt.one << (TOKEN_DIRECTIVE_MOD - 192)) | (BigInt.one << (TOKEN_DIRECTIVE_DOT - 192)) | (BigInt.one << (TOKEN_DIRECTIVE_STRING - 192)) | (BigInt.one << (TOKEN_DIRECTIVE_ID - 192)) | (BigInt.one << (TOKEN_DIRECTIVE_DECIMAL_LITERAL - 192)) | (BigInt.one << (TOKEN_DIRECTIVE_FLOAT - 192)) | (BigInt.one << (TOKEN_DIRECTIVE_NEWLINE - 192)) | (BigInt.one << (TOKEN_DIRECTIVE_MULTI_COMMENT - 192)) | (BigInt.one << (TOKEN_DIRECTIVE_SINGLE_COMMENT - 192)) | (BigInt.one << (TOKEN_DIRECTIVE_BACKSLASH_NEWLINE - 192)) | (BigInt.one << (TOKEN_DIRECTIVE_TEXT_NEWLINE - 192)) | (BigInt.one << (TOKEN_DIRECTIVE_TEXT - 192)))) != BigInt.zero));
        state = 1818;
        match(TOKEN_RP);
        break;
      case 4:
        enterOuterAlt(_localctx, 4);
        state = 1819;
        _localctx.op = tokenStream.LT(1);
        _la = tokenStream.LA(1);
        if (!(_la == TOKEN_INC || _la == TOKEN_DEC)) {
          _localctx.op = errorHandler.recoverInline(this);
        } else {
          if ( tokenStream.LA(1)==IntStream.EOF ) matchedEOF = true;
          errorHandler.reportMatch(this);
          consume();
        }
        break;
      }
    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return _localctx;
  }

  ArgumentExpressionListContext argumentExpressionList() {
    dynamic _localctx = ArgumentExpressionListContext(context, state);
    enterRule(_localctx, 284, RULE_argumentExpressionList);
    int _la;
    try {
      enterOuterAlt(_localctx, 1);
      state = 1822;
      argumentExpression();
      state = 1827;
      errorHandler.sync(this);
      _la = tokenStream.LA(1);
      while (_la == TOKEN_COMMA) {
        state = 1823;
        match(TOKEN_COMMA);
        state = 1824;
        argumentExpression();
        state = 1829;
        errorHandler.sync(this);
        _la = tokenStream.LA(1);
      }
    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return _localctx;
  }

  ArgumentExpressionContext argumentExpression() {
    dynamic _localctx = ArgumentExpressionContext(context, state);
    enterRule(_localctx, 286, RULE_argumentExpression);
    try {
      state = 1832;
      errorHandler.sync(this);
      switch (interpreter.adaptivePredict(tokenStream, 262, context)) {
      case 1:
        enterOuterAlt(_localctx, 1);
        state = 1830;
        expression(0);
        break;
      case 2:
        enterOuterAlt(_localctx, 2);
        state = 1831;
        typeSpecifier();
        break;
      }
    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return _localctx;
  }

  OsVersionContext osVersion() {
    dynamic _localctx = OsVersionContext(context, state);
    enterRule(_localctx, 288, RULE_osVersion);
    int _la;
    try {
      enterOuterAlt(_localctx, 1);
      state = 1834;
      _localctx.os = identifier();
      state = 1842;
      errorHandler.sync(this);
      _la = tokenStream.LA(1);
      if (_la == TOKEN_LP) {
        state = 1835;
        match(TOKEN_LP);
        state = 1836;
        _localctx.min = tokenStream.LT(1);
        _la = tokenStream.LA(1);
        if (!(((((_la - 136)) & ~0x3f) == 0 && ((BigInt.one << (_la - 136)) & ((BigInt.one << (TOKEN_IDENTIFIER - 136)) | (BigInt.one << (TOKEN_FLOATING_POINT_LITERAL - 136)) | (BigInt.one << (TOKEN_VERSION_SEMATIC - 136)))) != BigInt.zero))) {
          _localctx.min = errorHandler.recoverInline(this);
        } else {
          if ( tokenStream.LA(1)==IntStream.EOF ) matchedEOF = true;
          errorHandler.reportMatch(this);
          consume();
        }
        state = 1839;
        errorHandler.sync(this);
        _la = tokenStream.LA(1);
        if (_la == TOKEN_COMMA) {
          state = 1837;
          match(TOKEN_COMMA);
          state = 1838;
          _localctx.max = tokenStream.LT(1);
          _la = tokenStream.LA(1);
          if (!(((((_la - 136)) & ~0x3f) == 0 && ((BigInt.one << (_la - 136)) & ((BigInt.one << (TOKEN_IDENTIFIER - 136)) | (BigInt.one << (TOKEN_FLOATING_POINT_LITERAL - 136)) | (BigInt.one << (TOKEN_VERSION_SEMATIC - 136)))) != BigInt.zero))) {
            _localctx.max = errorHandler.recoverInline(this);
          } else {
            if ( tokenStream.LA(1)==IntStream.EOF ) matchedEOF = true;
            errorHandler.reportMatch(this);
            consume();
          }
        }

        state = 1841;
        match(TOKEN_RP);
      }

    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return _localctx;
  }

  PrimaryExpressionContext primaryExpression() {
    dynamic _localctx = PrimaryExpressionContext(context, state);
    enterRule(_localctx, 290, RULE_primaryExpression);
    try {
      state = 1859;
      errorHandler.sync(this);
      switch (interpreter.adaptivePredict(tokenStream, 265, context)) {
      case 1:
        enterOuterAlt(_localctx, 1);
        state = 1844;
        identifier();
        break;
      case 2:
        enterOuterAlt(_localctx, 2);
        state = 1845;
        constant();
        break;
      case 3:
        enterOuterAlt(_localctx, 3);
        state = 1846;
        stringLiteral();
        break;
      case 4:
        enterOuterAlt(_localctx, 4);
        state = 1847;
        match(TOKEN_LP);
        state = 1848;
        expression(0);
        state = 1849;
        match(TOKEN_RP);
        break;
      case 5:
        enterOuterAlt(_localctx, 5);
        state = 1851;
        messageExpression();
        break;
      case 6:
        enterOuterAlt(_localctx, 6);
        state = 1852;
        selectorExpression();
        break;
      case 7:
        enterOuterAlt(_localctx, 7);
        state = 1853;
        protocolExpression();
        break;
      case 8:
        enterOuterAlt(_localctx, 8);
        state = 1854;
        encodeExpression();
        break;
      case 9:
        enterOuterAlt(_localctx, 9);
        state = 1855;
        dictionaryExpression();
        break;
      case 10:
        enterOuterAlt(_localctx, 10);
        state = 1856;
        arrayExpression();
        break;
      case 11:
        enterOuterAlt(_localctx, 11);
        state = 1857;
        boxExpression();
        break;
      case 12:
        enterOuterAlt(_localctx, 12);
        state = 1858;
        blockExpression();
        break;
      }
    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return _localctx;
  }

  ConstantContext constant() {
    dynamic _localctx = ConstantContext(context, state);
    enterRule(_localctx, 292, RULE_constant);
    int _la;
    try {
      state = 1879;
      errorHandler.sync(this);
      switch (interpreter.adaptivePredict(tokenStream, 268, context)) {
      case 1:
        enterOuterAlt(_localctx, 1);
        state = 1861;
        match(TOKEN_HEX_LITERAL);
        break;
      case 2:
        enterOuterAlt(_localctx, 2);
        state = 1862;
        match(TOKEN_OCTAL_LITERAL);
        break;
      case 3:
        enterOuterAlt(_localctx, 3);
        state = 1863;
        match(TOKEN_BINARY_LITERAL);
        break;
      case 4:
        enterOuterAlt(_localctx, 4);
        state = 1865;
        errorHandler.sync(this);
        _la = tokenStream.LA(1);
        if (_la == TOKEN_ADD || _la == TOKEN_SUB) {
          state = 1864;
          _la = tokenStream.LA(1);
          if (!(_la == TOKEN_ADD || _la == TOKEN_SUB)) {
          errorHandler.recoverInline(this);
          } else {
            if ( tokenStream.LA(1)==IntStream.EOF ) matchedEOF = true;
            errorHandler.reportMatch(this);
            consume();
          }
        }

        state = 1867;
        match(TOKEN_DECIMAL_LITERAL);
        break;
      case 5:
        enterOuterAlt(_localctx, 5);
        state = 1869;
        errorHandler.sync(this);
        _la = tokenStream.LA(1);
        if (_la == TOKEN_ADD || _la == TOKEN_SUB) {
          state = 1868;
          _la = tokenStream.LA(1);
          if (!(_la == TOKEN_ADD || _la == TOKEN_SUB)) {
          errorHandler.recoverInline(this);
          } else {
            if ( tokenStream.LA(1)==IntStream.EOF ) matchedEOF = true;
            errorHandler.reportMatch(this);
            consume();
          }
        }

        state = 1871;
        match(TOKEN_FLOATING_POINT_LITERAL);
        break;
      case 6:
        enterOuterAlt(_localctx, 6);
        state = 1872;
        match(TOKEN_CHARACTER_LITERAL);
        break;
      case 7:
        enterOuterAlt(_localctx, 7);
        state = 1873;
        match(TOKEN_NIL);
        break;
      case 8:
        enterOuterAlt(_localctx, 8);
        state = 1874;
        match(TOKEN_NULL);
        break;
      case 9:
        enterOuterAlt(_localctx, 9);
        state = 1875;
        match(TOKEN_YES);
        break;
      case 10:
        enterOuterAlt(_localctx, 10);
        state = 1876;
        match(TOKEN_NO);
        break;
      case 11:
        enterOuterAlt(_localctx, 11);
        state = 1877;
        match(TOKEN_TRUE);
        break;
      case 12:
        enterOuterAlt(_localctx, 12);
        state = 1878;
        match(TOKEN_FALSE);
        break;
      }
    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return _localctx;
  }

  StringLiteralContext stringLiteral() {
    dynamic _localctx = StringLiteralContext(context, state);
    enterRule(_localctx, 294, RULE_stringLiteral);
    int _la;
    try {
      int _alt;
      enterOuterAlt(_localctx, 1);
      state = 1889; 
      errorHandler.sync(this);
      _alt = 1;
      do {
        switch (_alt) {
        case 1:
          state = 1881;
          match(TOKEN_STRING_START);
          state = 1885;
          errorHandler.sync(this);
          _la = tokenStream.LA(1);
          while (_la == TOKEN_STRING_NEWLINE || _la == TOKEN_STRING_VALUE) {
            state = 1882;
            _la = tokenStream.LA(1);
            if (!(_la == TOKEN_STRING_NEWLINE || _la == TOKEN_STRING_VALUE)) {
            errorHandler.recoverInline(this);
            } else {
              if ( tokenStream.LA(1)==IntStream.EOF ) matchedEOF = true;
              errorHandler.reportMatch(this);
              consume();
            }
            state = 1887;
            errorHandler.sync(this);
            _la = tokenStream.LA(1);
          }
          state = 1888;
          match(TOKEN_STRING_END);
          break;
        default:
          throw NoViableAltException(this);
        }
        state = 1891; 
        errorHandler.sync(this);
        _alt = interpreter.adaptivePredict(tokenStream, 270, context);
      } while (_alt != 2 && _alt != ATN.INVALID_ALT_NUMBER);
    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return _localctx;
  }

  IdentifierContext identifier() {
    dynamic _localctx = IdentifierContext(context, state);
    enterRule(_localctx, 296, RULE_identifier);
    int _la;
    try {
      enterOuterAlt(_localctx, 1);
      state = 1893;
      _la = tokenStream.LA(1);
      if (!((((_la) & ~0x3f) == 0 && ((BigInt.one << _la) & ((BigInt.one << TOKEN_BOOL) | (BigInt.one << TOKEN_Class) | (BigInt.one << TOKEN_BYCOPY) | (BigInt.one << TOKEN_BYREF) | (BigInt.one << TOKEN_ID) | (BigInt.one << TOKEN_IMP) | (BigInt.one << TOKEN_IN) | (BigInt.one << TOKEN_INOUT) | (BigInt.one << TOKEN_ONEWAY) | (BigInt.one << TOKEN_OUT) | (BigInt.one << TOKEN_PROTOCOL_) | (BigInt.one << TOKEN_SEL) | (BigInt.one << TOKEN_SELF) | (BigInt.one << TOKEN_SUPER))) != BigInt.zero) || ((((_la - 81)) & ~0x3f) == 0 && ((BigInt.one << (_la - 81)) & ((BigInt.one << (TOKEN_ATOMIC - 81)) | (BigInt.one << (TOKEN_NONATOMIC - 81)) | (BigInt.one << (TOKEN_RETAIN - 81)) | (BigInt.one << (TOKEN_AUTORELEASING_QUALIFIER - 81)) | (BigInt.one << (TOKEN_BLOCK - 81)) | (BigInt.one << (TOKEN_BRIDGE_RETAINED - 81)) | (BigInt.one << (TOKEN_BRIDGE_TRANSFER - 81)) | (BigInt.one << (TOKEN_COVARIANT - 81)) | (BigInt.one << (TOKEN_CONTRAVARIANT - 81)) | (BigInt.one << (TOKEN_DEPRECATED - 81)) | (BigInt.one << (TOKEN_KINDOF - 81)) | (BigInt.one << (TOKEN_UNUSED - 81)) | (BigInt.one << (TOKEN_NULL_UNSPECIFIED - 81)) | (BigInt.one << (TOKEN_NULLABLE - 81)) | (BigInt.one << (TOKEN_NONNULL - 81)) | (BigInt.one << (TOKEN_NULL_RESETTABLE - 81)) | (BigInt.one << (TOKEN_NS_INLINE - 81)) | (BigInt.one << (TOKEN_NS_ENUM - 81)) | (BigInt.one << (TOKEN_NS_OPTIONS - 81)) | (BigInt.one << (TOKEN_ASSIGN - 81)) | (BigInt.one << (TOKEN_COPY - 81)) | (BigInt.one << (TOKEN_GETTER - 81)) | (BigInt.one << (TOKEN_SETTER - 81)) | (BigInt.one << (TOKEN_STRONG - 81)) | (BigInt.one << (TOKEN_READONLY - 81)) | (BigInt.one << (TOKEN_READWRITE - 81)) | (BigInt.one << (TOKEN_WEAK - 81)) | (BigInt.one << (TOKEN_UNSAFE_UNRETAINED - 81)) | (BigInt.one << (TOKEN_IB_OUTLET - 81)) | (BigInt.one << (TOKEN_IB_OUTLET_COLLECTION - 81)) | (BigInt.one << (TOKEN_IB_INSPECTABLE - 81)) | (BigInt.one << (TOKEN_IB_DESIGNABLE - 81)) | (BigInt.one << (TOKEN_IDENTIFIER - 81)))) != BigInt.zero))) {
      errorHandler.recoverInline(this);
      } else {
        if ( tokenStream.LA(1)==IntStream.EOF ) matchedEOF = true;
        errorHandler.reportMatch(this);
        consume();
      }
    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return _localctx;
  }

  @override
  bool sempred(RuleContext _localctx, int ruleIndex, int predIndex) {
    switch (ruleIndex) {
    case 133:
      return _expression_sempred(_localctx, predIndex);
    case 140:
      return _postfixExpression_sempred(_localctx, predIndex);
    }
    return true;
  }
  bool _expression_sempred(ExpressionContext _localctx, int predIndex) {
    switch (predIndex) {
      case 0: return precpred(context, 13);
      case 1: return precpred(context, 12);
      case 2: return precpred(context, 11);
      case 3: return precpred(context, 10);
      case 4: return precpred(context, 9);
      case 5: return precpred(context, 8);
      case 6: return precpred(context, 7);
      case 7: return precpred(context, 6);
      case 8: return precpred(context, 5);
      case 9: return precpred(context, 4);
      case 10: return precpred(context, 3);
    }
    return true;
  }
  bool _postfixExpression_sempred(PostfixExpressionContext _localctx, int predIndex) {
    switch (predIndex) {
      case 11: return precpred(context, 1);
    }
    return true;
  }

  static const String _serializedATN = '\u{3}\u{608B}\u{A72A}\u{8133}\u{B9ED}'
  	'\u{417C}\u{3BE7}\u{7786}\u{5964}\u{3}\u{F5}\u{76A}\u{4}\u{2}\u{9}\u{2}'
  	'\u{4}\u{3}\u{9}\u{3}\u{4}\u{4}\u{9}\u{4}\u{4}\u{5}\u{9}\u{5}\u{4}\u{6}'
  	'\u{9}\u{6}\u{4}\u{7}\u{9}\u{7}\u{4}\u{8}\u{9}\u{8}\u{4}\u{9}\u{9}\u{9}'
  	'\u{4}\u{A}\u{9}\u{A}\u{4}\u{B}\u{9}\u{B}\u{4}\u{C}\u{9}\u{C}\u{4}\u{D}'
  	'\u{9}\u{D}\u{4}\u{E}\u{9}\u{E}\u{4}\u{F}\u{9}\u{F}\u{4}\u{10}\u{9}\u{10}'
  	'\u{4}\u{11}\u{9}\u{11}\u{4}\u{12}\u{9}\u{12}\u{4}\u{13}\u{9}\u{13}\u{4}'
  	'\u{14}\u{9}\u{14}\u{4}\u{15}\u{9}\u{15}\u{4}\u{16}\u{9}\u{16}\u{4}\u{17}'
  	'\u{9}\u{17}\u{4}\u{18}\u{9}\u{18}\u{4}\u{19}\u{9}\u{19}\u{4}\u{1A}\u{9}'
  	'\u{1A}\u{4}\u{1B}\u{9}\u{1B}\u{4}\u{1C}\u{9}\u{1C}\u{4}\u{1D}\u{9}\u{1D}'
  	'\u{4}\u{1E}\u{9}\u{1E}\u{4}\u{1F}\u{9}\u{1F}\u{4}\u{20}\u{9}\u{20}\u{4}'
  	'\u{21}\u{9}\u{21}\u{4}\u{22}\u{9}\u{22}\u{4}\u{23}\u{9}\u{23}\u{4}\u{24}'
  	'\u{9}\u{24}\u{4}\u{25}\u{9}\u{25}\u{4}\u{26}\u{9}\u{26}\u{4}\u{27}\u{9}'
  	'\u{27}\u{4}\u{28}\u{9}\u{28}\u{4}\u{29}\u{9}\u{29}\u{4}\u{2A}\u{9}\u{2A}'
  	'\u{4}\u{2B}\u{9}\u{2B}\u{4}\u{2C}\u{9}\u{2C}\u{4}\u{2D}\u{9}\u{2D}\u{4}'
  	'\u{2E}\u{9}\u{2E}\u{4}\u{2F}\u{9}\u{2F}\u{4}\u{30}\u{9}\u{30}\u{4}\u{31}'
  	'\u{9}\u{31}\u{4}\u{32}\u{9}\u{32}\u{4}\u{33}\u{9}\u{33}\u{4}\u{34}\u{9}'
  	'\u{34}\u{4}\u{35}\u{9}\u{35}\u{4}\u{36}\u{9}\u{36}\u{4}\u{37}\u{9}\u{37}'
  	'\u{4}\u{38}\u{9}\u{38}\u{4}\u{39}\u{9}\u{39}\u{4}\u{3A}\u{9}\u{3A}\u{4}'
  	'\u{3B}\u{9}\u{3B}\u{4}\u{3C}\u{9}\u{3C}\u{4}\u{3D}\u{9}\u{3D}\u{4}\u{3E}'
  	'\u{9}\u{3E}\u{4}\u{3F}\u{9}\u{3F}\u{4}\u{40}\u{9}\u{40}\u{4}\u{41}\u{9}'
  	'\u{41}\u{4}\u{42}\u{9}\u{42}\u{4}\u{43}\u{9}\u{43}\u{4}\u{44}\u{9}\u{44}'
  	'\u{4}\u{45}\u{9}\u{45}\u{4}\u{46}\u{9}\u{46}\u{4}\u{47}\u{9}\u{47}\u{4}'
  	'\u{48}\u{9}\u{48}\u{4}\u{49}\u{9}\u{49}\u{4}\u{4A}\u{9}\u{4A}\u{4}\u{4B}'
  	'\u{9}\u{4B}\u{4}\u{4C}\u{9}\u{4C}\u{4}\u{4D}\u{9}\u{4D}\u{4}\u{4E}\u{9}'
  	'\u{4E}\u{4}\u{4F}\u{9}\u{4F}\u{4}\u{50}\u{9}\u{50}\u{4}\u{51}\u{9}\u{51}'
  	'\u{4}\u{52}\u{9}\u{52}\u{4}\u{53}\u{9}\u{53}\u{4}\u{54}\u{9}\u{54}\u{4}'
  	'\u{55}\u{9}\u{55}\u{4}\u{56}\u{9}\u{56}\u{4}\u{57}\u{9}\u{57}\u{4}\u{58}'
  	'\u{9}\u{58}\u{4}\u{59}\u{9}\u{59}\u{4}\u{5A}\u{9}\u{5A}\u{4}\u{5B}\u{9}'
  	'\u{5B}\u{4}\u{5C}\u{9}\u{5C}\u{4}\u{5D}\u{9}\u{5D}\u{4}\u{5E}\u{9}\u{5E}'
  	'\u{4}\u{5F}\u{9}\u{5F}\u{4}\u{60}\u{9}\u{60}\u{4}\u{61}\u{9}\u{61}\u{4}'
  	'\u{62}\u{9}\u{62}\u{4}\u{63}\u{9}\u{63}\u{4}\u{64}\u{9}\u{64}\u{4}\u{65}'
  	'\u{9}\u{65}\u{4}\u{66}\u{9}\u{66}\u{4}\u{67}\u{9}\u{67}\u{4}\u{68}\u{9}'
  	'\u{68}\u{4}\u{69}\u{9}\u{69}\u{4}\u{6A}\u{9}\u{6A}\u{4}\u{6B}\u{9}\u{6B}'
  	'\u{4}\u{6C}\u{9}\u{6C}\u{4}\u{6D}\u{9}\u{6D}\u{4}\u{6E}\u{9}\u{6E}\u{4}'
  	'\u{6F}\u{9}\u{6F}\u{4}\u{70}\u{9}\u{70}\u{4}\u{71}\u{9}\u{71}\u{4}\u{72}'
  	'\u{9}\u{72}\u{4}\u{73}\u{9}\u{73}\u{4}\u{74}\u{9}\u{74}\u{4}\u{75}\u{9}'
  	'\u{75}\u{4}\u{76}\u{9}\u{76}\u{4}\u{77}\u{9}\u{77}\u{4}\u{78}\u{9}\u{78}'
  	'\u{4}\u{79}\u{9}\u{79}\u{4}\u{7A}\u{9}\u{7A}\u{4}\u{7B}\u{9}\u{7B}\u{4}'
  	'\u{7C}\u{9}\u{7C}\u{4}\u{7D}\u{9}\u{7D}\u{4}\u{7E}\u{9}\u{7E}\u{4}\u{7F}'
  	'\u{9}\u{7F}\u{4}\u{80}\u{9}\u{80}\u{4}\u{81}\u{9}\u{81}\u{4}\u{82}\u{9}'
  	'\u{82}\u{4}\u{83}\u{9}\u{83}\u{4}\u{84}\u{9}\u{84}\u{4}\u{85}\u{9}\u{85}'
  	'\u{4}\u{86}\u{9}\u{86}\u{4}\u{87}\u{9}\u{87}\u{4}\u{88}\u{9}\u{88}\u{4}'
  	'\u{89}\u{9}\u{89}\u{4}\u{8A}\u{9}\u{8A}\u{4}\u{8B}\u{9}\u{8B}\u{4}\u{8C}'
  	'\u{9}\u{8C}\u{4}\u{8D}\u{9}\u{8D}\u{4}\u{8E}\u{9}\u{8E}\u{4}\u{8F}\u{9}'
  	'\u{8F}\u{4}\u{90}\u{9}\u{90}\u{4}\u{91}\u{9}\u{91}\u{4}\u{92}\u{9}\u{92}'
  	'\u{4}\u{93}\u{9}\u{93}\u{4}\u{94}\u{9}\u{94}\u{4}\u{95}\u{9}\u{95}\u{4}'
  	'\u{96}\u{9}\u{96}\u{3}\u{2}\u{7}\u{2}\u{12E}\u{A}\u{2}\u{C}\u{2}\u{E}'
  	'\u{2}\u{131}\u{B}\u{2}\u{3}\u{2}\u{3}\u{2}\u{3}\u{3}\u{3}\u{3}\u{3}\u{3}'
  	'\u{3}\u{3}\u{3}\u{3}\u{3}\u{3}\u{3}\u{3}\u{3}\u{3}\u{3}\u{3}\u{3}\u{3}'
  	'\u{3}\u{3}\u{5}\u{3}\u{140}\u{A}\u{3}\u{3}\u{4}\u{3}\u{4}\u{3}\u{4}\u{3}'
  	'\u{4}\u{3}\u{4}\u{3}\u{4}\u{5}\u{4}\u{148}\u{A}\u{4}\u{3}\u{4}\u{5}\u{4}'
  	'\u{14B}\u{A}\u{4}\u{3}\u{4}\u{3}\u{4}\u{3}\u{4}\u{3}\u{4}\u{3}\u{4}\u{3}'
  	'\u{4}\u{5}\u{4}\u{153}\u{A}\u{4}\u{3}\u{5}\u{5}\u{5}\u{156}\u{A}\u{5}'
  	'\u{3}\u{5}\u{3}\u{5}\u{7}\u{5}\u{15A}\u{A}\u{5}\u{C}\u{5}\u{E}\u{5}\u{15D}'
  	'\u{B}\u{5}\u{3}\u{5}\u{3}\u{5}\u{3}\u{5}\u{3}\u{5}\u{5}\u{5}\u{163}\u{A}'
  	'\u{5}\u{3}\u{5}\u{3}\u{5}\u{3}\u{5}\u{3}\u{5}\u{5}\u{5}\u{169}\u{A}\u{5}'
  	'\u{3}\u{5}\u{5}\u{5}\u{16C}\u{A}\u{5}\u{3}\u{5}\u{5}\u{5}\u{16F}\u{A}'
  	'\u{5}\u{3}\u{5}\u{3}\u{5}\u{3}\u{6}\u{3}\u{6}\u{7}\u{6}\u{175}\u{A}\u{6}'
  	'\u{C}\u{6}\u{E}\u{6}\u{178}\u{B}\u{6}\u{3}\u{6}\u{3}\u{6}\u{3}\u{6}\u{3}'
  	'\u{6}\u{5}\u{6}\u{17E}\u{A}\u{6}\u{3}\u{6}\u{3}\u{6}\u{3}\u{6}\u{3}\u{6}'
  	'\u{3}\u{6}\u{5}\u{6}\u{185}\u{A}\u{6}\u{3}\u{6}\u{5}\u{6}\u{188}\u{A}'
  	'\u{6}\u{3}\u{6}\u{5}\u{6}\u{18B}\u{A}\u{6}\u{3}\u{6}\u{3}\u{6}\u{3}\u{7}'
  	'\u{3}\u{7}\u{3}\u{7}\u{3}\u{7}\u{5}\u{7}\u{193}\u{A}\u{7}\u{3}\u{7}\u{5}'
  	'\u{7}\u{196}\u{A}\u{7}\u{3}\u{7}\u{5}\u{7}\u{199}\u{A}\u{7}\u{3}\u{7}'
  	'\u{3}\u{7}\u{3}\u{8}\u{3}\u{8}\u{3}\u{8}\u{3}\u{8}\u{3}\u{8}\u{3}\u{8}'
  	'\u{5}\u{8}\u{1A3}\u{A}\u{8}\u{3}\u{8}\u{3}\u{8}\u{3}\u{9}\u{3}\u{9}\u{3}'
  	'\u{9}\u{3}\u{9}\u{3}\u{9}\u{3}\u{9}\u{5}\u{9}\u{1AD}\u{A}\u{9}\u{3}\u{A}'
  	'\u{3}\u{A}\u{7}\u{A}\u{1B1}\u{A}\u{A}\u{C}\u{A}\u{E}\u{A}\u{1B4}\u{B}'
  	'\u{A}\u{3}\u{A}\u{3}\u{A}\u{3}\u{A}\u{3}\u{A}\u{3}\u{A}\u{3}\u{A}\u{5}'
  	'\u{A}\u{1BC}\u{A}\u{A}\u{3}\u{A}\u{7}\u{A}\u{1BF}\u{A}\u{A}\u{C}\u{A}'
  	'\u{E}\u{A}\u{1C2}\u{B}\u{A}\u{3}\u{A}\u{3}\u{A}\u{3}\u{B}\u{3}\u{B}\u{7}'
  	'\u{B}\u{1C8}\u{A}\u{B}\u{C}\u{B}\u{E}\u{B}\u{1CB}\u{B}\u{B}\u{3}\u{B}'
  	'\u{6}\u{B}\u{1CE}\u{A}\u{B}\u{D}\u{B}\u{E}\u{B}\u{1CF}\u{5}\u{B}\u{1D2}'
  	'\u{A}\u{B}\u{3}\u{C}\u{3}\u{C}\u{3}\u{C}\u{3}\u{C}\u{3}\u{D}\u{3}\u{D}'
  	'\u{3}\u{D}\u{3}\u{D}\u{3}\u{D}\u{5}\u{D}\u{1DD}\u{A}\u{D}\u{3}\u{E}\u{3}'
  	'\u{E}\u{3}\u{E}\u{3}\u{E}\u{7}\u{E}\u{1E3}\u{A}\u{E}\u{C}\u{E}\u{E}\u{E}'
  	'\u{1E6}\u{B}\u{E}\u{3}\u{E}\u{3}\u{E}\u{3}\u{F}\u{3}\u{F}\u{3}\u{F}\u{7}'
  	'\u{F}\u{1ED}\u{A}\u{F}\u{C}\u{F}\u{E}\u{F}\u{1F0}\u{B}\u{F}\u{3}\u{10}'
  	'\u{3}\u{10}\u{3}\u{10}\u{3}\u{10}\u{3}\u{10}\u{5}\u{10}\u{1F7}\u{A}\u{10}'
  	'\u{3}\u{10}\u{5}\u{10}\u{1FA}\u{A}\u{10}\u{3}\u{10}\u{5}\u{10}\u{1FD}'
  	'\u{A}\u{10}\u{3}\u{10}\u{3}\u{10}\u{3}\u{11}\u{3}\u{11}\u{3}\u{11}\u{7}'
  	'\u{11}\u{204}\u{A}\u{11}\u{C}\u{11}\u{E}\u{11}\u{207}\u{B}\u{11}\u{3}'
  	'\u{12}\u{3}\u{12}\u{3}\u{12}\u{3}\u{12}\u{3}\u{12}\u{3}\u{12}\u{3}\u{12}'
  	'\u{3}\u{12}\u{3}\u{12}\u{3}\u{12}\u{3}\u{12}\u{3}\u{12}\u{3}\u{12}\u{3}'
  	'\u{12}\u{3}\u{12}\u{3}\u{12}\u{3}\u{12}\u{3}\u{12}\u{3}\u{12}\u{3}\u{12}'
  	'\u{5}\u{12}\u{21D}\u{A}\u{12}\u{3}\u{13}\u{3}\u{13}\u{3}\u{13}\u{3}\u{13}'
  	'\u{3}\u{13}\u{5}\u{13}\u{224}\u{A}\u{13}\u{3}\u{13}\u{3}\u{13}\u{3}\u{13}'
  	'\u{5}\u{13}\u{229}\u{A}\u{13}\u{5}\u{13}\u{22B}\u{A}\u{13}\u{3}\u{14}'
  	'\u{3}\u{14}\u{7}\u{14}\u{22F}\u{A}\u{14}\u{C}\u{14}\u{E}\u{14}\u{232}'
  	'\u{B}\u{14}\u{3}\u{14}\u{3}\u{14}\u{3}\u{15}\u{3}\u{15}\u{7}\u{15}\u{238}'
  	'\u{A}\u{15}\u{C}\u{15}\u{E}\u{15}\u{23B}\u{B}\u{15}\u{3}\u{15}\u{6}\u{15}'
  	'\u{23E}\u{A}\u{15}\u{D}\u{15}\u{E}\u{15}\u{23F}\u{5}\u{15}\u{242}\u{A}'
  	'\u{15}\u{3}\u{16}\u{3}\u{16}\u{3}\u{17}\u{3}\u{17}\u{3}\u{17}\u{3}\u{17}'
  	'\u{3}\u{17}\u{6}\u{17}\u{24B}\u{A}\u{17}\u{D}\u{17}\u{E}\u{17}\u{24C}'
  	'\u{3}\u{18}\u{3}\u{18}\u{3}\u{18}\u{3}\u{19}\u{3}\u{19}\u{3}\u{19}\u{3}'
  	'\u{1A}\u{5}\u{1A}\u{256}\u{A}\u{1A}\u{3}\u{1A}\u{3}\u{1A}\u{3}\u{1A}'
  	'\u{7}\u{1A}\u{25B}\u{A}\u{1A}\u{C}\u{1A}\u{E}\u{1A}\u{25E}\u{B}\u{1A}'
  	'\u{3}\u{1A}\u{3}\u{1A}\u{3}\u{1B}\u{3}\u{1B}\u{3}\u{1B}\u{3}\u{1B}\u{3}'
  	'\u{1B}\u{6}\u{1B}\u{267}\u{A}\u{1B}\u{D}\u{1B}\u{E}\u{1B}\u{268}\u{3}'
  	'\u{1C}\u{3}\u{1C}\u{3}\u{1C}\u{3}\u{1D}\u{3}\u{1D}\u{3}\u{1D}\u{3}\u{1E}'
  	'\u{5}\u{1E}\u{272}\u{A}\u{1E}\u{3}\u{1E}\u{3}\u{1E}\u{5}\u{1E}\u{276}'
  	'\u{A}\u{1E}\u{3}\u{1E}\u{5}\u{1E}\u{279}\u{A}\u{1E}\u{3}\u{1E}\u{3}\u{1E}'
  	'\u{3}\u{1F}\u{3}\u{1F}\u{6}\u{1F}\u{27F}\u{A}\u{1F}\u{D}\u{1F}\u{E}\u{1F}'
  	'\u{280}\u{3}\u{1F}\u{3}\u{1F}\u{5}\u{1F}\u{285}\u{A}\u{1F}\u{5}\u{1F}'
  	'\u{287}\u{A}\u{1F}\u{3}\u{20}\u{5}\u{20}\u{28A}\u{A}\u{20}\u{3}\u{20}'
  	'\u{3}\u{20}\u{7}\u{20}\u{28E}\u{A}\u{20}\u{C}\u{20}\u{E}\u{20}\u{291}'
  	'\u{B}\u{20}\u{3}\u{20}\u{5}\u{20}\u{294}\u{A}\u{20}\u{3}\u{20}\u{3}\u{20}'
  	'\u{3}\u{21}\u{3}\u{21}\u{5}\u{21}\u{29A}\u{A}\u{21}\u{3}\u{22}\u{3}\u{22}'
  	'\u{3}\u{22}\u{3}\u{22}\u{3}\u{23}\u{3}\u{23}\u{3}\u{23}\u{3}\u{23}\u{3}'
  	'\u{23}\u{3}\u{23}\u{3}\u{23}\u{3}\u{23}\u{5}\u{23}\u{2A8}\u{A}\u{23}'
  	'\u{3}\u{24}\u{3}\u{24}\u{3}\u{24}\u{7}\u{24}\u{2AD}\u{A}\u{24}\u{C}\u{24}'
  	'\u{E}\u{24}\u{2B0}\u{B}\u{24}\u{3}\u{25}\u{3}\u{25}\u{3}\u{25}\u{5}\u{25}'
  	'\u{2B5}\u{A}\u{25}\u{3}\u{26}\u{5}\u{26}\u{2B8}\u{A}\u{26}\u{3}\u{26}'
  	'\u{3}\u{26}\u{5}\u{26}\u{2BC}\u{A}\u{26}\u{3}\u{26}\u{3}\u{26}\u{3}\u{26}'
  	'\u{3}\u{26}\u{5}\u{26}\u{2C2}\u{A}\u{26}\u{3}\u{26}\u{3}\u{26}\u{5}\u{26}'
  	'\u{2C6}\u{A}\u{26}\u{3}\u{27}\u{3}\u{27}\u{3}\u{27}\u{3}\u{27}\u{7}\u{27}'
  	'\u{2CC}\u{A}\u{27}\u{C}\u{27}\u{E}\u{27}\u{2CF}\u{B}\u{27}\u{5}\u{27}'
  	'\u{2D1}\u{A}\u{27}\u{3}\u{27}\u{3}\u{27}\u{3}\u{28}\u{7}\u{28}\u{2D6}'
  	'\u{A}\u{28}\u{C}\u{28}\u{E}\u{28}\u{2D9}\u{B}\u{28}\u{3}\u{28}\u{3}\u{28}'
  	'\u{3}\u{29}\u{3}\u{29}\u{3}\u{29}\u{3}\u{29}\u{3}\u{29}\u{7}\u{29}\u{2E2}'
  	'\u{A}\u{29}\u{C}\u{29}\u{E}\u{29}\u{2E5}\u{B}\u{29}\u{3}\u{29}\u{5}\u{29}'
  	'\u{2E8}\u{A}\u{29}\u{5}\u{29}\u{2EA}\u{A}\u{29}\u{3}\u{29}\u{3}\u{29}'
  	'\u{3}\u{2A}\u{3}\u{2A}\u{3}\u{2A}\u{3}\u{2A}\u{3}\u{2B}\u{3}\u{2B}\u{3}'
  	'\u{2B}\u{3}\u{2B}\u{5}\u{2B}\u{2F6}\u{A}\u{2B}\u{5}\u{2B}\u{2F8}\u{A}'
  	'\u{2B}\u{3}\u{2B}\u{3}\u{2B}\u{3}\u{2C}\u{3}\u{2C}\u{3}\u{2C}\u{3}\u{2C}'
  	'\u{3}\u{2C}\u{3}\u{2C}\u{3}\u{2C}\u{3}\u{2C}\u{5}\u{2C}\u{304}\u{A}\u{2C}'
  	'\u{5}\u{2C}\u{306}\u{A}\u{2C}\u{3}\u{2D}\u{3}\u{2D}\u{3}\u{2D}\u{5}\u{2D}'
  	'\u{30B}\u{A}\u{2D}\u{3}\u{2D}\u{3}\u{2D}\u{7}\u{2D}\u{30F}\u{A}\u{2D}'
  	'\u{C}\u{2D}\u{E}\u{2D}\u{312}\u{B}\u{2D}\u{5}\u{2D}\u{314}\u{A}\u{2D}'
  	'\u{3}\u{2D}\u{3}\u{2D}\u{3}\u{2E}\u{3}\u{2E}\u{5}\u{2E}\u{31A}\u{A}\u{2E}'
  	'\u{3}\u{2F}\u{3}\u{2F}\u{5}\u{2F}\u{31E}\u{A}\u{2F}\u{3}\u{2F}\u{5}\u{2F}'
  	'\u{321}\u{A}\u{2F}\u{3}\u{2F}\u{5}\u{2F}\u{324}\u{A}\u{2F}\u{3}\u{2F}'
  	'\u{3}\u{2F}\u{3}\u{30}\u{3}\u{30}\u{3}\u{30}\u{3}\u{30}\u{3}\u{30}\u{3}'
  	'\u{31}\u{3}\u{31}\u{5}\u{31}\u{32F}\u{A}\u{31}\u{3}\u{32}\u{3}\u{32}'
  	'\u{6}\u{32}\u{333}\u{A}\u{32}\u{D}\u{32}\u{E}\u{32}\u{334}\u{5}\u{32}'
  	'\u{337}\u{A}\u{32}\u{3}\u{33}\u{5}\u{33}\u{33A}\u{A}\u{33}\u{3}\u{33}'
  	'\u{3}\u{33}\u{3}\u{33}\u{3}\u{33}\u{7}\u{33}\u{340}\u{A}\u{33}\u{C}\u{33}'
  	'\u{E}\u{33}\u{343}\u{B}\u{33}\u{3}\u{34}\u{3}\u{34}\u{5}\u{34}\u{347}'
  	'\u{A}\u{34}\u{3}\u{34}\u{3}\u{34}\u{3}\u{34}\u{3}\u{34}\u{5}\u{34}\u{34D}'
  	'\u{A}\u{34}\u{3}\u{35}\u{3}\u{35}\u{3}\u{35}\u{3}\u{35}\u{3}\u{35}\u{3}'
  	'\u{36}\u{3}\u{36}\u{5}\u{36}\u{356}\u{A}\u{36}\u{3}\u{36}\u{6}\u{36}'
  	'\u{359}\u{A}\u{36}\u{D}\u{36}\u{E}\u{36}\u{35A}\u{5}\u{36}\u{35D}\u{A}'
  	'\u{36}\u{3}\u{37}\u{3}\u{37}\u{3}\u{37}\u{3}\u{37}\u{3}\u{37}\u{3}\u{38}'
  	'\u{3}\u{38}\u{3}\u{38}\u{3}\u{38}\u{3}\u{38}\u{3}\u{39}\u{3}\u{39}\u{3}'
  	'\u{39}\u{3}\u{3A}\u{3}\u{3A}\u{3}\u{3A}\u{3}\u{3A}\u{3}\u{3A}\u{3}\u{3A}'
  	'\u{3}\u{3A}\u{5}\u{3A}\u{373}\u{A}\u{3A}\u{3}\u{3B}\u{3}\u{3B}\u{3}\u{3B}'
  	'\u{7}\u{3B}\u{378}\u{A}\u{3B}\u{C}\u{3B}\u{E}\u{3B}\u{37B}\u{B}\u{3B}'
  	'\u{3}\u{3B}\u{3}\u{3B}\u{5}\u{3B}\u{37F}\u{A}\u{3B}\u{3}\u{3C}\u{3}\u{3C}'
  	'\u{3}\u{3C}\u{3}\u{3C}\u{3}\u{3C}\u{3}\u{3C}\u{3}\u{3D}\u{3}\u{3D}\u{3}'
  	'\u{3D}\u{3}\u{3D}\u{3}\u{3D}\u{3}\u{3D}\u{3}\u{3E}\u{3}\u{3E}\u{3}\u{3E}'
  	'\u{3}\u{3F}\u{3}\u{3F}\u{3}\u{3F}\u{7}\u{3F}\u{393}\u{A}\u{3F}\u{C}\u{3F}'
  	'\u{E}\u{3F}\u{396}\u{B}\u{3F}\u{3}\u{3F}\u{3}\u{3F}\u{3}\u{40}\u{3}\u{40}'
  	'\u{3}\u{40}\u{7}\u{40}\u{39D}\u{A}\u{40}\u{C}\u{40}\u{E}\u{40}\u{3A0}'
  	'\u{B}\u{40}\u{3}\u{40}\u{3}\u{40}\u{3}\u{41}\u{5}\u{41}\u{3A5}\u{A}\u{41}'
  	'\u{3}\u{41}\u{3}\u{41}\u{3}\u{41}\u{5}\u{41}\u{3AA}\u{A}\u{41}\u{3}\u{41}'
  	'\u{3}\u{41}\u{3}\u{41}\u{5}\u{41}\u{3AF}\u{A}\u{41}\u{3}\u{42}\u{5}\u{42}'
  	'\u{3B2}\u{A}\u{42}\u{3}\u{42}\u{3}\u{42}\u{3}\u{42}\u{5}\u{42}\u{3B7}'
  	'\u{A}\u{42}\u{3}\u{42}\u{5}\u{42}\u{3BA}\u{A}\u{42}\u{3}\u{42}\u{3}\u{42}'
  	'\u{3}\u{42}\u{3}\u{42}\u{5}\u{42}\u{3C0}\u{A}\u{42}\u{3}\u{42}\u{3}\u{42}'
  	'\u{3}\u{42}\u{5}\u{42}\u{3C5}\u{A}\u{42}\u{3}\u{43}\u{3}\u{43}\u{5}\u{43}'
  	'\u{3C9}\u{A}\u{43}\u{3}\u{44}\u{3}\u{44}\u{5}\u{44}\u{3CD}\u{A}\u{44}'
  	'\u{3}\u{45}\u{3}\u{45}\u{5}\u{45}\u{3D1}\u{A}\u{45}\u{3}\u{45}\u{3}\u{45}'
  	'\u{3}\u{46}\u{3}\u{46}\u{3}\u{46}\u{7}\u{46}\u{3D8}\u{A}\u{46}\u{C}\u{46}'
  	'\u{E}\u{46}\u{3DB}\u{B}\u{46}\u{3}\u{47}\u{3}\u{47}\u{3}\u{47}\u{3}\u{47}'
  	'\u{5}\u{47}\u{3E1}\u{A}\u{47}\u{3}\u{48}\u{3}\u{48}\u{3}\u{48}\u{3}\u{48}'
  	'\u{3}\u{48}\u{5}\u{48}\u{3E8}\u{A}\u{48}\u{3}\u{49}\u{3}\u{49}\u{3}\u{49}'
  	'\u{3}\u{49}\u{5}\u{49}\u{3EE}\u{A}\u{49}\u{3}\u{4A}\u{5}\u{4A}\u{3F1}'
  	'\u{A}\u{4A}\u{3}\u{4A}\u{3}\u{4A}\u{5}\u{4A}\u{3F5}\u{A}\u{4A}\u{3}\u{4A}'
  	'\u{3}\u{4A}\u{3}\u{4A}\u{3}\u{4A}\u{3}\u{4A}\u{3}\u{4B}\u{3}\u{4B}\u{7}'
  	'\u{4B}\u{3FE}\u{A}\u{4B}\u{C}\u{4B}\u{E}\u{4B}\u{401}\u{B}\u{4B}\u{3}'
  	'\u{4B}\u{5}\u{4B}\u{404}\u{A}\u{4B}\u{3}\u{4B}\u{3}\u{4B}\u{5}\u{4B}'
  	'\u{408}\u{A}\u{4B}\u{3}\u{4B}\u{3}\u{4B}\u{7}\u{4B}\u{40C}\u{A}\u{4B}'
  	'\u{C}\u{4B}\u{E}\u{4B}\u{40F}\u{B}\u{4B}\u{3}\u{4B}\u{3}\u{4B}\u{3}\u{4C}'
  	'\u{5}\u{4C}\u{414}\u{A}\u{4C}\u{3}\u{4C}\u{3}\u{4C}\u{3}\u{4C}\u{3}\u{4C}'
  	'\u{5}\u{4C}\u{41A}\u{A}\u{4C}\u{3}\u{4C}\u{3}\u{4C}\u{7}\u{4C}\u{41E}'
  	'\u{A}\u{4C}\u{C}\u{4C}\u{E}\u{4C}\u{421}\u{B}\u{4C}\u{3}\u{4C}\u{3}\u{4C}'
  	'\u{3}\u{4D}\u{5}\u{4D}\u{426}\u{A}\u{4D}\u{3}\u{4D}\u{3}\u{4D}\u{3}\u{4D}'
  	'\u{3}\u{4D}\u{3}\u{4D}\u{3}\u{4D}\u{3}\u{4D}\u{3}\u{4D}\u{3}\u{4D}\u{3}'
  	'\u{4D}\u{5}\u{4D}\u{432}\u{A}\u{4D}\u{3}\u{4D}\u{3}\u{4D}\u{7}\u{4D}'
  	'\u{436}\u{A}\u{4D}\u{C}\u{4D}\u{E}\u{4D}\u{439}\u{B}\u{4D}\u{3}\u{4D}'
  	'\u{3}\u{4D}\u{3}\u{4E}\u{3}\u{4E}\u{3}\u{4E}\u{7}\u{4E}\u{440}\u{A}\u{4E}'
  	'\u{C}\u{4E}\u{E}\u{4E}\u{443}\u{B}\u{4E}\u{3}\u{4F}\u{5}\u{4F}\u{446}'
  	'\u{A}\u{4F}\u{3}\u{4F}\u{3}\u{4F}\u{3}\u{50}\u{3}\u{50}\u{3}\u{50}\u{3}'
  	'\u{50}\u{3}\u{50}\u{6}\u{50}\u{44F}\u{A}\u{50}\u{D}\u{50}\u{E}\u{50}'
  	'\u{450}\u{3}\u{51}\u{3}\u{51}\u{3}\u{51}\u{3}\u{51}\u{6}\u{51}\u{457}'
  	'\u{A}\u{51}\u{D}\u{51}\u{E}\u{51}\u{458}\u{3}\u{52}\u{3}\u{52}\u{3}\u{52}'
  	'\u{6}\u{52}\u{45E}\u{A}\u{52}\u{D}\u{52}\u{E}\u{52}\u{45F}\u{3}\u{53}'
  	'\u{3}\u{53}\u{3}\u{53}\u{3}\u{53}\u{3}\u{53}\u{3}\u{53}\u{7}\u{53}\u{468}'
  	'\u{A}\u{53}\u{C}\u{53}\u{E}\u{53}\u{46B}\u{B}\u{53}\u{3}\u{53}\u{3}\u{53}'
  	'\u{3}\u{53}\u{3}\u{54}\u{3}\u{54}\u{3}\u{54}\u{7}\u{54}\u{473}\u{A}\u{54}'
  	'\u{C}\u{54}\u{E}\u{54}\u{476}\u{B}\u{54}\u{3}\u{55}\u{3}\u{55}\u{3}\u{55}'
  	'\u{7}\u{55}\u{47B}\u{A}\u{55}\u{C}\u{55}\u{E}\u{55}\u{47E}\u{B}\u{55}'
  	'\u{3}\u{55}\u{3}\u{55}\u{5}\u{55}\u{482}\u{A}\u{55}\u{3}\u{56}\u{3}\u{56}'
  	'\u{3}\u{56}\u{5}\u{56}\u{487}\u{A}\u{56}\u{3}\u{56}\u{3}\u{56}\u{6}\u{56}'
  	'\u{48B}\u{A}\u{56}\u{D}\u{56}\u{E}\u{56}\u{48C}\u{3}\u{56}\u{3}\u{56}'
  	'\u{5}\u{56}\u{491}\u{A}\u{56}\u{3}\u{57}\u{3}\u{57}\u{3}\u{57}\u{3}\u{57}'
  	'\u{5}\u{57}\u{497}\u{A}\u{57}\u{3}\u{57}\u{3}\u{57}\u{7}\u{57}\u{49B}'
  	'\u{A}\u{57}\u{C}\u{57}\u{E}\u{57}\u{49E}\u{B}\u{57}\u{3}\u{57}\u{3}\u{57}'
  	'\u{3}\u{58}\u{3}\u{58}\u{6}\u{58}\u{4A4}\u{A}\u{58}\u{D}\u{58}\u{E}\u{58}'
  	'\u{4A5}\u{3}\u{59}\u{3}\u{59}\u{3}\u{59}\u{3}\u{59}\u{3}\u{59}\u{3}\u{59}'
  	'\u{5}\u{59}\u{4AE}\u{A}\u{59}\u{3}\u{5A}\u{3}\u{5A}\u{3}\u{5B}\u{3}\u{5B}'
  	'\u{3}\u{5C}\u{3}\u{5C}\u{3}\u{5D}\u{3}\u{5D}\u{3}\u{5E}\u{3}\u{5E}\u{3}'
  	'\u{5E}\u{3}\u{5E}\u{5}\u{5E}\u{4BC}\u{A}\u{5E}\u{3}\u{5F}\u{3}\u{5F}'
  	'\u{3}\u{60}\u{6}\u{60}\u{4C1}\u{A}\u{60}\u{D}\u{60}\u{E}\u{60}\u{4C2}'
  	'\u{3}\u{60}\u{3}\u{60}\u{3}\u{60}\u{3}\u{60}\u{3}\u{60}\u{5}\u{60}\u{4CA}'
  	'\u{A}\u{60}\u{3}\u{60}\u{5}\u{60}\u{4CD}\u{A}\u{60}\u{3}\u{61}\u{3}\u{61}'
  	'\u{3}\u{61}\u{3}\u{61}\u{3}\u{61}\u{3}\u{62}\u{3}\u{62}\u{3}\u{62}\u{7}'
  	'\u{62}\u{4D7}\u{A}\u{62}\u{C}\u{62}\u{E}\u{62}\u{4DA}\u{B}\u{62}\u{3}'
  	'\u{63}\u{3}\u{63}\u{5}\u{63}\u{4DE}\u{A}\u{63}\u{3}\u{63}\u{3}\u{63}'
  	'\u{5}\u{63}\u{4E2}\u{A}\u{63}\u{3}\u{64}\u{3}\u{64}\u{5}\u{64}\u{4E6}'
  	'\u{A}\u{64}\u{3}\u{64}\u{3}\u{64}\u{5}\u{64}\u{4EA}\u{A}\u{64}\u{3}\u{64}'
  	'\u{3}\u{64}\u{3}\u{64}\u{3}\u{64}\u{3}\u{64}\u{5}\u{64}\u{4F1}\u{A}\u{64}'
  	'\u{3}\u{64}\u{3}\u{64}\u{3}\u{64}\u{3}\u{64}\u{5}\u{64}\u{4F7}\u{A}\u{64}'
  	'\u{3}\u{64}\u{3}\u{64}\u{3}\u{64}\u{3}\u{64}\u{3}\u{64}\u{5}\u{64}\u{4FE}'
  	'\u{A}\u{64}\u{3}\u{64}\u{3}\u{64}\u{3}\u{64}\u{3}\u{64}\u{3}\u{64}\u{5}'
  	'\u{64}\u{505}\u{A}\u{64}\u{3}\u{65}\u{3}\u{65}\u{3}\u{65}\u{7}\u{65}'
  	'\u{50A}\u{A}\u{65}\u{C}\u{65}\u{E}\u{65}\u{50D}\u{B}\u{65}\u{3}\u{65}'
  	'\u{5}\u{65}\u{510}\u{A}\u{65}\u{3}\u{66}\u{3}\u{66}\u{3}\u{66}\u{7}\u{66}'
  	'\u{515}\u{A}\u{66}\u{C}\u{66}\u{E}\u{66}\u{518}\u{B}\u{66}\u{3}\u{66}'
  	'\u{3}\u{66}\u{5}\u{66}\u{51C}\u{A}\u{66}\u{3}\u{67}\u{3}\u{67}\u{5}\u{67}'
  	'\u{520}\u{A}\u{67}\u{3}\u{68}\u{3}\u{68}\u{3}\u{68}\u{3}\u{68}\u{3}\u{68}'
  	'\u{5}\u{68}\u{527}\u{A}\u{68}\u{3}\u{68}\u{7}\u{68}\u{52A}\u{A}\u{68}'
  	'\u{C}\u{68}\u{E}\u{68}\u{52D}\u{B}\u{68}\u{3}\u{68}\u{3}\u{68}\u{3}\u{68}'
  	'\u{5}\u{68}\u{532}\u{A}\u{68}\u{3}\u{68}\u{5}\u{68}\u{535}\u{A}\u{68}'
  	'\u{3}\u{68}\u{3}\u{68}\u{5}\u{68}\u{539}\u{A}\u{68}\u{3}\u{69}\u{3}\u{69}'
  	'\u{5}\u{69}\u{53D}\u{A}\u{69}\u{3}\u{69}\u{3}\u{69}\u{3}\u{6A}\u{3}\u{6A}'
  	'\u{3}\u{6A}\u{5}\u{6A}\u{544}\u{A}\u{6A}\u{3}\u{6B}\u{3}\u{6B}\u{5}\u{6B}'
  	'\u{548}\u{A}\u{6B}\u{3}\u{6B}\u{5}\u{6B}\u{54B}\u{A}\u{6B}\u{3}\u{6C}'
  	'\u{3}\u{6C}\u{3}\u{6C}\u{3}\u{6C}\u{3}\u{6C}\u{3}\u{6C}\u{3}\u{6C}\u{7}'
  	'\u{6C}\u{554}\u{A}\u{6C}\u{C}\u{6C}\u{E}\u{6C}\u{557}\u{B}\u{6C}\u{3}'
  	'\u{6C}\u{3}\u{6C}\u{3}\u{6C}\u{3}\u{6C}\u{7}\u{6C}\u{55D}\u{A}\u{6C}'
  	'\u{C}\u{6C}\u{E}\u{6C}\u{560}\u{B}\u{6C}\u{3}\u{6C}\u{5}\u{6C}\u{563}'
  	'\u{A}\u{6C}\u{5}\u{6C}\u{565}\u{A}\u{6C}\u{3}\u{6C}\u{3}\u{6C}\u{3}\u{6C}'
  	'\u{5}\u{6C}\u{56A}\u{A}\u{6C}\u{7}\u{6C}\u{56C}\u{A}\u{6C}\u{C}\u{6C}'
  	'\u{E}\u{6C}\u{56F}\u{B}\u{6C}\u{3}\u{6C}\u{3}\u{6C}\u{5}\u{6C}\u{573}'
  	'\u{A}\u{6C}\u{3}\u{6D}\u{3}\u{6D}\u{3}\u{6D}\u{5}\u{6D}\u{578}\u{A}\u{6D}'
  	'\u{5}\u{6D}\u{57A}\u{A}\u{6D}\u{3}\u{6D}\u{3}\u{6D}\u{3}\u{6E}\u{3}\u{6E}'
  	'\u{3}\u{6E}\u{3}\u{6E}\u{3}\u{6E}\u{3}\u{6E}\u{7}\u{6E}\u{584}\u{A}\u{6E}'
  	'\u{C}\u{6E}\u{E}\u{6E}\u{587}\u{B}\u{6E}\u{3}\u{6E}\u{5}\u{6E}\u{58A}'
  	'\u{A}\u{6E}\u{5}\u{6E}\u{58C}\u{A}\u{6E}\u{3}\u{6E}\u{3}\u{6E}\u{3}\u{6F}'
  	'\u{3}\u{6F}\u{3}\u{6F}\u{7}\u{6F}\u{593}\u{A}\u{6F}\u{C}\u{6F}\u{E}\u{6F}'
  	'\u{596}\u{B}\u{6F}\u{3}\u{6F}\u{5}\u{6F}\u{599}\u{A}\u{6F}\u{3}\u{70}'
  	'\u{3}\u{70}\u{5}\u{70}\u{59D}\u{A}\u{70}\u{3}\u{70}\u{3}\u{70}\u{5}\u{70}'
  	'\u{5A1}\u{A}\u{70}\u{3}\u{71}\u{3}\u{71}\u{5}\u{71}\u{5A5}\u{A}\u{71}'
  	'\u{3}\u{71}\u{3}\u{71}\u{5}\u{71}\u{5A9}\u{A}\u{71}\u{3}\u{71}\u{3}\u{71}'
  	'\u{6}\u{71}\u{5AD}\u{A}\u{71}\u{D}\u{71}\u{E}\u{71}\u{5AE}\u{3}\u{71}'
  	'\u{3}\u{71}\u{5}\u{71}\u{5B3}\u{A}\u{71}\u{3}\u{71}\u{6}\u{71}\u{5B6}'
  	'\u{A}\u{71}\u{D}\u{71}\u{E}\u{71}\u{5B7}\u{5}\u{71}\u{5BA}\u{A}\u{71}'
  	'\u{3}\u{72}\u{3}\u{72}\u{5}\u{72}\u{5BE}\u{A}\u{72}\u{3}\u{72}\u{3}\u{72}'
  	'\u{3}\u{72}\u{5}\u{72}\u{5C3}\u{A}\u{72}\u{3}\u{72}\u{5}\u{72}\u{5C6}'
  	'\u{A}\u{72}\u{3}\u{73}\u{3}\u{73}\u{3}\u{73}\u{7}\u{73}\u{5CB}\u{A}\u{73}'
  	'\u{C}\u{73}\u{E}\u{73}\u{5CE}\u{B}\u{73}\u{3}\u{74}\u{3}\u{74}\u{5}\u{74}'
  	'\u{5D2}\u{A}\u{74}\u{3}\u{74}\u{3}\u{74}\u{5}\u{74}\u{5D6}\u{A}\u{74}'
  	'\u{3}\u{75}\u{5}\u{75}\u{5D9}\u{A}\u{75}\u{3}\u{75}\u{3}\u{75}\u{3}\u{76}'
  	'\u{3}\u{76}\u{5}\u{76}\u{5DF}\u{A}\u{76}\u{3}\u{76}\u{3}\u{76}\u{5}\u{76}'
  	'\u{5E3}\u{A}\u{76}\u{3}\u{76}\u{3}\u{76}\u{5}\u{76}\u{5E7}\u{A}\u{76}'
  	'\u{3}\u{76}\u{3}\u{76}\u{5}\u{76}\u{5EB}\u{A}\u{76}\u{3}\u{76}\u{3}\u{76}'
  	'\u{5}\u{76}\u{5EF}\u{A}\u{76}\u{3}\u{76}\u{3}\u{76}\u{5}\u{76}\u{5F3}'
  	'\u{A}\u{76}\u{3}\u{76}\u{3}\u{76}\u{5}\u{76}\u{5F7}\u{A}\u{76}\u{3}\u{76}'
  	'\u{3}\u{76}\u{5}\u{76}\u{5FB}\u{A}\u{76}\u{3}\u{76}\u{3}\u{76}\u{5}\u{76}'
  	'\u{5FF}\u{A}\u{76}\u{3}\u{76}\u{3}\u{76}\u{5}\u{76}\u{603}\u{A}\u{76}'
  	'\u{3}\u{76}\u{5}\u{76}\u{606}\u{A}\u{76}\u{3}\u{77}\u{3}\u{77}\u{3}\u{77}'
  	'\u{3}\u{77}\u{3}\u{78}\u{3}\u{78}\u{3}\u{78}\u{5}\u{78}\u{60F}\u{A}\u{78}'
  	'\u{3}\u{79}\u{3}\u{79}\u{3}\u{79}\u{7}\u{79}\u{614}\u{A}\u{79}\u{C}\u{79}'
  	'\u{E}\u{79}\u{617}\u{B}\u{79}\u{3}\u{79}\u{3}\u{79}\u{3}\u{7A}\u{3}\u{7A}'
  	'\u{3}\u{7A}\u{3}\u{7A}\u{3}\u{7A}\u{3}\u{7A}\u{3}\u{7A}\u{5}\u{7A}\u{622}'
  	'\u{A}\u{7A}\u{3}\u{7A}\u{5}\u{7A}\u{625}\u{A}\u{7A}\u{3}\u{7B}\u{3}\u{7B}'
  	'\u{3}\u{7B}\u{3}\u{7B}\u{3}\u{7B}\u{3}\u{7B}\u{3}\u{7C}\u{3}\u{7C}\u{7}'
  	'\u{7C}\u{62F}\u{A}\u{7C}\u{C}\u{7C}\u{E}\u{7C}\u{632}\u{B}\u{7C}\u{3}'
  	'\u{7C}\u{3}\u{7C}\u{3}\u{7D}\u{6}\u{7D}\u{637}\u{A}\u{7D}\u{D}\u{7D}'
  	'\u{E}\u{7D}\u{638}\u{3}\u{7D}\u{6}\u{7D}\u{63C}\u{A}\u{7D}\u{D}\u{7D}'
  	'\u{E}\u{7D}\u{63D}\u{3}\u{7E}\u{3}\u{7E}\u{3}\u{7E}\u{3}\u{7E}\u{3}\u{7E}'
  	'\u{3}\u{7E}\u{5}\u{7E}\u{646}\u{A}\u{7E}\u{3}\u{7E}\u{3}\u{7E}\u{3}\u{7E}'
  	'\u{3}\u{7E}\u{5}\u{7E}\u{64C}\u{A}\u{7E}\u{3}\u{7F}\u{3}\u{7F}\u{3}\u{7F}'
  	'\u{3}\u{7F}\u{5}\u{7F}\u{652}\u{A}\u{7F}\u{3}\u{80}\u{3}\u{80}\u{3}\u{80}'
  	'\u{3}\u{80}\u{3}\u{80}\u{3}\u{80}\u{3}\u{81}\u{3}\u{81}\u{3}\u{81}\u{3}'
  	'\u{81}\u{3}\u{81}\u{3}\u{81}\u{3}\u{81}\u{3}\u{81}\u{3}\u{82}\u{3}\u{82}'
  	'\u{3}\u{82}\u{5}\u{82}\u{665}\u{A}\u{82}\u{3}\u{82}\u{3}\u{82}\u{5}\u{82}'
  	'\u{669}\u{A}\u{82}\u{3}\u{82}\u{3}\u{82}\u{5}\u{82}\u{66D}\u{A}\u{82}'
  	'\u{3}\u{82}\u{3}\u{82}\u{3}\u{82}\u{3}\u{83}\u{3}\u{83}\u{3}\u{83}\u{3}'
  	'\u{83}\u{5}\u{83}\u{676}\u{A}\u{83}\u{3}\u{84}\u{3}\u{84}\u{3}\u{84}'
  	'\u{3}\u{84}\u{3}\u{84}\u{5}\u{84}\u{67D}\u{A}\u{84}\u{3}\u{84}\u{3}\u{84}'
  	'\u{3}\u{84}\u{3}\u{85}\u{3}\u{85}\u{3}\u{85}\u{3}\u{85}\u{3}\u{85}\u{3}'
  	'\u{85}\u{5}\u{85}\u{688}\u{A}\u{85}\u{5}\u{85}\u{68A}\u{A}\u{85}\u{3}'
  	'\u{86}\u{3}\u{86}\u{3}\u{86}\u{7}\u{86}\u{68F}\u{A}\u{86}\u{C}\u{86}'
  	'\u{E}\u{86}\u{692}\u{B}\u{86}\u{3}\u{87}\u{3}\u{87}\u{3}\u{87}\u{3}\u{87}'
  	'\u{3}\u{87}\u{3}\u{87}\u{3}\u{87}\u{3}\u{87}\u{3}\u{87}\u{3}\u{87}\u{5}'
  	'\u{87}\u{69E}\u{A}\u{87}\u{3}\u{87}\u{3}\u{87}\u{3}\u{87}\u{3}\u{87}'
  	'\u{3}\u{87}\u{3}\u{87}\u{3}\u{87}\u{3}\u{87}\u{3}\u{87}\u{3}\u{87}\u{3}'
  	'\u{87}\u{5}\u{87}\u{6AB}\u{A}\u{87}\u{3}\u{87}\u{3}\u{87}\u{3}\u{87}'
  	'\u{3}\u{87}\u{3}\u{87}\u{3}\u{87}\u{3}\u{87}\u{3}\u{87}\u{3}\u{87}\u{3}'
  	'\u{87}\u{3}\u{87}\u{3}\u{87}\u{3}\u{87}\u{3}\u{87}\u{3}\u{87}\u{3}\u{87}'
  	'\u{3}\u{87}\u{3}\u{87}\u{3}\u{87}\u{3}\u{87}\u{3}\u{87}\u{3}\u{87}\u{3}'
  	'\u{87}\u{3}\u{87}\u{3}\u{87}\u{5}\u{87}\u{6C6}\u{A}\u{87}\u{3}\u{87}'
  	'\u{3}\u{87}\u{7}\u{87}\u{6CA}\u{A}\u{87}\u{C}\u{87}\u{E}\u{87}\u{6CD}'
  	'\u{B}\u{87}\u{3}\u{88}\u{3}\u{88}\u{3}\u{89}\u{3}\u{89}\u{3}\u{89}\u{3}'
  	'\u{89}\u{3}\u{89}\u{3}\u{89}\u{3}\u{89}\u{5}\u{89}\u{6D8}\u{A}\u{89}'
  	'\u{5}\u{89}\u{6DA}\u{A}\u{89}\u{3}\u{8A}\u{3}\u{8A}\u{3}\u{8A}\u{5}\u{8A}'
  	'\u{6DF}\u{A}\u{8A}\u{3}\u{8B}\u{3}\u{8B}\u{5}\u{8B}\u{6E3}\u{A}\u{8B}'
  	'\u{3}\u{8C}\u{3}\u{8C}\u{3}\u{8C}\u{3}\u{8C}\u{3}\u{8C}\u{3}\u{8C}\u{3}'
  	'\u{8C}\u{5}\u{8C}\u{6EC}\u{A}\u{8C}\u{3}\u{8C}\u{3}\u{8C}\u{3}\u{8C}'
  	'\u{3}\u{8C}\u{3}\u{8C}\u{5}\u{8C}\u{6F3}\u{A}\u{8C}\u{3}\u{8D}\u{3}\u{8D}'
  	'\u{3}\u{8E}\u{3}\u{8E}\u{3}\u{8E}\u{7}\u{8E}\u{6FA}\u{A}\u{8E}\u{C}\u{8E}'
  	'\u{E}\u{8E}\u{6FD}\u{B}\u{8E}\u{3}\u{8E}\u{3}\u{8E}\u{3}\u{8E}\u{3}\u{8E}'
  	'\u{7}\u{8E}\u{703}\u{A}\u{8E}\u{C}\u{8E}\u{E}\u{8E}\u{706}\u{B}\u{8E}'
  	'\u{7}\u{8E}\u{708}\u{A}\u{8E}\u{C}\u{8E}\u{E}\u{8E}\u{70B}\u{B}\u{8E}'
  	'\u{3}\u{8F}\u{3}\u{8F}\u{3}\u{8F}\u{3}\u{8F}\u{3}\u{8F}\u{3}\u{8F}\u{5}'
  	'\u{8F}\u{713}\u{A}\u{8F}\u{3}\u{8F}\u{3}\u{8F}\u{3}\u{8F}\u{3}\u{8F}'
  	'\u{6}\u{8F}\u{719}\u{A}\u{8F}\u{D}\u{8F}\u{E}\u{8F}\u{71A}\u{3}\u{8F}'
  	'\u{3}\u{8F}\u{5}\u{8F}\u{71F}\u{A}\u{8F}\u{3}\u{90}\u{3}\u{90}\u{3}\u{90}'
  	'\u{7}\u{90}\u{724}\u{A}\u{90}\u{C}\u{90}\u{E}\u{90}\u{727}\u{B}\u{90}'
  	'\u{3}\u{91}\u{3}\u{91}\u{5}\u{91}\u{72B}\u{A}\u{91}\u{3}\u{92}\u{3}\u{92}'
  	'\u{3}\u{92}\u{3}\u{92}\u{3}\u{92}\u{5}\u{92}\u{732}\u{A}\u{92}\u{3}\u{92}'
  	'\u{5}\u{92}\u{735}\u{A}\u{92}\u{3}\u{93}\u{3}\u{93}\u{3}\u{93}\u{3}\u{93}'
  	'\u{3}\u{93}\u{3}\u{93}\u{3}\u{93}\u{3}\u{93}\u{3}\u{93}\u{3}\u{93}\u{3}'
  	'\u{93}\u{3}\u{93}\u{3}\u{93}\u{3}\u{93}\u{3}\u{93}\u{5}\u{93}\u{746}'
  	'\u{A}\u{93}\u{3}\u{94}\u{3}\u{94}\u{3}\u{94}\u{3}\u{94}\u{5}\u{94}\u{74C}'
  	'\u{A}\u{94}\u{3}\u{94}\u{3}\u{94}\u{5}\u{94}\u{750}\u{A}\u{94}\u{3}\u{94}'
  	'\u{3}\u{94}\u{3}\u{94}\u{3}\u{94}\u{3}\u{94}\u{3}\u{94}\u{3}\u{94}\u{3}'
  	'\u{94}\u{5}\u{94}\u{75A}\u{A}\u{94}\u{3}\u{95}\u{3}\u{95}\u{7}\u{95}'
  	'\u{75E}\u{A}\u{95}\u{C}\u{95}\u{E}\u{95}\u{761}\u{B}\u{95}\u{3}\u{95}'
  	'\u{6}\u{95}\u{764}\u{A}\u{95}\u{D}\u{95}\u{E}\u{95}\u{765}\u{3}\u{96}'
  	'\u{3}\u{96}\u{3}\u{96}\u{2}\u{4}\u{10C}\u{11A}\u{97}\u{2}\u{4}\u{6}\u{8}'
  	'\u{A}\u{C}\u{E}\u{10}\u{12}\u{14}\u{16}\u{18}\u{1A}\u{1C}\u{1E}\u{20}'
  	'\u{22}\u{24}\u{26}\u{28}\u{2A}\u{2C}\u{2E}\u{30}\u{32}\u{34}\u{36}\u{38}'
  	'\u{3A}\u{3C}\u{3E}\u{40}\u{42}\u{44}\u{46}\u{48}\u{4A}\u{4C}\u{4E}\u{50}'
  	'\u{52}\u{54}\u{56}\u{58}\u{5A}\u{5C}\u{5E}\u{60}\u{62}\u{64}\u{66}\u{68}'
  	'\u{6A}\u{6C}\u{6E}\u{70}\u{72}\u{74}\u{76}\u{78}\u{7A}\u{7C}\u{7E}\u{80}'
  	'\u{82}\u{84}\u{86}\u{88}\u{8A}\u{8C}\u{8E}\u{90}\u{92}\u{94}\u{96}\u{98}'
  	'\u{9A}\u{9C}\u{9E}\u{A0}\u{A2}\u{A4}\u{A6}\u{A8}\u{AA}\u{AC}\u{AE}\u{B0}'
  	'\u{B2}\u{B4}\u{B6}\u{B8}\u{BA}\u{BC}\u{BE}\u{C0}\u{C2}\u{C4}\u{C6}\u{C8}'
  	'\u{CA}\u{CC}\u{CE}\u{D0}\u{D2}\u{D4}\u{D6}\u{D8}\u{DA}\u{DC}\u{DE}\u{E0}'
  	'\u{E2}\u{E4}\u{E6}\u{E8}\u{EA}\u{EC}\u{EE}\u{F0}\u{F2}\u{F4}\u{F6}\u{F8}'
  	'\u{FA}\u{FC}\u{FE}\u{100}\u{102}\u{104}\u{106}\u{108}\u{10A}\u{10C}\u{10E}'
  	'\u{110}\u{112}\u{114}\u{116}\u{118}\u{11A}\u{11C}\u{11E}\u{120}\u{122}'
  	'\u{124}\u{126}\u{128}\u{12A}\u{2}\u{19}\u{4}\u{2}\u{48}\u{48}\u{4D}\u{4D}'
  	'\u{3}\u{2}\u{5C}\u{5D}\u{5}\u{2}\u{46}\u{46}\u{49}\u{49}\u{4B}\u{4C}'
  	'\u{4}\u{2}\u{1D}\u{1D}\u{20}\u{20}\u{6}\u{2}\u{57}\u{57}\u{60}\u{60}'
  	'\u{62}\u{62}\u{64}\u{64}\u{3}\u{2}\u{65}\u{68}\u{6}\u{2}\u{3}\u{3}\u{E}'
  	'\u{E}\u{16}\u{16}\u{1C}\u{1C}\u{6}\u{2}\u{13}\u{13}\u{58}\u{5B}\u{5F}'
  	'\u{5F}\u{69}\u{69}\u{5}\u{2}\u{2C}\u{2D}\u{30}\u{31}\u{35}\u{36}\u{8}'
  	'\u{2}\u{6}\u{6}\u{B}\u{B}\u{F}\u{F}\u{14}\u{15}\u{19}\u{1A}\u{21}\u{22}'
  	'\u{4}\u{2}\u{6A}\u{6C}\u{6E}\u{6E}\u{4}\u{2}\u{A7}\u{A8}\u{AC}\u{AC}'
  	'\u{3}\u{2}\u{A5}\u{A6}\u{4}\u{2}\u{97}\u{98}\u{9E}\u{9F}\u{4}\u{2}\u{9D}'
  	'\u{9D}\u{A0}\u{A0}\u{4}\u{2}\u{96}\u{96}\u{AD}\u{B6}\u{3}\u{2}\u{A3}'
  	'\u{A4}\u{5}\u{2}\u{99}\u{9A}\u{A5}\u{A7}\u{A9}\u{A9}\u{3}\u{2}\u{93}'
  	'\u{94}\u{3}\u{2}\u{8C}\u{8C}\u{4}\u{2}\u{8A}\u{8A}\u{BE}\u{BF}\u{4}\u{2}'
  	'\u{C5}\u{C5}\u{C7}\u{C7}\u{B}\u{2}\u{2A}\u{31}\u{35}\u{3A}\u{53}\u{55}'
  	'\u{57}\u{58}\u{5A}\u{5F}\u{63}\u{63}\u{65}\u{6B}\u{6F}\u{7B}\u{8A}\u{8A}'
  	'\u{2}\u{849}\u{2}\u{12F}\u{3}\u{2}\u{2}\u{2}\u{4}\u{13F}\u{3}\u{2}\u{2}'
  	'\u{2}\u{6}\u{141}\u{3}\u{2}\u{2}\u{2}\u{8}\u{155}\u{3}\u{2}\u{2}\u{2}'
  	'\u{A}\u{176}\u{3}\u{2}\u{2}\u{2}\u{C}\u{18E}\u{3}\u{2}\u{2}\u{2}\u{E}'
  	'\u{19C}\u{3}\u{2}\u{2}\u{2}\u{10}\u{1A6}\u{3}\u{2}\u{2}\u{2}\u{12}\u{1B2}'
  	'\u{3}\u{2}\u{2}\u{2}\u{14}\u{1D1}\u{3}\u{2}\u{2}\u{2}\u{16}\u{1D3}\u{3}'
  	'\u{2}\u{2}\u{2}\u{18}\u{1D7}\u{3}\u{2}\u{2}\u{2}\u{1A}\u{1DE}\u{3}\u{2}'
  	'\u{2}\u{2}\u{1C}\u{1E9}\u{3}\u{2}\u{2}\u{2}\u{1E}\u{1F1}\u{3}\u{2}\u{2}'
  	'\u{2}\u{20}\u{200}\u{3}\u{2}\u{2}\u{2}\u{22}\u{21C}\u{3}\u{2}\u{2}\u{2}'
  	'\u{24}\u{22A}\u{3}\u{2}\u{2}\u{2}\u{26}\u{22C}\u{3}\u{2}\u{2}\u{2}\u{28}'
  	'\u{241}\u{3}\u{2}\u{2}\u{2}\u{2A}\u{243}\u{3}\u{2}\u{2}\u{2}\u{2C}\u{24A}'
  	'\u{3}\u{2}\u{2}\u{2}\u{2E}\u{24E}\u{3}\u{2}\u{2}\u{2}\u{30}\u{251}\u{3}'
  	'\u{2}\u{2}\u{2}\u{32}\u{255}\u{3}\u{2}\u{2}\u{2}\u{34}\u{266}\u{3}\u{2}'
  	'\u{2}\u{2}\u{36}\u{26A}\u{3}\u{2}\u{2}\u{2}\u{38}\u{26D}\u{3}\u{2}\u{2}'
  	'\u{2}\u{3A}\u{271}\u{3}\u{2}\u{2}\u{2}\u{3C}\u{286}\u{3}\u{2}\u{2}\u{2}'
  	'\u{3E}\u{289}\u{3}\u{2}\u{2}\u{2}\u{40}\u{299}\u{3}\u{2}\u{2}\u{2}\u{42}'
  	'\u{29B}\u{3}\u{2}\u{2}\u{2}\u{44}\u{2A7}\u{3}\u{2}\u{2}\u{2}\u{46}\u{2A9}'
  	'\u{3}\u{2}\u{2}\u{2}\u{48}\u{2B1}\u{3}\u{2}\u{2}\u{2}\u{4A}\u{2B7}\u{3}'
  	'\u{2}\u{2}\u{2}\u{4C}\u{2C7}\u{3}\u{2}\u{2}\u{2}\u{4E}\u{2D7}\u{3}\u{2}'
  	'\u{2}\u{2}\u{50}\u{2DC}\u{3}\u{2}\u{2}\u{2}\u{52}\u{2ED}\u{3}\u{2}\u{2}'
  	'\u{2}\u{54}\u{2F1}\u{3}\u{2}\u{2}\u{2}\u{56}\u{305}\u{3}\u{2}\u{2}\u{2}'
  	'\u{58}\u{307}\u{3}\u{2}\u{2}\u{2}\u{5A}\u{319}\u{3}\u{2}\u{2}\u{2}\u{5C}'
  	'\u{31B}\u{3}\u{2}\u{2}\u{2}\u{5E}\u{327}\u{3}\u{2}\u{2}\u{2}\u{60}\u{32E}'
  	'\u{3}\u{2}\u{2}\u{2}\u{62}\u{336}\u{3}\u{2}\u{2}\u{2}\u{64}\u{339}\u{3}'
  	'\u{2}\u{2}\u{2}\u{66}\u{344}\u{3}\u{2}\u{2}\u{2}\u{68}\u{34E}\u{3}\u{2}'
  	'\u{2}\u{2}\u{6A}\u{35C}\u{3}\u{2}\u{2}\u{2}\u{6C}\u{35E}\u{3}\u{2}\u{2}'
  	'\u{2}\u{6E}\u{363}\u{3}\u{2}\u{2}\u{2}\u{70}\u{368}\u{3}\u{2}\u{2}\u{2}'
  	'\u{72}\u{372}\u{3}\u{2}\u{2}\u{2}\u{74}\u{374}\u{3}\u{2}\u{2}\u{2}\u{76}'
  	'\u{380}\u{3}\u{2}\u{2}\u{2}\u{78}\u{386}\u{3}\u{2}\u{2}\u{2}\u{7A}\u{38C}'
  	'\u{3}\u{2}\u{2}\u{2}\u{7C}\u{38F}\u{3}\u{2}\u{2}\u{2}\u{7E}\u{399}\u{3}'
  	'\u{2}\u{2}\u{2}\u{80}\u{3A4}\u{3}\u{2}\u{2}\u{2}\u{82}\u{3B1}\u{3}\u{2}'
  	'\u{2}\u{2}\u{84}\u{3C6}\u{3}\u{2}\u{2}\u{2}\u{86}\u{3CC}\u{3}\u{2}\u{2}'
  	'\u{2}\u{88}\u{3CE}\u{3}\u{2}\u{2}\u{2}\u{8A}\u{3D4}\u{3}\u{2}\u{2}\u{2}'
  	'\u{8C}\u{3E0}\u{3}\u{2}\u{2}\u{2}\u{8E}\u{3E2}\u{3}\u{2}\u{2}\u{2}\u{90}'
  	'\u{3ED}\u{3}\u{2}\u{2}\u{2}\u{92}\u{3F0}\u{3}\u{2}\u{2}\u{2}\u{94}\u{3FF}'
  	'\u{3}\u{2}\u{2}\u{2}\u{96}\u{413}\u{3}\u{2}\u{2}\u{2}\u{98}\u{425}\u{3}'
  	'\u{2}\u{2}\u{2}\u{9A}\u{43C}\u{3}\u{2}\u{2}\u{2}\u{9C}\u{445}\u{3}\u{2}'
  	'\u{2}\u{2}\u{9E}\u{44E}\u{3}\u{2}\u{2}\u{2}\u{A0}\u{456}\u{3}\u{2}\u{2}'
  	'\u{2}\u{A2}\u{45D}\u{3}\u{2}\u{2}\u{2}\u{A4}\u{461}\u{3}\u{2}\u{2}\u{2}'
  	'\u{A6}\u{46F}\u{3}\u{2}\u{2}\u{2}\u{A8}\u{477}\u{3}\u{2}\u{2}\u{2}\u{AA}'
  	'\u{483}\u{3}\u{2}\u{2}\u{2}\u{AC}\u{496}\u{3}\u{2}\u{2}\u{2}\u{AE}\u{4A3}'
  	'\u{3}\u{2}\u{2}\u{2}\u{B0}\u{4AD}\u{3}\u{2}\u{2}\u{2}\u{B2}\u{4AF}\u{3}'
  	'\u{2}\u{2}\u{2}\u{B4}\u{4B1}\u{3}\u{2}\u{2}\u{2}\u{B6}\u{4B3}\u{3}\u{2}'
  	'\u{2}\u{2}\u{B8}\u{4B5}\u{3}\u{2}\u{2}\u{2}\u{BA}\u{4BB}\u{3}\u{2}\u{2}'
  	'\u{2}\u{BC}\u{4BD}\u{3}\u{2}\u{2}\u{2}\u{BE}\u{4C9}\u{3}\u{2}\u{2}\u{2}'
  	'\u{C0}\u{4CE}\u{3}\u{2}\u{2}\u{2}\u{C2}\u{4D3}\u{3}\u{2}\u{2}\u{2}\u{C4}'
  	'\u{4E1}\u{3}\u{2}\u{2}\u{2}\u{C6}\u{504}\u{3}\u{2}\u{2}\u{2}\u{C8}\u{506}'
  	'\u{3}\u{2}\u{2}\u{2}\u{CA}\u{511}\u{3}\u{2}\u{2}\u{2}\u{CC}\u{51F}\u{3}'
  	'\u{2}\u{2}\u{2}\u{CE}\u{538}\u{3}\u{2}\u{2}\u{2}\u{D0}\u{53A}\u{3}\u{2}'
  	'\u{2}\u{2}\u{D2}\u{540}\u{3}\u{2}\u{2}\u{2}\u{D4}\u{545}\u{3}\u{2}\u{2}'
  	'\u{2}\u{D6}\u{54C}\u{3}\u{2}\u{2}\u{2}\u{D8}\u{574}\u{3}\u{2}\u{2}\u{2}'
  	'\u{DA}\u{57D}\u{3}\u{2}\u{2}\u{2}\u{DC}\u{58F}\u{3}\u{2}\u{2}\u{2}\u{DE}'
  	'\u{5A0}\u{3}\u{2}\u{2}\u{2}\u{E0}\u{5B9}\u{3}\u{2}\u{2}\u{2}\u{E2}\u{5C5}'
  	'\u{3}\u{2}\u{2}\u{2}\u{E4}\u{5C7}\u{3}\u{2}\u{2}\u{2}\u{E6}\u{5D5}\u{3}'
  	'\u{2}\u{2}\u{2}\u{E8}\u{5D8}\u{3}\u{2}\u{2}\u{2}\u{EA}\u{605}\u{3}\u{2}'
  	'\u{2}\u{2}\u{EC}\u{607}\u{3}\u{2}\u{2}\u{2}\u{EE}\u{60B}\u{3}\u{2}\u{2}'
  	'\u{2}\u{F0}\u{610}\u{3}\u{2}\u{2}\u{2}\u{F2}\u{624}\u{3}\u{2}\u{2}\u{2}'
  	'\u{F4}\u{626}\u{3}\u{2}\u{2}\u{2}\u{F6}\u{62C}\u{3}\u{2}\u{2}\u{2}\u{F8}'
  	'\u{636}\u{3}\u{2}\u{2}\u{2}\u{FA}\u{64B}\u{3}\u{2}\u{2}\u{2}\u{FC}\u{651}'
  	'\u{3}\u{2}\u{2}\u{2}\u{FE}\u{653}\u{3}\u{2}\u{2}\u{2}\u{100}\u{659}\u{3}'
  	'\u{2}\u{2}\u{2}\u{102}\u{661}\u{3}\u{2}\u{2}\u{2}\u{104}\u{675}\u{3}'
  	'\u{2}\u{2}\u{2}\u{106}\u{677}\u{3}\u{2}\u{2}\u{2}\u{108}\u{689}\u{3}'
  	'\u{2}\u{2}\u{2}\u{10A}\u{68B}\u{3}\u{2}\u{2}\u{2}\u{10C}\u{69D}\u{3}'
  	'\u{2}\u{2}\u{2}\u{10E}\u{6CE}\u{3}\u{2}\u{2}\u{2}\u{110}\u{6D9}\u{3}'
  	'\u{2}\u{2}\u{2}\u{112}\u{6DE}\u{3}\u{2}\u{2}\u{2}\u{114}\u{6E2}\u{3}'
  	'\u{2}\u{2}\u{2}\u{116}\u{6F2}\u{3}\u{2}\u{2}\u{2}\u{118}\u{6F4}\u{3}'
  	'\u{2}\u{2}\u{2}\u{11A}\u{6F6}\u{3}\u{2}\u{2}\u{2}\u{11C}\u{71E}\u{3}'
  	'\u{2}\u{2}\u{2}\u{11E}\u{720}\u{3}\u{2}\u{2}\u{2}\u{120}\u{72A}\u{3}'
  	'\u{2}\u{2}\u{2}\u{122}\u{72C}\u{3}\u{2}\u{2}\u{2}\u{124}\u{745}\u{3}'
  	'\u{2}\u{2}\u{2}\u{126}\u{759}\u{3}\u{2}\u{2}\u{2}\u{128}\u{763}\u{3}'
  	'\u{2}\u{2}\u{2}\u{12A}\u{767}\u{3}\u{2}\u{2}\u{2}\u{12C}\u{12E}\u{5}'
  	'\u{4}\u{3}\u{2}\u{12D}\u{12C}\u{3}\u{2}\u{2}\u{2}\u{12E}\u{131}\u{3}'
  	'\u{2}\u{2}\u{2}\u{12F}\u{12D}\u{3}\u{2}\u{2}\u{2}\u{12F}\u{130}\u{3}'
  	'\u{2}\u{2}\u{2}\u{130}\u{132}\u{3}\u{2}\u{2}\u{2}\u{131}\u{12F}\u{3}'
  	'\u{2}\u{2}\u{2}\u{132}\u{133}\u{7}\u{2}\u{2}\u{3}\u{133}\u{3}\u{3}\u{2}'
  	'\u{2}\u{2}\u{134}\u{140}\u{5}\u{6}\u{4}\u{2}\u{135}\u{140}\u{5}\u{7C}'
  	'\u{3F}\u{2}\u{136}\u{140}\u{5}\u{90}\u{49}\u{2}\u{137}\u{140}\u{5}\u{8}'
  	'\u{5}\u{2}\u{138}\u{140}\u{5}\u{C}\u{7}\u{2}\u{139}\u{140}\u{5}\u{A}'
  	'\u{6}\u{2}\u{13A}\u{140}\u{5}\u{E}\u{8}\u{2}\u{13B}\u{140}\u{5}\u{12}'
  	'\u{A}\u{2}\u{13C}\u{140}\u{5}\u{16}\u{C}\u{2}\u{13D}\u{140}\u{5}\u{1A}'
  	'\u{E}\u{2}\u{13E}\u{140}\u{5}\u{7E}\u{40}\u{2}\u{13F}\u{134}\u{3}\u{2}'
  	'\u{2}\u{2}\u{13F}\u{135}\u{3}\u{2}\u{2}\u{2}\u{13F}\u{136}\u{3}\u{2}'
  	'\u{2}\u{2}\u{13F}\u{137}\u{3}\u{2}\u{2}\u{2}\u{13F}\u{138}\u{3}\u{2}'
  	'\u{2}\u{2}\u{13F}\u{139}\u{3}\u{2}\u{2}\u{2}\u{13F}\u{13A}\u{3}\u{2}'
  	'\u{2}\u{2}\u{13F}\u{13B}\u{3}\u{2}\u{2}\u{2}\u{13F}\u{13C}\u{3}\u{2}'
  	'\u{2}\u{2}\u{13F}\u{13D}\u{3}\u{2}\u{2}\u{2}\u{13F}\u{13E}\u{3}\u{2}'
  	'\u{2}\u{2}\u{140}\u{5}\u{3}\u{2}\u{2}\u{2}\u{141}\u{152}\u{7}\u{45}\u{2}'
  	'\u{2}\u{142}\u{143}\u{5}\u{12A}\u{96}\u{2}\u{143}\u{144}\u{7}\u{91}\u{2}'
  	'\u{2}\u{144}\u{153}\u{3}\u{2}\u{2}\u{2}\u{145}\u{147}\u{7}\u{98}\u{2}'
  	'\u{2}\u{146}\u{148}\u{5}\u{12A}\u{96}\u{2}\u{147}\u{146}\u{3}\u{2}\u{2}'
  	'\u{2}\u{147}\u{148}\u{3}\u{2}\u{2}\u{2}\u{148}\u{14A}\u{3}\u{2}\u{2}'
  	'\u{2}\u{149}\u{14B}\u{7}\u{A8}\u{2}\u{2}\u{14A}\u{149}\u{3}\u{2}\u{2}'
  	'\u{2}\u{14A}\u{14B}\u{3}\u{2}\u{2}\u{2}\u{14B}\u{14C}\u{3}\u{2}\u{2}'
  	'\u{2}\u{14C}\u{14D}\u{5}\u{12A}\u{96}\u{2}\u{14D}\u{14E}\u{7}\u{93}\u{2}'
  	'\u{2}\u{14E}\u{14F}\u{7}\u{8A}\u{2}\u{2}\u{14F}\u{150}\u{7}\u{97}\u{2}'
  	'\u{2}\u{150}\u{153}\u{3}\u{2}\u{2}\u{2}\u{151}\u{153}\u{5}\u{128}\u{95}'
  	'\u{2}\u{152}\u{142}\u{3}\u{2}\u{2}\u{2}\u{152}\u{145}\u{3}\u{2}\u{2}'
  	'\u{2}\u{152}\u{151}\u{3}\u{2}\u{2}\u{2}\u{153}\u{7}\u{3}\u{2}\u{2}\u{2}'
  	'\u{154}\u{156}\u{7}\u{7B}\u{2}\u{2}\u{155}\u{154}\u{3}\u{2}\u{2}\u{2}'
  	'\u{155}\u{156}\u{3}\u{2}\u{2}\u{2}\u{156}\u{15B}\u{3}\u{2}\u{2}\u{2}'
  	'\u{157}\u{15A}\u{5}\u{D6}\u{6C}\u{2}\u{158}\u{15A}\u{5}\u{A4}\u{53}\u{2}'
  	'\u{159}\u{157}\u{3}\u{2}\u{2}\u{2}\u{159}\u{158}\u{3}\u{2}\u{2}\u{2}'
  	'\u{15A}\u{15D}\u{3}\u{2}\u{2}\u{2}\u{15B}\u{159}\u{3}\u{2}\u{2}\u{2}'
  	'\u{15B}\u{15C}\u{3}\u{2}\u{2}\u{2}\u{15C}\u{15E}\u{3}\u{2}\u{2}\u{2}'
  	'\u{15D}\u{15B}\u{3}\u{2}\u{2}\u{2}\u{15E}\u{15F}\u{7}\u{44}\u{2}\u{2}'
  	'\u{15F}\u{162}\u{5}\u{10}\u{9}\u{2}\u{160}\u{161}\u{7}\u{9C}\u{2}\u{2}'
  	'\u{161}\u{163}\u{5}\u{12A}\u{96}\u{2}\u{162}\u{160}\u{3}\u{2}\u{2}\u{2}'
  	'\u{162}\u{163}\u{3}\u{2}\u{2}\u{2}\u{163}\u{168}\u{3}\u{2}\u{2}\u{2}'
  	'\u{164}\u{165}\u{7}\u{98}\u{2}\u{2}\u{165}\u{166}\u{5}\u{1C}\u{F}\u{2}'
  	'\u{166}\u{167}\u{7}\u{97}\u{2}\u{2}\u{167}\u{169}\u{3}\u{2}\u{2}\u{2}'
  	'\u{168}\u{164}\u{3}\u{2}\u{2}\u{2}\u{168}\u{169}\u{3}\u{2}\u{2}\u{2}'
  	'\u{169}\u{16B}\u{3}\u{2}\u{2}\u{2}\u{16A}\u{16C}\u{5}\u{26}\u{14}\u{2}'
  	'\u{16B}\u{16A}\u{3}\u{2}\u{2}\u{2}\u{16B}\u{16C}\u{3}\u{2}\u{2}\u{2}'
  	'\u{16C}\u{16E}\u{3}\u{2}\u{2}\u{2}\u{16D}\u{16F}\u{5}\u{2C}\u{17}\u{2}'
  	'\u{16E}\u{16D}\u{3}\u{2}\u{2}\u{2}\u{16E}\u{16F}\u{3}\u{2}\u{2}\u{2}'
  	'\u{16F}\u{170}\u{3}\u{2}\u{2}\u{2}\u{170}\u{171}\u{7}\u{41}\u{2}\u{2}'
  	'\u{171}\u{9}\u{3}\u{2}\u{2}\u{2}\u{172}\u{175}\u{5}\u{D6}\u{6C}\u{2}'
  	'\u{173}\u{175}\u{5}\u{A4}\u{53}\u{2}\u{174}\u{172}\u{3}\u{2}\u{2}\u{2}'
  	'\u{174}\u{173}\u{3}\u{2}\u{2}\u{2}\u{175}\u{178}\u{3}\u{2}\u{2}\u{2}'
  	'\u{176}\u{174}\u{3}\u{2}\u{2}\u{2}\u{176}\u{177}\u{3}\u{2}\u{2}\u{2}'
  	'\u{177}\u{179}\u{3}\u{2}\u{2}\u{2}\u{178}\u{176}\u{3}\u{2}\u{2}\u{2}'
  	'\u{179}\u{17A}\u{7}\u{44}\u{2}\u{2}\u{17A}\u{17B}\u{5}\u{10}\u{9}\u{2}'
  	'\u{17B}\u{17D}\u{7}\u{8B}\u{2}\u{2}\u{17C}\u{17E}\u{5}\u{12A}\u{96}\u{2}'
  	'\u{17D}\u{17C}\u{3}\u{2}\u{2}\u{2}\u{17D}\u{17E}\u{3}\u{2}\u{2}\u{2}'
  	'\u{17E}\u{17F}\u{3}\u{2}\u{2}\u{2}\u{17F}\u{184}\u{7}\u{8C}\u{2}\u{2}'
  	'\u{180}\u{181}\u{7}\u{98}\u{2}\u{2}\u{181}\u{182}\u{5}\u{1C}\u{F}\u{2}'
  	'\u{182}\u{183}\u{7}\u{97}\u{2}\u{2}\u{183}\u{185}\u{3}\u{2}\u{2}\u{2}'
  	'\u{184}\u{180}\u{3}\u{2}\u{2}\u{2}\u{184}\u{185}\u{3}\u{2}\u{2}\u{2}'
  	'\u{185}\u{187}\u{3}\u{2}\u{2}\u{2}\u{186}\u{188}\u{5}\u{26}\u{14}\u{2}'
  	'\u{187}\u{186}\u{3}\u{2}\u{2}\u{2}\u{187}\u{188}\u{3}\u{2}\u{2}\u{2}'
  	'\u{188}\u{18A}\u{3}\u{2}\u{2}\u{2}\u{189}\u{18B}\u{5}\u{2C}\u{17}\u{2}'
  	'\u{18A}\u{189}\u{3}\u{2}\u{2}\u{2}\u{18A}\u{18B}\u{3}\u{2}\u{2}\u{2}'
  	'\u{18B}\u{18C}\u{3}\u{2}\u{2}\u{2}\u{18C}\u{18D}\u{7}\u{41}\u{2}\u{2}'
  	'\u{18D}\u{B}\u{3}\u{2}\u{2}\u{2}\u{18E}\u{18F}\u{7}\u{43}\u{2}\u{2}\u{18F}'
  	'\u{192}\u{5}\u{10}\u{9}\u{2}\u{190}\u{191}\u{7}\u{9C}\u{2}\u{2}\u{191}'
  	'\u{193}\u{5}\u{12A}\u{96}\u{2}\u{192}\u{190}\u{3}\u{2}\u{2}\u{2}\u{192}'
  	'\u{193}\u{3}\u{2}\u{2}\u{2}\u{193}\u{195}\u{3}\u{2}\u{2}\u{2}\u{194}'
  	'\u{196}\u{5}\u{26}\u{14}\u{2}\u{195}\u{194}\u{3}\u{2}\u{2}\u{2}\u{195}'
  	'\u{196}\u{3}\u{2}\u{2}\u{2}\u{196}\u{198}\u{3}\u{2}\u{2}\u{2}\u{197}'
  	'\u{199}\u{5}\u{34}\u{1B}\u{2}\u{198}\u{197}\u{3}\u{2}\u{2}\u{2}\u{198}'
  	'\u{199}\u{3}\u{2}\u{2}\u{2}\u{199}\u{19A}\u{3}\u{2}\u{2}\u{2}\u{19A}'
  	'\u{19B}\u{7}\u{41}\u{2}\u{2}\u{19B}\u{D}\u{3}\u{2}\u{2}\u{2}\u{19C}\u{19D}'
  	'\u{7}\u{43}\u{2}\u{2}\u{19D}\u{19E}\u{5}\u{10}\u{9}\u{2}\u{19E}\u{19F}'
  	'\u{7}\u{8B}\u{2}\u{2}\u{19F}\u{1A0}\u{5}\u{12A}\u{96}\u{2}\u{1A0}\u{1A2}'
  	'\u{7}\u{8C}\u{2}\u{2}\u{1A1}\u{1A3}\u{5}\u{34}\u{1B}\u{2}\u{1A2}\u{1A1}'
  	'\u{3}\u{2}\u{2}\u{2}\u{1A2}\u{1A3}\u{3}\u{2}\u{2}\u{2}\u{1A3}\u{1A4}'
  	'\u{3}\u{2}\u{2}\u{2}\u{1A4}\u{1A5}\u{7}\u{41}\u{2}\u{2}\u{1A5}\u{F}\u{3}'
  	'\u{2}\u{2}\u{2}\u{1A6}\u{1AC}\u{5}\u{12A}\u{96}\u{2}\u{1A7}\u{1A8}\u{7}'
  	'\u{98}\u{2}\u{2}\u{1A8}\u{1A9}\u{5}\u{1C}\u{F}\u{2}\u{1A9}\u{1AA}\u{7}'
  	'\u{97}\u{2}\u{2}\u{1AA}\u{1AD}\u{3}\u{2}\u{2}\u{2}\u{1AB}\u{1AD}\u{5}'
  	'\u{4C}\u{27}\u{2}\u{1AC}\u{1A7}\u{3}\u{2}\u{2}\u{2}\u{1AC}\u{1AB}\u{3}'
  	'\u{2}\u{2}\u{2}\u{1AC}\u{1AD}\u{3}\u{2}\u{2}\u{2}\u{1AD}\u{11}\u{3}\u{2}'
  	'\u{2}\u{2}\u{1AE}\u{1B1}\u{5}\u{D6}\u{6C}\u{2}\u{1AF}\u{1B1}\u{5}\u{A4}'
  	'\u{53}\u{2}\u{1B0}\u{1AE}\u{3}\u{2}\u{2}\u{2}\u{1B0}\u{1AF}\u{3}\u{2}'
  	'\u{2}\u{2}\u{1B1}\u{1B4}\u{3}\u{2}\u{2}\u{2}\u{1B2}\u{1B0}\u{3}\u{2}'
  	'\u{2}\u{2}\u{1B2}\u{1B3}\u{3}\u{2}\u{2}\u{2}\u{1B3}\u{1B5}\u{3}\u{2}'
  	'\u{2}\u{2}\u{1B4}\u{1B2}\u{3}\u{2}\u{2}\u{2}\u{1B5}\u{1B6}\u{7}\u{47}'
  	'\u{2}\u{2}\u{1B6}\u{1BB}\u{5}\u{24}\u{13}\u{2}\u{1B7}\u{1B8}\u{7}\u{98}'
  	'\u{2}\u{2}\u{1B8}\u{1B9}\u{5}\u{1C}\u{F}\u{2}\u{1B9}\u{1BA}\u{7}\u{97}'
  	'\u{2}\u{2}\u{1BA}\u{1BC}\u{3}\u{2}\u{2}\u{2}\u{1BB}\u{1B7}\u{3}\u{2}'
  	'\u{2}\u{2}\u{1BB}\u{1BC}\u{3}\u{2}\u{2}\u{2}\u{1BC}\u{1C0}\u{3}\u{2}'
  	'\u{2}\u{2}\u{1BD}\u{1BF}\u{5}\u{14}\u{B}\u{2}\u{1BE}\u{1BD}\u{3}\u{2}'
  	'\u{2}\u{2}\u{1BF}\u{1C2}\u{3}\u{2}\u{2}\u{2}\u{1C0}\u{1BE}\u{3}\u{2}'
  	'\u{2}\u{2}\u{1C0}\u{1C1}\u{3}\u{2}\u{2}\u{2}\u{1C1}\u{1C3}\u{3}\u{2}'
  	'\u{2}\u{2}\u{1C2}\u{1C0}\u{3}\u{2}\u{2}\u{2}\u{1C3}\u{1C4}\u{7}\u{41}'
  	'\u{2}\u{2}\u{1C4}\u{13}\u{3}\u{2}\u{2}\u{2}\u{1C5}\u{1C9}\u{9}\u{2}\u{2}'
  	'\u{2}\u{1C6}\u{1C8}\u{5}\u{2C}\u{17}\u{2}\u{1C7}\u{1C6}\u{3}\u{2}\u{2}'
  	'\u{2}\u{1C8}\u{1CB}\u{3}\u{2}\u{2}\u{2}\u{1C9}\u{1C7}\u{3}\u{2}\u{2}'
  	'\u{2}\u{1C9}\u{1CA}\u{3}\u{2}\u{2}\u{2}\u{1CA}\u{1D2}\u{3}\u{2}\u{2}'
  	'\u{2}\u{1CB}\u{1C9}\u{3}\u{2}\u{2}\u{2}\u{1CC}\u{1CE}\u{5}\u{2C}\u{17}'
  	'\u{2}\u{1CD}\u{1CC}\u{3}\u{2}\u{2}\u{2}\u{1CE}\u{1CF}\u{3}\u{2}\u{2}'
  	'\u{2}\u{1CF}\u{1CD}\u{3}\u{2}\u{2}\u{2}\u{1CF}\u{1D0}\u{3}\u{2}\u{2}'
  	'\u{2}\u{1D0}\u{1D2}\u{3}\u{2}\u{2}\u{2}\u{1D1}\u{1C5}\u{3}\u{2}\u{2}'
  	'\u{2}\u{1D1}\u{1CD}\u{3}\u{2}\u{2}\u{2}\u{1D2}\u{15}\u{3}\u{2}\u{2}\u{2}'
  	'\u{1D3}\u{1D4}\u{7}\u{47}\u{2}\u{2}\u{1D4}\u{1D5}\u{5}\u{1C}\u{F}\u{2}'
  	'\u{1D5}\u{1D6}\u{7}\u{91}\u{2}\u{2}\u{1D6}\u{17}\u{3}\u{2}\u{2}\u{2}'
  	'\u{1D7}\u{1DC}\u{5}\u{12A}\u{96}\u{2}\u{1D8}\u{1D9}\u{7}\u{98}\u{2}\u{2}'
  	'\u{1D9}\u{1DA}\u{5}\u{1C}\u{F}\u{2}\u{1DA}\u{1DB}\u{7}\u{97}\u{2}\u{2}'
  	'\u{1DB}\u{1DD}\u{3}\u{2}\u{2}\u{2}\u{1DC}\u{1D8}\u{3}\u{2}\u{2}\u{2}'
  	'\u{1DC}\u{1DD}\u{3}\u{2}\u{2}\u{2}\u{1DD}\u{19}\u{3}\u{2}\u{2}\u{2}\u{1DE}'
  	'\u{1DF}\u{7}\u{3E}\u{2}\u{2}\u{1DF}\u{1E4}\u{5}\u{18}\u{D}\u{2}\u{1E0}'
  	'\u{1E1}\u{7}\u{92}\u{2}\u{2}\u{1E1}\u{1E3}\u{5}\u{18}\u{D}\u{2}\u{1E2}'
  	'\u{1E0}\u{3}\u{2}\u{2}\u{2}\u{1E3}\u{1E6}\u{3}\u{2}\u{2}\u{2}\u{1E4}'
  	'\u{1E2}\u{3}\u{2}\u{2}\u{2}\u{1E4}\u{1E5}\u{3}\u{2}\u{2}\u{2}\u{1E5}'
  	'\u{1E7}\u{3}\u{2}\u{2}\u{2}\u{1E6}\u{1E4}\u{3}\u{2}\u{2}\u{2}\u{1E7}'
  	'\u{1E8}\u{7}\u{91}\u{2}\u{2}\u{1E8}\u{1B}\u{3}\u{2}\u{2}\u{2}\u{1E9}'
  	'\u{1EE}\u{5}\u{24}\u{13}\u{2}\u{1EA}\u{1EB}\u{7}\u{92}\u{2}\u{2}\u{1EB}'
  	'\u{1ED}\u{5}\u{24}\u{13}\u{2}\u{1EC}\u{1EA}\u{3}\u{2}\u{2}\u{2}\u{1ED}'
  	'\u{1F0}\u{3}\u{2}\u{2}\u{2}\u{1EE}\u{1EC}\u{3}\u{2}\u{2}\u{2}\u{1EE}'
  	'\u{1EF}\u{3}\u{2}\u{2}\u{2}\u{1EF}\u{1D}\u{3}\u{2}\u{2}\u{2}\u{1F0}\u{1EE}'
  	'\u{3}\u{2}\u{2}\u{2}\u{1F1}\u{1F6}\u{7}\u{4A}\u{2}\u{2}\u{1F2}\u{1F3}'
  	'\u{7}\u{8B}\u{2}\u{2}\u{1F3}\u{1F4}\u{5}\u{20}\u{11}\u{2}\u{1F4}\u{1F5}'
  	'\u{7}\u{8C}\u{2}\u{2}\u{1F5}\u{1F7}\u{3}\u{2}\u{2}\u{2}\u{1F6}\u{1F2}'
  	'\u{3}\u{2}\u{2}\u{2}\u{1F6}\u{1F7}\u{3}\u{2}\u{2}\u{2}\u{1F7}\u{1F9}'
  	'\u{3}\u{2}\u{2}\u{2}\u{1F8}\u{1FA}\u{5}\u{B0}\u{59}\u{2}\u{1F9}\u{1F8}'
  	'\u{3}\u{2}\u{2}\u{2}\u{1F9}\u{1FA}\u{3}\u{2}\u{2}\u{2}\u{1FA}\u{1FC}'
  	'\u{3}\u{2}\u{2}\u{2}\u{1FB}\u{1FD}\u{7}\u{7A}\u{2}\u{2}\u{1FC}\u{1FB}'
  	'\u{3}\u{2}\u{2}\u{2}\u{1FC}\u{1FD}\u{3}\u{2}\u{2}\u{2}\u{1FD}\u{1FE}'
  	'\u{3}\u{2}\u{2}\u{2}\u{1FE}\u{1FF}\u{5}\u{AC}\u{57}\u{2}\u{1FF}\u{1F}'
  	'\u{3}\u{2}\u{2}\u{2}\u{200}\u{205}\u{5}\u{22}\u{12}\u{2}\u{201}\u{202}'
  	'\u{7}\u{92}\u{2}\u{2}\u{202}\u{204}\u{5}\u{22}\u{12}\u{2}\u{203}\u{201}'
  	'\u{3}\u{2}\u{2}\u{2}\u{204}\u{207}\u{3}\u{2}\u{2}\u{2}\u{205}\u{203}'
  	'\u{3}\u{2}\u{2}\u{2}\u{205}\u{206}\u{3}\u{2}\u{2}\u{2}\u{206}\u{21}\u{3}'
  	'\u{2}\u{2}\u{2}\u{207}\u{205}\u{3}\u{2}\u{2}\u{2}\u{208}\u{21D}\u{7}'
  	'\u{53}\u{2}\u{2}\u{209}\u{21D}\u{7}\u{54}\u{2}\u{2}\u{20A}\u{21D}\u{7}'
  	'\u{73}\u{2}\u{2}\u{20B}\u{21D}\u{7}\u{76}\u{2}\u{2}\u{20C}\u{21D}\u{7}'
  	'\u{55}\u{2}\u{2}\u{20D}\u{21D}\u{7}\u{6F}\u{2}\u{2}\u{20E}\u{21D}\u{7}'
  	'\u{77}\u{2}\u{2}\u{20F}\u{21D}\u{7}\u{70}\u{2}\u{2}\u{210}\u{21D}\u{7}'
  	'\u{74}\u{2}\u{2}\u{211}\u{21D}\u{7}\u{75}\u{2}\u{2}\u{212}\u{213}\u{7}'
  	'\u{71}\u{2}\u{2}\u{213}\u{214}\u{7}\u{96}\u{2}\u{2}\u{214}\u{21D}\u{5}'
  	'\u{12A}\u{96}\u{2}\u{215}\u{216}\u{7}\u{72}\u{2}\u{2}\u{216}\u{217}\u{7}'
  	'\u{96}\u{2}\u{2}\u{217}\u{218}\u{5}\u{12A}\u{96}\u{2}\u{218}\u{219}\u{7}'
  	'\u{9C}\u{2}\u{2}\u{219}\u{21D}\u{3}\u{2}\u{2}\u{2}\u{21A}\u{21D}\u{5}'
  	'\u{B4}\u{5B}\u{2}\u{21B}\u{21D}\u{5}\u{12A}\u{96}\u{2}\u{21C}\u{208}'
  	'\u{3}\u{2}\u{2}\u{2}\u{21C}\u{209}\u{3}\u{2}\u{2}\u{2}\u{21C}\u{20A}'
  	'\u{3}\u{2}\u{2}\u{2}\u{21C}\u{20B}\u{3}\u{2}\u{2}\u{2}\u{21C}\u{20C}'
  	'\u{3}\u{2}\u{2}\u{2}\u{21C}\u{20D}\u{3}\u{2}\u{2}\u{2}\u{21C}\u{20E}'
  	'\u{3}\u{2}\u{2}\u{2}\u{21C}\u{20F}\u{3}\u{2}\u{2}\u{2}\u{21C}\u{210}'
  	'\u{3}\u{2}\u{2}\u{2}\u{21C}\u{211}\u{3}\u{2}\u{2}\u{2}\u{21C}\u{212}'
  	'\u{3}\u{2}\u{2}\u{2}\u{21C}\u{215}\u{3}\u{2}\u{2}\u{2}\u{21C}\u{21A}'
  	'\u{3}\u{2}\u{2}\u{2}\u{21C}\u{21B}\u{3}\u{2}\u{2}\u{2}\u{21D}\u{23}\u{3}'
  	'\u{2}\u{2}\u{2}\u{21E}\u{21F}\u{7}\u{98}\u{2}\u{2}\u{21F}\u{220}\u{5}'
  	'\u{1C}\u{F}\u{2}\u{220}\u{221}\u{7}\u{97}\u{2}\u{2}\u{221}\u{22B}\u{3}'
  	'\u{2}\u{2}\u{2}\u{222}\u{224}\u{9}\u{3}\u{2}\u{2}\u{223}\u{222}\u{3}'
  	'\u{2}\u{2}\u{2}\u{223}\u{224}\u{3}\u{2}\u{2}\u{2}\u{224}\u{225}\u{3}'
  	'\u{2}\u{2}\u{2}\u{225}\u{228}\u{5}\u{DE}\u{70}\u{2}\u{226}\u{227}\u{7}'
  	'\u{9C}\u{2}\u{2}\u{227}\u{229}\u{5}\u{BE}\u{60}\u{2}\u{228}\u{226}\u{3}'
  	'\u{2}\u{2}\u{2}\u{228}\u{229}\u{3}\u{2}\u{2}\u{2}\u{229}\u{22B}\u{3}'
  	'\u{2}\u{2}\u{2}\u{22A}\u{21E}\u{3}\u{2}\u{2}\u{2}\u{22A}\u{223}\u{3}'
  	'\u{2}\u{2}\u{2}\u{22B}\u{25}\u{3}\u{2}\u{2}\u{2}\u{22C}\u{230}\u{7}\u{8D}'
  	'\u{2}\u{2}\u{22D}\u{22F}\u{5}\u{28}\u{15}\u{2}\u{22E}\u{22D}\u{3}\u{2}'
  	'\u{2}\u{2}\u{22F}\u{232}\u{3}\u{2}\u{2}\u{2}\u{230}\u{22E}\u{3}\u{2}'
  	'\u{2}\u{2}\u{230}\u{231}\u{3}\u{2}\u{2}\u{2}\u{231}\u{233}\u{3}\u{2}'
  	'\u{2}\u{2}\u{232}\u{230}\u{3}\u{2}\u{2}\u{2}\u{233}\u{234}\u{7}\u{8E}'
  	'\u{2}\u{2}\u{234}\u{27}\u{3}\u{2}\u{2}\u{2}\u{235}\u{239}\u{5}\u{2A}'
  	'\u{16}\u{2}\u{236}\u{238}\u{5}\u{AC}\u{57}\u{2}\u{237}\u{236}\u{3}\u{2}'
  	'\u{2}\u{2}\u{238}\u{23B}\u{3}\u{2}\u{2}\u{2}\u{239}\u{237}\u{3}\u{2}'
  	'\u{2}\u{2}\u{239}\u{23A}\u{3}\u{2}\u{2}\u{2}\u{23A}\u{242}\u{3}\u{2}'
  	'\u{2}\u{2}\u{23B}\u{239}\u{3}\u{2}\u{2}\u{2}\u{23C}\u{23E}\u{5}\u{AC}'
  	'\u{57}\u{2}\u{23D}\u{23C}\u{3}\u{2}\u{2}\u{2}\u{23E}\u{23F}\u{3}\u{2}'
  	'\u{2}\u{2}\u{23F}\u{23D}\u{3}\u{2}\u{2}\u{2}\u{23F}\u{240}\u{3}\u{2}'
  	'\u{2}\u{2}\u{240}\u{242}\u{3}\u{2}\u{2}\u{2}\u{241}\u{235}\u{3}\u{2}'
  	'\u{2}\u{2}\u{241}\u{23D}\u{3}\u{2}\u{2}\u{2}\u{242}\u{29}\u{3}\u{2}\u{2}'
  	'\u{2}\u{243}\u{244}\u{9}\u{4}\u{2}\u{2}\u{244}\u{2B}\u{3}\u{2}\u{2}\u{2}'
  	'\u{245}\u{24B}\u{5}\u{90}\u{49}\u{2}\u{246}\u{24B}\u{5}\u{2E}\u{18}\u{2}'
  	'\u{247}\u{24B}\u{5}\u{30}\u{19}\u{2}\u{248}\u{24B}\u{5}\u{1E}\u{10}\u{2}'
  	'\u{249}\u{24B}\u{5}\u{7C}\u{3F}\u{2}\u{24A}\u{245}\u{3}\u{2}\u{2}\u{2}'
  	'\u{24A}\u{246}\u{3}\u{2}\u{2}\u{2}\u{24A}\u{247}\u{3}\u{2}\u{2}\u{2}'
  	'\u{24A}\u{248}\u{3}\u{2}\u{2}\u{2}\u{24A}\u{249}\u{3}\u{2}\u{2}\u{2}'
  	'\u{24B}\u{24C}\u{3}\u{2}\u{2}\u{2}\u{24C}\u{24A}\u{3}\u{2}\u{2}\u{2}'
  	'\u{24C}\u{24D}\u{3}\u{2}\u{2}\u{2}\u{24D}\u{2D}\u{3}\u{2}\u{2}\u{2}\u{24E}'
  	'\u{24F}\u{7}\u{A5}\u{2}\u{2}\u{24F}\u{250}\u{5}\u{32}\u{1A}\u{2}\u{250}'
  	'\u{2F}\u{3}\u{2}\u{2}\u{2}\u{251}\u{252}\u{7}\u{A6}\u{2}\u{2}\u{252}'
  	'\u{253}\u{5}\u{32}\u{1A}\u{2}\u{253}\u{31}\u{3}\u{2}\u{2}\u{2}\u{254}'
  	'\u{256}\u{5}\u{42}\u{22}\u{2}\u{255}\u{254}\u{3}\u{2}\u{2}\u{2}\u{255}'
  	'\u{256}\u{3}\u{2}\u{2}\u{2}\u{256}\u{257}\u{3}\u{2}\u{2}\u{2}\u{257}'
  	'\u{25C}\u{5}\u{3C}\u{1F}\u{2}\u{258}\u{25B}\u{5}\u{D6}\u{6C}\u{2}\u{259}'
  	'\u{25B}\u{5}\u{A4}\u{53}\u{2}\u{25A}\u{258}\u{3}\u{2}\u{2}\u{2}\u{25A}'
  	'\u{259}\u{3}\u{2}\u{2}\u{2}\u{25B}\u{25E}\u{3}\u{2}\u{2}\u{2}\u{25C}'
  	'\u{25A}\u{3}\u{2}\u{2}\u{2}\u{25C}\u{25D}\u{3}\u{2}\u{2}\u{2}\u{25D}'
  	'\u{25F}\u{3}\u{2}\u{2}\u{2}\u{25E}\u{25C}\u{3}\u{2}\u{2}\u{2}\u{25F}'
  	'\u{260}\u{7}\u{91}\u{2}\u{2}\u{260}\u{33}\u{3}\u{2}\u{2}\u{2}\u{261}'
  	'\u{267}\u{5}\u{7E}\u{40}\u{2}\u{262}\u{267}\u{5}\u{90}\u{49}\u{2}\u{263}'
  	'\u{267}\u{5}\u{36}\u{1C}\u{2}\u{264}\u{267}\u{5}\u{38}\u{1D}\u{2}\u{265}'
  	'\u{267}\u{5}\u{44}\u{23}\u{2}\u{266}\u{261}\u{3}\u{2}\u{2}\u{2}\u{266}'
  	'\u{262}\u{3}\u{2}\u{2}\u{2}\u{266}\u{263}\u{3}\u{2}\u{2}\u{2}\u{266}'
  	'\u{264}\u{3}\u{2}\u{2}\u{2}\u{266}\u{265}\u{3}\u{2}\u{2}\u{2}\u{267}'
  	'\u{268}\u{3}\u{2}\u{2}\u{2}\u{268}\u{266}\u{3}\u{2}\u{2}\u{2}\u{268}'
  	'\u{269}\u{3}\u{2}\u{2}\u{2}\u{269}\u{35}\u{3}\u{2}\u{2}\u{2}\u{26A}\u{26B}'
  	'\u{7}\u{A5}\u{2}\u{2}\u{26B}\u{26C}\u{5}\u{3A}\u{1E}\u{2}\u{26C}\u{37}'
  	'\u{3}\u{2}\u{2}\u{2}\u{26D}\u{26E}\u{7}\u{A6}\u{2}\u{2}\u{26E}\u{26F}'
  	'\u{5}\u{3A}\u{1E}\u{2}\u{26F}\u{39}\u{3}\u{2}\u{2}\u{2}\u{270}\u{272}'
  	'\u{5}\u{42}\u{22}\u{2}\u{271}\u{270}\u{3}\u{2}\u{2}\u{2}\u{271}\u{272}'
  	'\u{3}\u{2}\u{2}\u{2}\u{272}\u{273}\u{3}\u{2}\u{2}\u{2}\u{273}\u{275}'
  	'\u{5}\u{3C}\u{1F}\u{2}\u{274}\u{276}\u{5}\u{A6}\u{54}\u{2}\u{275}\u{274}'
  	'\u{3}\u{2}\u{2}\u{2}\u{275}\u{276}\u{3}\u{2}\u{2}\u{2}\u{276}\u{278}'
  	'\u{3}\u{2}\u{2}\u{2}\u{277}\u{279}\u{7}\u{91}\u{2}\u{2}\u{278}\u{277}'
  	'\u{3}\u{2}\u{2}\u{2}\u{278}\u{279}\u{3}\u{2}\u{2}\u{2}\u{279}\u{27A}'
  	'\u{3}\u{2}\u{2}\u{2}\u{27A}\u{27B}\u{5}\u{F0}\u{79}\u{2}\u{27B}\u{3B}'
  	'\u{3}\u{2}\u{2}\u{2}\u{27C}\u{287}\u{5}\u{40}\u{21}\u{2}\u{27D}\u{27F}'
  	'\u{5}\u{3E}\u{20}\u{2}\u{27E}\u{27D}\u{3}\u{2}\u{2}\u{2}\u{27F}\u{280}'
  	'\u{3}\u{2}\u{2}\u{2}\u{280}\u{27E}\u{3}\u{2}\u{2}\u{2}\u{280}\u{281}'
  	'\u{3}\u{2}\u{2}\u{2}\u{281}\u{284}\u{3}\u{2}\u{2}\u{2}\u{282}\u{283}'
  	'\u{7}\u{92}\u{2}\u{2}\u{283}\u{285}\u{7}\u{B7}\u{2}\u{2}\u{284}\u{282}'
  	'\u{3}\u{2}\u{2}\u{2}\u{284}\u{285}\u{3}\u{2}\u{2}\u{2}\u{285}\u{287}'
  	'\u{3}\u{2}\u{2}\u{2}\u{286}\u{27C}\u{3}\u{2}\u{2}\u{2}\u{286}\u{27E}'
  	'\u{3}\u{2}\u{2}\u{2}\u{287}\u{3D}\u{3}\u{2}\u{2}\u{2}\u{288}\u{28A}\u{5}'
  	'\u{40}\u{21}\u{2}\u{289}\u{288}\u{3}\u{2}\u{2}\u{2}\u{289}\u{28A}\u{3}'
  	'\u{2}\u{2}\u{2}\u{28A}\u{28B}\u{3}\u{2}\u{2}\u{2}\u{28B}\u{28F}\u{7}'
  	'\u{9C}\u{2}\u{2}\u{28C}\u{28E}\u{5}\u{42}\u{22}\u{2}\u{28D}\u{28C}\u{3}'
  	'\u{2}\u{2}\u{2}\u{28E}\u{291}\u{3}\u{2}\u{2}\u{2}\u{28F}\u{28D}\u{3}'
  	'\u{2}\u{2}\u{2}\u{28F}\u{290}\u{3}\u{2}\u{2}\u{2}\u{290}\u{293}\u{3}'
  	'\u{2}\u{2}\u{2}\u{291}\u{28F}\u{3}\u{2}\u{2}\u{2}\u{292}\u{294}\u{5}'
  	'\u{B2}\u{5A}\u{2}\u{293}\u{292}\u{3}\u{2}\u{2}\u{2}\u{293}\u{294}\u{3}'
  	'\u{2}\u{2}\u{2}\u{294}\u{295}\u{3}\u{2}\u{2}\u{2}\u{295}\u{296}\u{5}'
  	'\u{12A}\u{96}\u{2}\u{296}\u{3F}\u{3}\u{2}\u{2}\u{2}\u{297}\u{29A}\u{5}'
  	'\u{12A}\u{96}\u{2}\u{298}\u{29A}\u{7}\u{18}\u{2}\u{2}\u{299}\u{297}\u{3}'
  	'\u{2}\u{2}\u{2}\u{299}\u{298}\u{3}\u{2}\u{2}\u{2}\u{29A}\u{41}\u{3}\u{2}'
  	'\u{2}\u{2}\u{29B}\u{29C}\u{7}\u{8B}\u{2}\u{2}\u{29C}\u{29D}\u{5}\u{DE}'
  	'\u{70}\u{2}\u{29D}\u{29E}\u{7}\u{8C}\u{2}\u{2}\u{29E}\u{43}\u{3}\u{2}'
  	'\u{2}\u{2}\u{29F}\u{2A0}\u{7}\u{50}\u{2}\u{2}\u{2A0}\u{2A1}\u{5}\u{46}'
  	'\u{24}\u{2}\u{2A1}\u{2A2}\u{7}\u{91}\u{2}\u{2}\u{2A2}\u{2A8}\u{3}\u{2}'
  	'\u{2}\u{2}\u{2A3}\u{2A4}\u{7}\u{3F}\u{2}\u{2}\u{2A4}\u{2A5}\u{5}\u{46}'
  	'\u{24}\u{2}\u{2A5}\u{2A6}\u{7}\u{91}\u{2}\u{2}\u{2A6}\u{2A8}\u{3}\u{2}'
  	'\u{2}\u{2}\u{2A7}\u{29F}\u{3}\u{2}\u{2}\u{2}\u{2A7}\u{2A3}\u{3}\u{2}'
  	'\u{2}\u{2}\u{2A8}\u{45}\u{3}\u{2}\u{2}\u{2}\u{2A9}\u{2AE}\u{5}\u{48}'
  	'\u{25}\u{2}\u{2AA}\u{2AB}\u{7}\u{92}\u{2}\u{2}\u{2AB}\u{2AD}\u{5}\u{48}'
  	'\u{25}\u{2}\u{2AC}\u{2AA}\u{3}\u{2}\u{2}\u{2}\u{2AD}\u{2B0}\u{3}\u{2}'
  	'\u{2}\u{2}\u{2AE}\u{2AC}\u{3}\u{2}\u{2}\u{2}\u{2AE}\u{2AF}\u{3}\u{2}'
  	'\u{2}\u{2}\u{2AF}\u{47}\u{3}\u{2}\u{2}\u{2}\u{2B0}\u{2AE}\u{3}\u{2}\u{2}'
  	'\u{2}\u{2B1}\u{2B4}\u{5}\u{12A}\u{96}\u{2}\u{2B2}\u{2B3}\u{7}\u{96}\u{2}'
  	'\u{2}\u{2B3}\u{2B5}\u{5}\u{12A}\u{96}\u{2}\u{2B4}\u{2B2}\u{3}\u{2}\u{2}'
  	'\u{2}\u{2B4}\u{2B5}\u{3}\u{2}\u{2}\u{2}\u{2B5}\u{49}\u{3}\u{2}\u{2}\u{2}'
  	'\u{2B6}\u{2B8}\u{5}\u{B4}\u{5B}\u{2}\u{2B7}\u{2B6}\u{3}\u{2}\u{2}\u{2}'
  	'\u{2B7}\u{2B8}\u{3}\u{2}\u{2}\u{2}\u{2B8}\u{2B9}\u{3}\u{2}\u{2}\u{2}'
  	'\u{2B9}\u{2BB}\u{5}\u{BE}\u{60}\u{2}\u{2BA}\u{2BC}\u{5}\u{B4}\u{5B}\u{2}'
  	'\u{2BB}\u{2BA}\u{3}\u{2}\u{2}\u{2}\u{2BB}\u{2BC}\u{3}\u{2}\u{2}\u{2}'
  	'\u{2BC}\u{2BD}\u{3}\u{2}\u{2}\u{2}\u{2BD}\u{2BE}\u{7}\u{8B}\u{2}\u{2}'
  	'\u{2BE}\u{2C1}\u{7}\u{AB}\u{2}\u{2}\u{2BF}\u{2C2}\u{5}\u{B4}\u{5B}\u{2}'
  	'\u{2C0}\u{2C2}\u{5}\u{BE}\u{60}\u{2}\u{2C1}\u{2BF}\u{3}\u{2}\u{2}\u{2}'
  	'\u{2C1}\u{2C0}\u{3}\u{2}\u{2}\u{2}\u{2C1}\u{2C2}\u{3}\u{2}\u{2}\u{2}'
  	'\u{2C2}\u{2C3}\u{3}\u{2}\u{2}\u{2}\u{2C3}\u{2C5}\u{7}\u{8C}\u{2}\u{2}'
  	'\u{2C4}\u{2C6}\u{5}\u{58}\u{2D}\u{2}\u{2C5}\u{2C4}\u{3}\u{2}\u{2}\u{2}'
  	'\u{2C5}\u{2C6}\u{3}\u{2}\u{2}\u{2}\u{2C6}\u{4B}\u{3}\u{2}\u{2}\u{2}\u{2C7}'
  	'\u{2D0}\u{7}\u{98}\u{2}\u{2}\u{2C8}\u{2CD}\u{5}\u{4E}\u{28}\u{2}\u{2C9}'
  	'\u{2CA}\u{7}\u{92}\u{2}\u{2}\u{2CA}\u{2CC}\u{5}\u{4E}\u{28}\u{2}\u{2CB}'
  	'\u{2C9}\u{3}\u{2}\u{2}\u{2}\u{2CC}\u{2CF}\u{3}\u{2}\u{2}\u{2}\u{2CD}'
  	'\u{2CB}\u{3}\u{2}\u{2}\u{2}\u{2CD}\u{2CE}\u{3}\u{2}\u{2}\u{2}\u{2CE}'
  	'\u{2D1}\u{3}\u{2}\u{2}\u{2}\u{2CF}\u{2CD}\u{3}\u{2}\u{2}\u{2}\u{2D0}'
  	'\u{2C8}\u{3}\u{2}\u{2}\u{2}\u{2D0}\u{2D1}\u{3}\u{2}\u{2}\u{2}\u{2D1}'
  	'\u{2D2}\u{3}\u{2}\u{2}\u{2}\u{2D2}\u{2D3}\u{7}\u{97}\u{2}\u{2}\u{2D3}'
  	'\u{4D}\u{3}\u{2}\u{2}\u{2}\u{2D4}\u{2D6}\u{5}\u{B8}\u{5D}\u{2}\u{2D5}'
  	'\u{2D4}\u{3}\u{2}\u{2}\u{2}\u{2D6}\u{2D9}\u{3}\u{2}\u{2}\u{2}\u{2D7}'
  	'\u{2D5}\u{3}\u{2}\u{2}\u{2}\u{2D7}\u{2D8}\u{3}\u{2}\u{2}\u{2}\u{2D8}'
  	'\u{2DA}\u{3}\u{2}\u{2}\u{2}\u{2D9}\u{2D7}\u{3}\u{2}\u{2}\u{2}\u{2DA}'
  	'\u{2DB}\u{5}\u{BE}\u{60}\u{2}\u{2DB}\u{4F}\u{3}\u{2}\u{2}\u{2}\u{2DC}'
  	'\u{2DD}\u{7}\u{95}\u{2}\u{2}\u{2DD}\u{2E9}\u{7}\u{8D}\u{2}\u{2}\u{2DE}'
  	'\u{2E3}\u{5}\u{52}\u{2A}\u{2}\u{2DF}\u{2E0}\u{7}\u{92}\u{2}\u{2}\u{2E0}'
  	'\u{2E2}\u{5}\u{52}\u{2A}\u{2}\u{2E1}\u{2DF}\u{3}\u{2}\u{2}\u{2}\u{2E2}'
  	'\u{2E5}\u{3}\u{2}\u{2}\u{2}\u{2E3}\u{2E1}\u{3}\u{2}\u{2}\u{2}\u{2E3}'
  	'\u{2E4}\u{3}\u{2}\u{2}\u{2}\u{2E4}\u{2E7}\u{3}\u{2}\u{2}\u{2}\u{2E5}'
  	'\u{2E3}\u{3}\u{2}\u{2}\u{2}\u{2E6}\u{2E8}\u{7}\u{92}\u{2}\u{2}\u{2E7}'
  	'\u{2E6}\u{3}\u{2}\u{2}\u{2}\u{2E7}\u{2E8}\u{3}\u{2}\u{2}\u{2}\u{2E8}'
  	'\u{2EA}\u{3}\u{2}\u{2}\u{2}\u{2E9}\u{2DE}\u{3}\u{2}\u{2}\u{2}\u{2E9}'
  	'\u{2EA}\u{3}\u{2}\u{2}\u{2}\u{2EA}\u{2EB}\u{3}\u{2}\u{2}\u{2}\u{2EB}'
  	'\u{2EC}\u{7}\u{8E}\u{2}\u{2}\u{2EC}\u{51}\u{3}\u{2}\u{2}\u{2}\u{2ED}'
  	'\u{2EE}\u{5}\u{110}\u{89}\u{2}\u{2EE}\u{2EF}\u{7}\u{9C}\u{2}\u{2}\u{2EF}'
  	'\u{2F0}\u{5}\u{10C}\u{87}\u{2}\u{2F0}\u{53}\u{3}\u{2}\u{2}\u{2}\u{2F1}'
  	'\u{2F2}\u{7}\u{95}\u{2}\u{2}\u{2F2}\u{2F7}\u{7}\u{8F}\u{2}\u{2}\u{2F3}'
  	'\u{2F5}\u{5}\u{10A}\u{86}\u{2}\u{2F4}\u{2F6}\u{7}\u{92}\u{2}\u{2}\u{2F5}'
  	'\u{2F4}\u{3}\u{2}\u{2}\u{2}\u{2F5}\u{2F6}\u{3}\u{2}\u{2}\u{2}\u{2F6}'
  	'\u{2F8}\u{3}\u{2}\u{2}\u{2}\u{2F7}\u{2F3}\u{3}\u{2}\u{2}\u{2}\u{2F7}'
  	'\u{2F8}\u{3}\u{2}\u{2}\u{2}\u{2F8}\u{2F9}\u{3}\u{2}\u{2}\u{2}\u{2F9}'
  	'\u{2FA}\u{7}\u{90}\u{2}\u{2}\u{2FA}\u{55}\u{3}\u{2}\u{2}\u{2}\u{2FB}'
  	'\u{2FC}\u{7}\u{95}\u{2}\u{2}\u{2FC}\u{2FD}\u{7}\u{8B}\u{2}\u{2}\u{2FD}'
  	'\u{2FE}\u{5}\u{10C}\u{87}\u{2}\u{2FE}\u{2FF}\u{7}\u{8C}\u{2}\u{2}\u{2FF}'
  	'\u{306}\u{3}\u{2}\u{2}\u{2}\u{300}\u{303}\u{7}\u{95}\u{2}\u{2}\u{301}'
  	'\u{304}\u{5}\u{126}\u{94}\u{2}\u{302}\u{304}\u{5}\u{12A}\u{96}\u{2}\u{303}'
  	'\u{301}\u{3}\u{2}\u{2}\u{2}\u{303}\u{302}\u{3}\u{2}\u{2}\u{2}\u{304}'
  	'\u{306}\u{3}\u{2}\u{2}\u{2}\u{305}\u{2FB}\u{3}\u{2}\u{2}\u{2}\u{305}'
  	'\u{300}\u{3}\u{2}\u{2}\u{2}\u{306}\u{57}\u{3}\u{2}\u{2}\u{2}\u{307}\u{313}'
  	'\u{7}\u{8B}\u{2}\u{2}\u{308}\u{30B}\u{5}\u{5A}\u{2E}\u{2}\u{309}\u{30B}'
  	'\u{7}\u{22}\u{2}\u{2}\u{30A}\u{308}\u{3}\u{2}\u{2}\u{2}\u{30A}\u{309}'
  	'\u{3}\u{2}\u{2}\u{2}\u{30B}\u{310}\u{3}\u{2}\u{2}\u{2}\u{30C}\u{30D}'
  	'\u{7}\u{92}\u{2}\u{2}\u{30D}\u{30F}\u{5}\u{5A}\u{2E}\u{2}\u{30E}\u{30C}'
  	'\u{3}\u{2}\u{2}\u{2}\u{30F}\u{312}\u{3}\u{2}\u{2}\u{2}\u{310}\u{30E}'
  	'\u{3}\u{2}\u{2}\u{2}\u{310}\u{311}\u{3}\u{2}\u{2}\u{2}\u{311}\u{314}'
  	'\u{3}\u{2}\u{2}\u{2}\u{312}\u{310}\u{3}\u{2}\u{2}\u{2}\u{313}\u{30A}'
  	'\u{3}\u{2}\u{2}\u{2}\u{313}\u{314}\u{3}\u{2}\u{2}\u{2}\u{314}\u{315}'
  	'\u{3}\u{2}\u{2}\u{2}\u{315}\u{316}\u{7}\u{8C}\u{2}\u{2}\u{316}\u{59}'
  	'\u{3}\u{2}\u{2}\u{2}\u{317}\u{31A}\u{5}\u{70}\u{39}\u{2}\u{318}\u{31A}'
  	'\u{5}\u{DE}\u{70}\u{2}\u{319}\u{317}\u{3}\u{2}\u{2}\u{2}\u{319}\u{318}'
  	'\u{3}\u{2}\u{2}\u{2}\u{31A}\u{5B}\u{3}\u{2}\u{2}\u{2}\u{31B}\u{31D}\u{7}'
  	'\u{AB}\u{2}\u{2}\u{31C}\u{31E}\u{5}\u{BE}\u{60}\u{2}\u{31D}\u{31C}\u{3}'
  	'\u{2}\u{2}\u{2}\u{31D}\u{31E}\u{3}\u{2}\u{2}\u{2}\u{31E}\u{320}\u{3}'
  	'\u{2}\u{2}\u{2}\u{31F}\u{321}\u{5}\u{B4}\u{5B}\u{2}\u{320}\u{31F}\u{3}'
  	'\u{2}\u{2}\u{2}\u{320}\u{321}\u{3}\u{2}\u{2}\u{2}\u{321}\u{323}\u{3}'
  	'\u{2}\u{2}\u{2}\u{322}\u{324}\u{5}\u{58}\u{2D}\u{2}\u{323}\u{322}\u{3}'
  	'\u{2}\u{2}\u{2}\u{323}\u{324}\u{3}\u{2}\u{2}\u{2}\u{324}\u{325}\u{3}'
  	'\u{2}\u{2}\u{2}\u{325}\u{326}\u{5}\u{F0}\u{79}\u{2}\u{326}\u{5D}\u{3}'
  	'\u{2}\u{2}\u{2}\u{327}\u{328}\u{7}\u{8F}\u{2}\u{2}\u{328}\u{329}\u{5}'
  	'\u{60}\u{31}\u{2}\u{329}\u{32A}\u{5}\u{62}\u{32}\u{2}\u{32A}\u{32B}\u{7}'
  	'\u{90}\u{2}\u{2}\u{32B}\u{5F}\u{3}\u{2}\u{2}\u{2}\u{32C}\u{32F}\u{5}'
  	'\u{10C}\u{87}\u{2}\u{32D}\u{32F}\u{5}\u{BE}\u{60}\u{2}\u{32E}\u{32C}'
  	'\u{3}\u{2}\u{2}\u{2}\u{32E}\u{32D}\u{3}\u{2}\u{2}\u{2}\u{32F}\u{61}\u{3}'
  	'\u{2}\u{2}\u{2}\u{330}\u{337}\u{5}\u{40}\u{21}\u{2}\u{331}\u{333}\u{5}'
  	'\u{64}\u{33}\u{2}\u{332}\u{331}\u{3}\u{2}\u{2}\u{2}\u{333}\u{334}\u{3}'
  	'\u{2}\u{2}\u{2}\u{334}\u{332}\u{3}\u{2}\u{2}\u{2}\u{334}\u{335}\u{3}'
  	'\u{2}\u{2}\u{2}\u{335}\u{337}\u{3}\u{2}\u{2}\u{2}\u{336}\u{330}\u{3}'
  	'\u{2}\u{2}\u{2}\u{336}\u{332}\u{3}\u{2}\u{2}\u{2}\u{337}\u{63}\u{3}\u{2}'
  	'\u{2}\u{2}\u{338}\u{33A}\u{5}\u{40}\u{21}\u{2}\u{339}\u{338}\u{3}\u{2}'
  	'\u{2}\u{2}\u{339}\u{33A}\u{3}\u{2}\u{2}\u{2}\u{33A}\u{33B}\u{3}\u{2}'
  	'\u{2}\u{2}\u{33B}\u{33C}\u{7}\u{9C}\u{2}\u{2}\u{33C}\u{341}\u{5}\u{66}'
  	'\u{34}\u{2}\u{33D}\u{33E}\u{7}\u{92}\u{2}\u{2}\u{33E}\u{340}\u{5}\u{66}'
  	'\u{34}\u{2}\u{33F}\u{33D}\u{3}\u{2}\u{2}\u{2}\u{340}\u{343}\u{3}\u{2}'
  	'\u{2}\u{2}\u{341}\u{33F}\u{3}\u{2}\u{2}\u{2}\u{341}\u{342}\u{3}\u{2}'
  	'\u{2}\u{2}\u{342}\u{65}\u{3}\u{2}\u{2}\u{2}\u{343}\u{341}\u{3}\u{2}\u{2}'
  	'\u{2}\u{344}\u{346}\u{5}\u{10A}\u{86}\u{2}\u{345}\u{347}\u{5}\u{B4}\u{5B}'
  	'\u{2}\u{346}\u{345}\u{3}\u{2}\u{2}\u{2}\u{346}\u{347}\u{3}\u{2}\u{2}'
  	'\u{2}\u{347}\u{34C}\u{3}\u{2}\u{2}\u{2}\u{348}\u{349}\u{7}\u{8D}\u{2}'
  	'\u{2}\u{349}\u{34A}\u{5}\u{DC}\u{6F}\u{2}\u{34A}\u{34B}\u{7}\u{8E}\u{2}'
  	'\u{2}\u{34B}\u{34D}\u{3}\u{2}\u{2}\u{2}\u{34C}\u{348}\u{3}\u{2}\u{2}'
  	'\u{2}\u{34C}\u{34D}\u{3}\u{2}\u{2}\u{2}\u{34D}\u{67}\u{3}\u{2}\u{2}\u{2}'
  	'\u{34E}\u{34F}\u{7}\u{4E}\u{2}\u{2}\u{34F}\u{350}\u{7}\u{8B}\u{2}\u{2}'
  	'\u{350}\u{351}\u{5}\u{6A}\u{36}\u{2}\u{351}\u{352}\u{7}\u{8C}\u{2}\u{2}'
  	'\u{352}\u{69}\u{3}\u{2}\u{2}\u{2}\u{353}\u{35D}\u{5}\u{40}\u{21}\u{2}'
  	'\u{354}\u{356}\u{5}\u{40}\u{21}\u{2}\u{355}\u{354}\u{3}\u{2}\u{2}\u{2}'
  	'\u{355}\u{356}\u{3}\u{2}\u{2}\u{2}\u{356}\u{357}\u{3}\u{2}\u{2}\u{2}'
  	'\u{357}\u{359}\u{7}\u{9C}\u{2}\u{2}\u{358}\u{355}\u{3}\u{2}\u{2}\u{2}'
  	'\u{359}\u{35A}\u{3}\u{2}\u{2}\u{2}\u{35A}\u{358}\u{3}\u{2}\u{2}\u{2}'
  	'\u{35A}\u{35B}\u{3}\u{2}\u{2}\u{2}\u{35B}\u{35D}\u{3}\u{2}\u{2}\u{2}'
  	'\u{35C}\u{353}\u{3}\u{2}\u{2}\u{2}\u{35C}\u{358}\u{3}\u{2}\u{2}\u{2}'
  	'\u{35D}\u{6B}\u{3}\u{2}\u{2}\u{2}\u{35E}\u{35F}\u{7}\u{47}\u{2}\u{2}'
  	'\u{35F}\u{360}\u{7}\u{8B}\u{2}\u{2}\u{360}\u{361}\u{5}\u{24}\u{13}\u{2}'
  	'\u{361}\u{362}\u{7}\u{8C}\u{2}\u{2}\u{362}\u{6D}\u{3}\u{2}\u{2}\u{2}'
  	'\u{363}\u{364}\u{7}\u{40}\u{2}\u{2}\u{364}\u{365}\u{7}\u{8B}\u{2}\u{2}'
  	'\u{365}\u{366}\u{5}\u{DE}\u{70}\u{2}\u{366}\u{367}\u{7}\u{8C}\u{2}\u{2}'
  	'\u{367}\u{6F}\u{3}\u{2}\u{2}\u{2}\u{368}\u{369}\u{5}\u{A0}\u{51}\u{2}'
  	'\u{369}\u{36A}\u{5}\u{E8}\u{75}\u{2}\u{36A}\u{71}\u{3}\u{2}\u{2}\u{2}'
  	'\u{36B}\u{36C}\u{7}\u{51}\u{2}\u{2}\u{36C}\u{36D}\u{7}\u{8B}\u{2}\u{2}'
  	'\u{36D}\u{36E}\u{5}\u{12A}\u{96}\u{2}\u{36E}\u{36F}\u{7}\u{8C}\u{2}\u{2}'
  	'\u{36F}\u{373}\u{3}\u{2}\u{2}\u{2}\u{370}\u{371}\u{7}\u{51}\u{2}\u{2}'
  	'\u{371}\u{373}\u{5}\u{10C}\u{87}\u{2}\u{372}\u{36B}\u{3}\u{2}\u{2}\u{2}'
  	'\u{372}\u{370}\u{3}\u{2}\u{2}\u{2}\u{373}\u{73}\u{3}\u{2}\u{2}\u{2}\u{374}'
  	'\u{375}\u{7}\u{52}\u{2}\u{2}\u{375}\u{379}\u{5}\u{F0}\u{79}\u{2}\u{376}'
  	'\u{378}\u{5}\u{76}\u{3C}\u{2}\u{377}\u{376}\u{3}\u{2}\u{2}\u{2}\u{378}'
  	'\u{37B}\u{3}\u{2}\u{2}\u{2}\u{379}\u{377}\u{3}\u{2}\u{2}\u{2}\u{379}'
  	'\u{37A}\u{3}\u{2}\u{2}\u{2}\u{37A}\u{37E}\u{3}\u{2}\u{2}\u{2}\u{37B}'
  	'\u{379}\u{3}\u{2}\u{2}\u{2}\u{37C}\u{37D}\u{7}\u{42}\u{2}\u{2}\u{37D}'
  	'\u{37F}\u{5}\u{F0}\u{79}\u{2}\u{37E}\u{37C}\u{3}\u{2}\u{2}\u{2}\u{37E}'
  	'\u{37F}\u{3}\u{2}\u{2}\u{2}\u{37F}\u{75}\u{3}\u{2}\u{2}\u{2}\u{380}\u{381}'
  	'\u{7}\u{3D}\u{2}\u{2}\u{381}\u{382}\u{7}\u{8B}\u{2}\u{2}\u{382}\u{383}'
  	'\u{5}\u{70}\u{39}\u{2}\u{383}\u{384}\u{7}\u{8C}\u{2}\u{2}\u{384}\u{385}'
  	'\u{5}\u{F0}\u{79}\u{2}\u{385}\u{77}\u{3}\u{2}\u{2}\u{2}\u{386}\u{387}'
  	'\u{7}\u{4F}\u{2}\u{2}\u{387}\u{388}\u{7}\u{8B}\u{2}\u{2}\u{388}\u{389}'
  	'\u{5}\u{10C}\u{87}\u{2}\u{389}\u{38A}\u{7}\u{8C}\u{2}\u{2}\u{38A}\u{38B}'
  	'\u{5}\u{F0}\u{79}\u{2}\u{38B}\u{79}\u{3}\u{2}\u{2}\u{2}\u{38C}\u{38D}'
  	'\u{7}\u{3C}\u{2}\u{2}\u{38D}\u{38E}\u{5}\u{F0}\u{79}\u{2}\u{38E}\u{7B}'
  	'\u{3}\u{2}\u{2}\u{2}\u{38F}\u{394}\u{5}\u{80}\u{41}\u{2}\u{390}\u{393}'
  	'\u{5}\u{D6}\u{6C}\u{2}\u{391}\u{393}\u{5}\u{A4}\u{53}\u{2}\u{392}\u{390}'
  	'\u{3}\u{2}\u{2}\u{2}\u{392}\u{391}\u{3}\u{2}\u{2}\u{2}\u{393}\u{396}'
  	'\u{3}\u{2}\u{2}\u{2}\u{394}\u{392}\u{3}\u{2}\u{2}\u{2}\u{394}\u{395}'
  	'\u{3}\u{2}\u{2}\u{2}\u{395}\u{397}\u{3}\u{2}\u{2}\u{2}\u{396}\u{394}'
  	'\u{3}\u{2}\u{2}\u{2}\u{397}\u{398}\u{7}\u{91}\u{2}\u{2}\u{398}\u{7D}'
  	'\u{3}\u{2}\u{2}\u{2}\u{399}\u{39E}\u{5}\u{80}\u{41}\u{2}\u{39A}\u{39D}'
  	'\u{5}\u{D6}\u{6C}\u{2}\u{39B}\u{39D}\u{5}\u{A4}\u{53}\u{2}\u{39C}\u{39A}'
  	'\u{3}\u{2}\u{2}\u{2}\u{39C}\u{39B}\u{3}\u{2}\u{2}\u{2}\u{39D}\u{3A0}'
  	'\u{3}\u{2}\u{2}\u{2}\u{39E}\u{39C}\u{3}\u{2}\u{2}\u{2}\u{39E}\u{39F}'
  	'\u{3}\u{2}\u{2}\u{2}\u{39F}\u{3A1}\u{3}\u{2}\u{2}\u{2}\u{3A0}\u{39E}'
  	'\u{3}\u{2}\u{2}\u{2}\u{3A1}\u{3A2}\u{5}\u{F0}\u{79}\u{2}\u{3A2}\u{7F}'
  	'\u{3}\u{2}\u{2}\u{2}\u{3A3}\u{3A5}\u{5}\u{A0}\u{51}\u{2}\u{3A4}\u{3A3}'
  	'\u{3}\u{2}\u{2}\u{2}\u{3A4}\u{3A5}\u{3}\u{2}\u{2}\u{2}\u{3A5}\u{3A6}'
  	'\u{3}\u{2}\u{2}\u{2}\u{3A6}\u{3A7}\u{5}\u{12A}\u{96}\u{2}\u{3A7}\u{3A9}'
  	'\u{7}\u{8B}\u{2}\u{2}\u{3A8}\u{3AA}\u{5}\u{D2}\u{6A}\u{2}\u{3A9}\u{3A8}'
  	'\u{3}\u{2}\u{2}\u{2}\u{3A9}\u{3AA}\u{3}\u{2}\u{2}\u{2}\u{3AA}\u{3AB}'
  	'\u{3}\u{2}\u{2}\u{2}\u{3AB}\u{3AC}\u{7}\u{8C}\u{2}\u{2}\u{3AC}\u{3AE}'
  	'\u{3}\u{2}\u{2}\u{2}\u{3AD}\u{3AF}\u{5}\u{A4}\u{53}\u{2}\u{3AE}\u{3AD}'
  	'\u{3}\u{2}\u{2}\u{2}\u{3AE}\u{3AF}\u{3}\u{2}\u{2}\u{2}\u{3AF}\u{81}\u{3}'
  	'\u{2}\u{2}\u{2}\u{3B0}\u{3B2}\u{5}\u{A0}\u{51}\u{2}\u{3B1}\u{3B0}\u{3}'
  	'\u{2}\u{2}\u{2}\u{3B1}\u{3B2}\u{3}\u{2}\u{2}\u{2}\u{3B2}\u{3B3}\u{3}'
  	'\u{2}\u{2}\u{2}\u{3B3}\u{3B4}\u{7}\u{8B}\u{2}\u{2}\u{3B4}\u{3B6}\u{7}'
  	'\u{A7}\u{2}\u{2}\u{3B5}\u{3B7}\u{5}\u{B4}\u{5B}\u{2}\u{3B6}\u{3B5}\u{3}'
  	'\u{2}\u{2}\u{2}\u{3B6}\u{3B7}\u{3}\u{2}\u{2}\u{2}\u{3B7}\u{3B9}\u{3}'
  	'\u{2}\u{2}\u{2}\u{3B8}\u{3BA}\u{5}\u{12A}\u{96}\u{2}\u{3B9}\u{3B8}\u{3}'
  	'\u{2}\u{2}\u{2}\u{3B9}\u{3BA}\u{3}\u{2}\u{2}\u{2}\u{3BA}\u{3BB}\u{3}'
  	'\u{2}\u{2}\u{2}\u{3BB}\u{3BC}\u{7}\u{8C}\u{2}\u{2}\u{3BC}\u{3BD}\u{3}'
  	'\u{2}\u{2}\u{2}\u{3BD}\u{3BF}\u{7}\u{8B}\u{2}\u{2}\u{3BE}\u{3C0}\u{5}'
  	'\u{D2}\u{6A}\u{2}\u{3BF}\u{3BE}\u{3}\u{2}\u{2}\u{2}\u{3BF}\u{3C0}\u{3}'
  	'\u{2}\u{2}\u{2}\u{3C0}\u{3C1}\u{3}\u{2}\u{2}\u{2}\u{3C1}\u{3C2}\u{7}'
  	'\u{8C}\u{2}\u{2}\u{3C2}\u{3C4}\u{3}\u{2}\u{2}\u{2}\u{3C3}\u{3C5}\u{5}'
  	'\u{A4}\u{53}\u{2}\u{3C4}\u{3C3}\u{3}\u{2}\u{2}\u{2}\u{3C4}\u{3C5}\u{3}'
  	'\u{2}\u{2}\u{2}\u{3C5}\u{83}\u{3}\u{2}\u{2}\u{2}\u{3C6}\u{3C8}\u{5}\u{86}'
  	'\u{44}\u{2}\u{3C7}\u{3C9}\u{5}\u{88}\u{45}\u{2}\u{3C8}\u{3C7}\u{3}\u{2}'
  	'\u{2}\u{2}\u{3C8}\u{3C9}\u{3}\u{2}\u{2}\u{2}\u{3C9}\u{85}\u{3}\u{2}\u{2}'
  	'\u{2}\u{3CA}\u{3CD}\u{7}\u{7}\u{2}\u{2}\u{3CB}\u{3CD}\u{5}\u{12A}\u{96}'
  	'\u{2}\u{3CC}\u{3CA}\u{3}\u{2}\u{2}\u{2}\u{3CC}\u{3CB}\u{3}\u{2}\u{2}'
  	'\u{2}\u{3CD}\u{87}\u{3}\u{2}\u{2}\u{2}\u{3CE}\u{3D0}\u{7}\u{8B}\u{2}'
  	'\u{2}\u{3CF}\u{3D1}\u{5}\u{8A}\u{46}\u{2}\u{3D0}\u{3CF}\u{3}\u{2}\u{2}'
  	'\u{2}\u{3D0}\u{3D1}\u{3}\u{2}\u{2}\u{2}\u{3D1}\u{3D2}\u{3}\u{2}\u{2}'
  	'\u{2}\u{3D2}\u{3D3}\u{7}\u{8C}\u{2}\u{2}\u{3D3}\u{89}\u{3}\u{2}\u{2}'
  	'\u{2}\u{3D4}\u{3D9}\u{5}\u{8C}\u{47}\u{2}\u{3D5}\u{3D6}\u{7}\u{92}\u{2}'
  	'\u{2}\u{3D6}\u{3D8}\u{5}\u{8C}\u{47}\u{2}\u{3D7}\u{3D5}\u{3}\u{2}\u{2}'
  	'\u{2}\u{3D8}\u{3DB}\u{3}\u{2}\u{2}\u{2}\u{3D9}\u{3D7}\u{3}\u{2}\u{2}'
  	'\u{2}\u{3D9}\u{3DA}\u{3}\u{2}\u{2}\u{2}\u{3DA}\u{8B}\u{3}\u{2}\u{2}\u{2}'
  	'\u{3DB}\u{3D9}\u{3}\u{2}\u{2}\u{2}\u{3DC}\u{3E1}\u{5}\u{84}\u{43}\u{2}'
  	'\u{3DD}\u{3E1}\u{5}\u{126}\u{94}\u{2}\u{3DE}\u{3E1}\u{5}\u{128}\u{95}'
  	'\u{2}\u{3DF}\u{3E1}\u{5}\u{8E}\u{48}\u{2}\u{3E0}\u{3DC}\u{3}\u{2}\u{2}'
  	'\u{2}\u{3E0}\u{3DD}\u{3}\u{2}\u{2}\u{2}\u{3E0}\u{3DE}\u{3}\u{2}\u{2}'
  	'\u{2}\u{3E0}\u{3DF}\u{3}\u{2}\u{2}\u{2}\u{3E1}\u{8D}\u{3}\u{2}\u{2}\u{2}'
  	'\u{3E2}\u{3E3}\u{5}\u{86}\u{44}\u{2}\u{3E3}\u{3E7}\u{7}\u{96}\u{2}\u{2}'
  	'\u{3E4}\u{3E8}\u{5}\u{126}\u{94}\u{2}\u{3E5}\u{3E8}\u{5}\u{86}\u{44}'
  	'\u{2}\u{3E6}\u{3E8}\u{5}\u{128}\u{95}\u{2}\u{3E7}\u{3E4}\u{3}\u{2}\u{2}'
  	'\u{2}\u{3E7}\u{3E5}\u{3}\u{2}\u{2}\u{2}\u{3E7}\u{3E6}\u{3}\u{2}\u{2}'
  	'\u{2}\u{3E8}\u{8F}\u{3}\u{2}\u{2}\u{2}\u{3E9}\u{3EE}\u{5}\u{92}\u{4A}'
  	'\u{2}\u{3EA}\u{3EE}\u{5}\u{94}\u{4B}\u{2}\u{3EB}\u{3EE}\u{5}\u{96}\u{4C}'
  	'\u{2}\u{3EC}\u{3EE}\u{5}\u{98}\u{4D}\u{2}\u{3ED}\u{3E9}\u{3}\u{2}\u{2}'
  	'\u{2}\u{3ED}\u{3EA}\u{3}\u{2}\u{2}\u{2}\u{3ED}\u{3EB}\u{3}\u{2}\u{2}'
  	'\u{2}\u{3ED}\u{3EC}\u{3}\u{2}\u{2}\u{2}\u{3EE}\u{91}\u{3}\u{2}\u{2}\u{2}'
  	'\u{3EF}\u{3F1}\u{5}\u{A4}\u{53}\u{2}\u{3F0}\u{3EF}\u{3}\u{2}\u{2}\u{2}'
  	'\u{3F0}\u{3F1}\u{3}\u{2}\u{2}\u{2}\u{3F1}\u{3F2}\u{3}\u{2}\u{2}\u{2}'
  	'\u{3F2}\u{3F4}\u{5}\u{12A}\u{96}\u{2}\u{3F3}\u{3F5}\u{5}\u{A4}\u{53}'
  	'\u{2}\u{3F4}\u{3F3}\u{3}\u{2}\u{2}\u{2}\u{3F4}\u{3F5}\u{3}\u{2}\u{2}'
  	'\u{2}\u{3F5}\u{3F6}\u{3}\u{2}\u{2}\u{2}\u{3F6}\u{3F7}\u{7}\u{8B}\u{2}'
  	'\u{2}\u{3F7}\u{3F8}\u{5}\u{CE}\u{68}\u{2}\u{3F8}\u{3F9}\u{7}\u{8C}\u{2}'
  	'\u{2}\u{3F9}\u{3FA}\u{7}\u{91}\u{2}\u{2}\u{3FA}\u{93}\u{3}\u{2}\u{2}'
  	'\u{2}\u{3FB}\u{3FE}\u{5}\u{D6}\u{6C}\u{2}\u{3FC}\u{3FE}\u{5}\u{A4}\u{53}'
  	'\u{2}\u{3FD}\u{3FB}\u{3}\u{2}\u{2}\u{2}\u{3FD}\u{3FC}\u{3}\u{2}\u{2}'
  	'\u{2}\u{3FE}\u{401}\u{3}\u{2}\u{2}\u{2}\u{3FF}\u{3FD}\u{3}\u{2}\u{2}'
  	'\u{2}\u{3FF}\u{400}\u{3}\u{2}\u{2}\u{2}\u{400}\u{403}\u{3}\u{2}\u{2}'
  	'\u{2}\u{401}\u{3FF}\u{3}\u{2}\u{2}\u{2}\u{402}\u{404}\u{7}\u{1F}\u{2}'
  	'\u{2}\u{403}\u{402}\u{3}\u{2}\u{2}\u{2}\u{403}\u{404}\u{3}\u{2}\u{2}'
  	'\u{2}\u{404}\u{405}\u{3}\u{2}\u{2}\u{2}\u{405}\u{407}\u{5}\u{C6}\u{64}'
  	'\u{2}\u{406}\u{408}\u{5}\u{12A}\u{96}\u{2}\u{407}\u{406}\u{3}\u{2}\u{2}'
  	'\u{2}\u{407}\u{408}\u{3}\u{2}\u{2}\u{2}\u{408}\u{40D}\u{3}\u{2}\u{2}'
  	'\u{2}\u{409}\u{40C}\u{5}\u{D6}\u{6C}\u{2}\u{40A}\u{40C}\u{5}\u{A4}\u{53}'
  	'\u{2}\u{40B}\u{409}\u{3}\u{2}\u{2}\u{2}\u{40B}\u{40A}\u{3}\u{2}\u{2}'
  	'\u{2}\u{40C}\u{40F}\u{3}\u{2}\u{2}\u{2}\u{40D}\u{40B}\u{3}\u{2}\u{2}'
  	'\u{2}\u{40D}\u{40E}\u{3}\u{2}\u{2}\u{2}\u{40E}\u{410}\u{3}\u{2}\u{2}'
  	'\u{2}\u{40F}\u{40D}\u{3}\u{2}\u{2}\u{2}\u{410}\u{411}\u{7}\u{91}\u{2}'
  	'\u{2}\u{411}\u{95}\u{3}\u{2}\u{2}\u{2}\u{412}\u{414}\u{5}\u{D6}\u{6C}'
  	'\u{2}\u{413}\u{412}\u{3}\u{2}\u{2}\u{2}\u{413}\u{414}\u{3}\u{2}\u{2}'
  	'\u{2}\u{414}\u{419}\u{3}\u{2}\u{2}\u{2}\u{415}\u{416}\u{5}\u{A0}\u{51}'
  	'\u{2}\u{416}\u{417}\u{5}\u{A6}\u{54}\u{2}\u{417}\u{41A}\u{3}\u{2}\u{2}'
  	'\u{2}\u{418}\u{41A}\u{5}\u{A0}\u{51}\u{2}\u{419}\u{415}\u{3}\u{2}\u{2}'
  	'\u{2}\u{419}\u{418}\u{3}\u{2}\u{2}\u{2}\u{41A}\u{41F}\u{3}\u{2}\u{2}'
  	'\u{2}\u{41B}\u{41E}\u{5}\u{D6}\u{6C}\u{2}\u{41C}\u{41E}\u{5}\u{A4}\u{53}'
  	'\u{2}\u{41D}\u{41B}\u{3}\u{2}\u{2}\u{2}\u{41D}\u{41C}\u{3}\u{2}\u{2}'
  	'\u{2}\u{41E}\u{421}\u{3}\u{2}\u{2}\u{2}\u{41F}\u{41D}\u{3}\u{2}\u{2}'
  	'\u{2}\u{41F}\u{420}\u{3}\u{2}\u{2}\u{2}\u{420}\u{422}\u{3}\u{2}\u{2}'
  	'\u{2}\u{421}\u{41F}\u{3}\u{2}\u{2}\u{2}\u{422}\u{423}\u{7}\u{91}\u{2}'
  	'\u{2}\u{423}\u{97}\u{3}\u{2}\u{2}\u{2}\u{424}\u{426}\u{5}\u{A4}\u{53}'
  	'\u{2}\u{425}\u{424}\u{3}\u{2}\u{2}\u{2}\u{425}\u{426}\u{3}\u{2}\u{2}'
  	'\u{2}\u{426}\u{427}\u{3}\u{2}\u{2}\u{2}\u{427}\u{431}\u{7}\u{1F}\u{2}'
  	'\u{2}\u{428}\u{429}\u{5}\u{A0}\u{51}\u{2}\u{429}\u{42A}\u{5}\u{9A}\u{4E}'
  	'\u{2}\u{42A}\u{432}\u{3}\u{2}\u{2}\u{2}\u{42B}\u{432}\u{5}\u{A0}\u{51}'
  	'\u{2}\u{42C}\u{432}\u{5}\u{82}\u{42}\u{2}\u{42D}\u{432}\u{5}\u{80}\u{41}'
  	'\u{2}\u{42E}\u{42F}\u{5}\u{AA}\u{56}\u{2}\u{42F}\u{430}\u{5}\u{12A}\u{96}'
  	'\u{2}\u{430}\u{432}\u{3}\u{2}\u{2}\u{2}\u{431}\u{428}\u{3}\u{2}\u{2}'
  	'\u{2}\u{431}\u{42B}\u{3}\u{2}\u{2}\u{2}\u{431}\u{42C}\u{3}\u{2}\u{2}'
  	'\u{2}\u{431}\u{42D}\u{3}\u{2}\u{2}\u{2}\u{431}\u{42E}\u{3}\u{2}\u{2}'
  	'\u{2}\u{432}\u{437}\u{3}\u{2}\u{2}\u{2}\u{433}\u{436}\u{5}\u{D6}\u{6C}'
  	'\u{2}\u{434}\u{436}\u{5}\u{A4}\u{53}\u{2}\u{435}\u{433}\u{3}\u{2}\u{2}'
  	'\u{2}\u{435}\u{434}\u{3}\u{2}\u{2}\u{2}\u{436}\u{439}\u{3}\u{2}\u{2}'
  	'\u{2}\u{437}\u{435}\u{3}\u{2}\u{2}\u{2}\u{437}\u{438}\u{3}\u{2}\u{2}'
  	'\u{2}\u{438}\u{43A}\u{3}\u{2}\u{2}\u{2}\u{439}\u{437}\u{3}\u{2}\u{2}'
  	'\u{2}\u{43A}\u{43B}\u{7}\u{91}\u{2}\u{2}\u{43B}\u{99}\u{3}\u{2}\u{2}'
  	'\u{2}\u{43C}\u{441}\u{5}\u{9C}\u{4F}\u{2}\u{43D}\u{43E}\u{7}\u{92}\u{2}'
  	'\u{2}\u{43E}\u{440}\u{5}\u{9C}\u{4F}\u{2}\u{43F}\u{43D}\u{3}\u{2}\u{2}'
  	'\u{2}\u{440}\u{443}\u{3}\u{2}\u{2}\u{2}\u{441}\u{43F}\u{3}\u{2}\u{2}'
  	'\u{2}\u{441}\u{442}\u{3}\u{2}\u{2}\u{2}\u{442}\u{9B}\u{3}\u{2}\u{2}\u{2}'
  	'\u{443}\u{441}\u{3}\u{2}\u{2}\u{2}\u{444}\u{446}\u{5}\u{D4}\u{6B}\u{2}'
  	'\u{445}\u{444}\u{3}\u{2}\u{2}\u{2}\u{445}\u{446}\u{3}\u{2}\u{2}\u{2}'
  	'\u{446}\u{447}\u{3}\u{2}\u{2}\u{2}\u{447}\u{448}\u{5}\u{CE}\u{68}\u{2}'
  	'\u{448}\u{9D}\u{3}\u{2}\u{2}\u{2}\u{449}\u{44F}\u{5}\u{B2}\u{5A}\u{2}'
  	'\u{44A}\u{44F}\u{5}\u{B4}\u{5B}\u{2}\u{44B}\u{44F}\u{5}\u{B0}\u{59}\u{2}'
  	'\u{44C}\u{44F}\u{5}\u{B8}\u{5D}\u{2}\u{44D}\u{44F}\u{5}\u{BA}\u{5E}\u{2}'
  	'\u{44E}\u{449}\u{3}\u{2}\u{2}\u{2}\u{44E}\u{44A}\u{3}\u{2}\u{2}\u{2}'
  	'\u{44E}\u{44B}\u{3}\u{2}\u{2}\u{2}\u{44E}\u{44C}\u{3}\u{2}\u{2}\u{2}'
  	'\u{44E}\u{44D}\u{3}\u{2}\u{2}\u{2}\u{44F}\u{450}\u{3}\u{2}\u{2}\u{2}'
  	'\u{450}\u{44E}\u{3}\u{2}\u{2}\u{2}\u{450}\u{451}\u{3}\u{2}\u{2}\u{2}'
  	'\u{451}\u{9F}\u{3}\u{2}\u{2}\u{2}\u{452}\u{457}\u{5}\u{B6}\u{5C}\u{2}'
  	'\u{453}\u{457}\u{5}\u{A4}\u{53}\u{2}\u{454}\u{457}\u{5}\u{9E}\u{50}\u{2}'
  	'\u{455}\u{457}\u{5}\u{BE}\u{60}\u{2}\u{456}\u{452}\u{3}\u{2}\u{2}\u{2}'
  	'\u{456}\u{453}\u{3}\u{2}\u{2}\u{2}\u{456}\u{454}\u{3}\u{2}\u{2}\u{2}'
  	'\u{456}\u{455}\u{3}\u{2}\u{2}\u{2}\u{457}\u{458}\u{3}\u{2}\u{2}\u{2}'
  	'\u{458}\u{456}\u{3}\u{2}\u{2}\u{2}\u{458}\u{459}\u{3}\u{2}\u{2}\u{2}'
  	'\u{459}\u{A1}\u{3}\u{2}\u{2}\u{2}\u{45A}\u{45E}\u{5}\u{B6}\u{5C}\u{2}'
  	'\u{45B}\u{45E}\u{5}\u{A4}\u{53}\u{2}\u{45C}\u{45E}\u{5}\u{9E}\u{50}\u{2}'
  	'\u{45D}\u{45A}\u{3}\u{2}\u{2}\u{2}\u{45D}\u{45B}\u{3}\u{2}\u{2}\u{2}'
  	'\u{45D}\u{45C}\u{3}\u{2}\u{2}\u{2}\u{45E}\u{45F}\u{3}\u{2}\u{2}\u{2}'
  	'\u{45F}\u{45D}\u{3}\u{2}\u{2}\u{2}\u{45F}\u{460}\u{3}\u{2}\u{2}\u{2}'
  	'\u{460}\u{A3}\u{3}\u{2}\u{2}\u{2}\u{461}\u{462}\u{7}\u{56}\u{2}\u{2}'
  	'\u{462}\u{463}\u{7}\u{8B}\u{2}\u{2}\u{463}\u{464}\u{7}\u{8B}\u{2}\u{2}'
  	'\u{464}\u{469}\u{5}\u{84}\u{43}\u{2}\u{465}\u{466}\u{7}\u{92}\u{2}\u{2}'
  	'\u{466}\u{468}\u{5}\u{84}\u{43}\u{2}\u{467}\u{465}\u{3}\u{2}\u{2}\u{2}'
  	'\u{468}\u{46B}\u{3}\u{2}\u{2}\u{2}\u{469}\u{467}\u{3}\u{2}\u{2}\u{2}'
  	'\u{469}\u{46A}\u{3}\u{2}\u{2}\u{2}\u{46A}\u{46C}\u{3}\u{2}\u{2}\u{2}'
  	'\u{46B}\u{469}\u{3}\u{2}\u{2}\u{2}\u{46C}\u{46D}\u{7}\u{8C}\u{2}\u{2}'
  	'\u{46D}\u{46E}\u{7}\u{8C}\u{2}\u{2}\u{46E}\u{A5}\u{3}\u{2}\u{2}\u{2}'
  	'\u{46F}\u{474}\u{5}\u{A8}\u{55}\u{2}\u{470}\u{471}\u{7}\u{92}\u{2}\u{2}'
  	'\u{471}\u{473}\u{5}\u{A8}\u{55}\u{2}\u{472}\u{470}\u{3}\u{2}\u{2}\u{2}'
  	'\u{473}\u{476}\u{3}\u{2}\u{2}\u{2}\u{474}\u{472}\u{3}\u{2}\u{2}\u{2}'
  	'\u{474}\u{475}\u{3}\u{2}\u{2}\u{2}\u{475}\u{A7}\u{3}\u{2}\u{2}\u{2}\u{476}'
  	'\u{474}\u{3}\u{2}\u{2}\u{2}\u{477}\u{47C}\u{5}\u{E8}\u{75}\u{2}\u{478}'
  	'\u{47B}\u{5}\u{D6}\u{6C}\u{2}\u{479}\u{47B}\u{5}\u{A4}\u{53}\u{2}\u{47A}'
  	'\u{478}\u{3}\u{2}\u{2}\u{2}\u{47A}\u{479}\u{3}\u{2}\u{2}\u{2}\u{47B}'
  	'\u{47E}\u{3}\u{2}\u{2}\u{2}\u{47C}\u{47A}\u{3}\u{2}\u{2}\u{2}\u{47C}'
  	'\u{47D}\u{3}\u{2}\u{2}\u{2}\u{47D}\u{481}\u{3}\u{2}\u{2}\u{2}\u{47E}'
  	'\u{47C}\u{3}\u{2}\u{2}\u{2}\u{47F}\u{480}\u{7}\u{96}\u{2}\u{2}\u{480}'
  	'\u{482}\u{5}\u{112}\u{8A}\u{2}\u{481}\u{47F}\u{3}\u{2}\u{2}\u{2}\u{481}'
  	'\u{482}\u{3}\u{2}\u{2}\u{2}\u{482}\u{A9}\u{3}\u{2}\u{2}\u{2}\u{483}\u{490}'
  	'\u{9}\u{5}\u{2}\u{2}\u{484}\u{491}\u{5}\u{12A}\u{96}\u{2}\u{485}\u{487}'
  	'\u{5}\u{12A}\u{96}\u{2}\u{486}\u{485}\u{3}\u{2}\u{2}\u{2}\u{486}\u{487}'
  	'\u{3}\u{2}\u{2}\u{2}\u{487}\u{488}\u{3}\u{2}\u{2}\u{2}\u{488}\u{48A}'
  	'\u{7}\u{8D}\u{2}\u{2}\u{489}\u{48B}\u{5}\u{AC}\u{57}\u{2}\u{48A}\u{489}'
  	'\u{3}\u{2}\u{2}\u{2}\u{48B}\u{48C}\u{3}\u{2}\u{2}\u{2}\u{48C}\u{48A}'
  	'\u{3}\u{2}\u{2}\u{2}\u{48C}\u{48D}\u{3}\u{2}\u{2}\u{2}\u{48D}\u{48E}'
  	'\u{3}\u{2}\u{2}\u{2}\u{48E}\u{48F}\u{7}\u{8E}\u{2}\u{2}\u{48F}\u{491}'
  	'\u{3}\u{2}\u{2}\u{2}\u{490}\u{484}\u{3}\u{2}\u{2}\u{2}\u{490}\u{486}'
  	'\u{3}\u{2}\u{2}\u{2}\u{491}\u{AB}\u{3}\u{2}\u{2}\u{2}\u{492}\u{493}\u{5}'
  	'\u{AE}\u{58}\u{2}\u{493}\u{494}\u{5}\u{C2}\u{62}\u{2}\u{494}\u{497}\u{3}'
  	'\u{2}\u{2}\u{2}\u{495}\u{497}\u{5}\u{82}\u{42}\u{2}\u{496}\u{492}\u{3}'
  	'\u{2}\u{2}\u{2}\u{496}\u{495}\u{3}\u{2}\u{2}\u{2}\u{497}\u{49C}\u{3}'
  	'\u{2}\u{2}\u{2}\u{498}\u{49B}\u{5}\u{D6}\u{6C}\u{2}\u{499}\u{49B}\u{5}'
  	'\u{A4}\u{53}\u{2}\u{49A}\u{498}\u{3}\u{2}\u{2}\u{2}\u{49A}\u{499}\u{3}'
  	'\u{2}\u{2}\u{2}\u{49B}\u{49E}\u{3}\u{2}\u{2}\u{2}\u{49C}\u{49A}\u{3}'
  	'\u{2}\u{2}\u{2}\u{49C}\u{49D}\u{3}\u{2}\u{2}\u{2}\u{49D}\u{49F}\u{3}'
  	'\u{2}\u{2}\u{2}\u{49E}\u{49C}\u{3}\u{2}\u{2}\u{2}\u{49F}\u{4A0}\u{7}'
  	'\u{91}\u{2}\u{2}\u{4A0}\u{AD}\u{3}\u{2}\u{2}\u{2}\u{4A1}\u{4A4}\u{5}'
  	'\u{9E}\u{50}\u{2}\u{4A2}\u{4A4}\u{5}\u{BE}\u{60}\u{2}\u{4A3}\u{4A1}\u{3}'
  	'\u{2}\u{2}\u{2}\u{4A3}\u{4A2}\u{3}\u{2}\u{2}\u{2}\u{4A4}\u{4A5}\u{3}'
  	'\u{2}\u{2}\u{2}\u{4A5}\u{4A3}\u{3}\u{2}\u{2}\u{2}\u{4A5}\u{4A6}\u{3}'
  	'\u{2}\u{2}\u{2}\u{4A6}\u{AF}\u{3}\u{2}\u{2}\u{2}\u{4A7}\u{4A8}\u{7}\u{79}'
  	'\u{2}\u{2}\u{4A8}\u{4A9}\u{7}\u{8B}\u{2}\u{2}\u{4A9}\u{4AA}\u{5}\u{12A}'
  	'\u{96}\u{2}\u{4AA}\u{4AB}\u{7}\u{8C}\u{2}\u{2}\u{4AB}\u{4AE}\u{3}\u{2}'
  	'\u{2}\u{2}\u{4AC}\u{4AE}\u{7}\u{78}\u{2}\u{2}\u{4AD}\u{4A7}\u{3}\u{2}'
  	'\u{2}\u{2}\u{4AD}\u{4AC}\u{3}\u{2}\u{2}\u{2}\u{4AE}\u{B1}\u{3}\u{2}\u{2}'
  	'\u{2}\u{4AF}\u{4B0}\u{9}\u{6}\u{2}\u{2}\u{4B0}\u{B3}\u{3}\u{2}\u{2}\u{2}'
  	'\u{4B1}\u{4B2}\u{9}\u{7}\u{2}\u{2}\u{4B2}\u{B5}\u{3}\u{2}\u{2}\u{2}\u{4B3}'
  	'\u{4B4}\u{9}\u{8}\u{2}\u{2}\u{4B4}\u{B7}\u{3}\u{2}\u{2}\u{2}\u{4B5}\u{4B6}'
  	'\u{9}\u{9}\u{2}\u{2}\u{4B6}\u{B9}\u{3}\u{2}\u{2}\u{2}\u{4B7}\u{4BC}\u{7}'
  	'\u{7}\u{2}\u{2}\u{4B8}\u{4BC}\u{7}\u{23}\u{2}\u{2}\u{4B9}\u{4BC}\u{7}'
  	'\u{17}\u{2}\u{2}\u{4BA}\u{4BC}\u{5}\u{BC}\u{5F}\u{2}\u{4BB}\u{4B7}\u{3}'
  	'\u{2}\u{2}\u{2}\u{4BB}\u{4B8}\u{3}\u{2}\u{2}\u{2}\u{4BB}\u{4B9}\u{3}'
  	'\u{2}\u{2}\u{2}\u{4BB}\u{4BA}\u{3}\u{2}\u{2}\u{2}\u{4BC}\u{BB}\u{3}\u{2}'
  	'\u{2}\u{2}\u{4BD}\u{4BE}\u{9}\u{A}\u{2}\u{2}\u{4BE}\u{BD}\u{3}\u{2}\u{2}'
  	'\u{2}\u{4BF}\u{4C1}\u{9}\u{B}\u{2}\u{2}\u{4C0}\u{4BF}\u{3}\u{2}\u{2}'
  	'\u{2}\u{4C1}\u{4C2}\u{3}\u{2}\u{2}\u{2}\u{4C2}\u{4C0}\u{3}\u{2}\u{2}'
  	'\u{2}\u{4C2}\u{4C3}\u{3}\u{2}\u{2}\u{2}\u{4C3}\u{4CA}\u{3}\u{2}\u{2}'
  	'\u{2}\u{4C4}\u{4CA}\u{5}\u{C0}\u{61}\u{2}\u{4C5}\u{4CA}\u{5}\u{10}\u{9}'
  	'\u{2}\u{4C6}\u{4CA}\u{5}\u{AA}\u{56}\u{2}\u{4C7}\u{4CA}\u{5}\u{C6}\u{64}'
  	'\u{2}\u{4C8}\u{4CA}\u{5}\u{12A}\u{96}\u{2}\u{4C9}\u{4C0}\u{3}\u{2}\u{2}'
  	'\u{2}\u{4C9}\u{4C4}\u{3}\u{2}\u{2}\u{2}\u{4C9}\u{4C5}\u{3}\u{2}\u{2}'
  	'\u{2}\u{4C9}\u{4C6}\u{3}\u{2}\u{2}\u{2}\u{4C9}\u{4C7}\u{3}\u{2}\u{2}'
  	'\u{2}\u{4C9}\u{4C8}\u{3}\u{2}\u{2}\u{2}\u{4CA}\u{4CC}\u{3}\u{2}\u{2}'
  	'\u{2}\u{4CB}\u{4CD}\u{5}\u{D4}\u{6B}\u{2}\u{4CC}\u{4CB}\u{3}\u{2}\u{2}'
  	'\u{2}\u{4CC}\u{4CD}\u{3}\u{2}\u{2}\u{2}\u{4CD}\u{BF}\u{3}\u{2}\u{2}\u{2}'
  	'\u{4CE}\u{4CF}\u{7}\u{61}\u{2}\u{2}\u{4CF}\u{4D0}\u{7}\u{8B}\u{2}\u{2}'
  	'\u{4D0}\u{4D1}\u{5}\u{10C}\u{87}\u{2}\u{4D1}\u{4D2}\u{7}\u{8C}\u{2}\u{2}'
  	'\u{4D2}\u{C1}\u{3}\u{2}\u{2}\u{2}\u{4D3}\u{4D8}\u{5}\u{C4}\u{63}\u{2}'
  	'\u{4D4}\u{4D5}\u{7}\u{92}\u{2}\u{2}\u{4D5}\u{4D7}\u{5}\u{C4}\u{63}\u{2}'
  	'\u{4D6}\u{4D4}\u{3}\u{2}\u{2}\u{2}\u{4D7}\u{4DA}\u{3}\u{2}\u{2}\u{2}'
  	'\u{4D8}\u{4D6}\u{3}\u{2}\u{2}\u{2}\u{4D8}\u{4D9}\u{3}\u{2}\u{2}\u{2}'
  	'\u{4D9}\u{C3}\u{3}\u{2}\u{2}\u{2}\u{4DA}\u{4D8}\u{3}\u{2}\u{2}\u{2}\u{4DB}'
  	'\u{4E2}\u{5}\u{E8}\u{75}\u{2}\u{4DC}\u{4DE}\u{5}\u{E8}\u{75}\u{2}\u{4DD}'
  	'\u{4DC}\u{3}\u{2}\u{2}\u{2}\u{4DD}\u{4DE}\u{3}\u{2}\u{2}\u{2}\u{4DE}'
  	'\u{4DF}\u{3}\u{2}\u{2}\u{2}\u{4DF}\u{4E0}\u{7}\u{9C}\u{2}\u{2}\u{4E0}'
  	'\u{4E2}\u{5}\u{126}\u{94}\u{2}\u{4E1}\u{4DB}\u{3}\u{2}\u{2}\u{2}\u{4E1}'
  	'\u{4DD}\u{3}\u{2}\u{2}\u{2}\u{4E2}\u{C5}\u{3}\u{2}\u{2}\u{2}\u{4E3}\u{4E9}'
  	'\u{7}\u{D}\u{2}\u{2}\u{4E4}\u{4E6}\u{5}\u{12A}\u{96}\u{2}\u{4E5}\u{4E4}'
  	'\u{3}\u{2}\u{2}\u{2}\u{4E5}\u{4E6}\u{3}\u{2}\u{2}\u{2}\u{4E6}\u{4E7}'
  	'\u{3}\u{2}\u{2}\u{2}\u{4E7}\u{4E8}\u{7}\u{9C}\u{2}\u{2}\u{4E8}\u{4EA}'
  	'\u{5}\u{DE}\u{70}\u{2}\u{4E9}\u{4E5}\u{3}\u{2}\u{2}\u{2}\u{4E9}\u{4EA}'
  	'\u{3}\u{2}\u{2}\u{2}\u{4EA}\u{4F6}\u{3}\u{2}\u{2}\u{2}\u{4EB}\u{4F0}'
  	'\u{5}\u{12A}\u{96}\u{2}\u{4EC}\u{4ED}\u{7}\u{8D}\u{2}\u{2}\u{4ED}\u{4EE}'
  	'\u{5}\u{C8}\u{65}\u{2}\u{4EE}\u{4EF}\u{7}\u{8E}\u{2}\u{2}\u{4EF}\u{4F1}'
  	'\u{3}\u{2}\u{2}\u{2}\u{4F0}\u{4EC}\u{3}\u{2}\u{2}\u{2}\u{4F0}\u{4F1}'
  	'\u{3}\u{2}\u{2}\u{2}\u{4F1}\u{4F7}\u{3}\u{2}\u{2}\u{2}\u{4F2}\u{4F3}'
  	'\u{7}\u{8D}\u{2}\u{2}\u{4F3}\u{4F4}\u{5}\u{C8}\u{65}\u{2}\u{4F4}\u{4F5}'
  	'\u{7}\u{8E}\u{2}\u{2}\u{4F5}\u{4F7}\u{3}\u{2}\u{2}\u{2}\u{4F6}\u{4EB}'
  	'\u{3}\u{2}\u{2}\u{2}\u{4F6}\u{4F2}\u{3}\u{2}\u{2}\u{2}\u{4F7}\u{505}'
  	'\u{3}\u{2}\u{2}\u{2}\u{4F8}\u{4F9}\u{9}\u{C}\u{2}\u{2}\u{4F9}\u{4FA}'
  	'\u{7}\u{8B}\u{2}\u{2}\u{4FA}\u{4FD}\u{5}\u{DE}\u{70}\u{2}\u{4FB}\u{4FC}'
  	'\u{7}\u{92}\u{2}\u{2}\u{4FC}\u{4FE}\u{5}\u{12A}\u{96}\u{2}\u{4FD}\u{4FB}'
  	'\u{3}\u{2}\u{2}\u{2}\u{4FD}\u{4FE}\u{3}\u{2}\u{2}\u{2}\u{4FE}\u{4FF}'
  	'\u{3}\u{2}\u{2}\u{2}\u{4FF}\u{500}\u{7}\u{8C}\u{2}\u{2}\u{500}\u{501}'
  	'\u{7}\u{8D}\u{2}\u{2}\u{501}\u{502}\u{5}\u{C8}\u{65}\u{2}\u{502}\u{503}'
  	'\u{7}\u{8E}\u{2}\u{2}\u{503}\u{505}\u{3}\u{2}\u{2}\u{2}\u{504}\u{4E3}'
  	'\u{3}\u{2}\u{2}\u{2}\u{504}\u{4F8}\u{3}\u{2}\u{2}\u{2}\u{505}\u{C7}\u{3}'
  	'\u{2}\u{2}\u{2}\u{506}\u{50B}\u{5}\u{CA}\u{66}\u{2}\u{507}\u{508}\u{7}'
  	'\u{92}\u{2}\u{2}\u{508}\u{50A}\u{5}\u{CA}\u{66}\u{2}\u{509}\u{507}\u{3}'
  	'\u{2}\u{2}\u{2}\u{50A}\u{50D}\u{3}\u{2}\u{2}\u{2}\u{50B}\u{509}\u{3}'
  	'\u{2}\u{2}\u{2}\u{50B}\u{50C}\u{3}\u{2}\u{2}\u{2}\u{50C}\u{50F}\u{3}'
  	'\u{2}\u{2}\u{2}\u{50D}\u{50B}\u{3}\u{2}\u{2}\u{2}\u{50E}\u{510}\u{7}'
  	'\u{92}\u{2}\u{2}\u{50F}\u{50E}\u{3}\u{2}\u{2}\u{2}\u{50F}\u{510}\u{3}'
  	'\u{2}\u{2}\u{2}\u{510}\u{C9}\u{3}\u{2}\u{2}\u{2}\u{511}\u{516}\u{5}\u{CC}'
  	'\u{67}\u{2}\u{512}\u{515}\u{5}\u{D6}\u{6C}\u{2}\u{513}\u{515}\u{5}\u{A4}'
  	'\u{53}\u{2}\u{514}\u{512}\u{3}\u{2}\u{2}\u{2}\u{514}\u{513}\u{3}\u{2}'
  	'\u{2}\u{2}\u{515}\u{518}\u{3}\u{2}\u{2}\u{2}\u{516}\u{514}\u{3}\u{2}'
  	'\u{2}\u{2}\u{516}\u{517}\u{3}\u{2}\u{2}\u{2}\u{517}\u{51B}\u{3}\u{2}'
  	'\u{2}\u{2}\u{518}\u{516}\u{3}\u{2}\u{2}\u{2}\u{519}\u{51A}\u{7}\u{96}'
  	'\u{2}\u{2}\u{51A}\u{51C}\u{5}\u{10C}\u{87}\u{2}\u{51B}\u{519}\u{3}\u{2}'
  	'\u{2}\u{2}\u{51B}\u{51C}\u{3}\u{2}\u{2}\u{2}\u{51C}\u{CB}\u{3}\u{2}\u{2}'
  	'\u{2}\u{51D}\u{520}\u{5}\u{12A}\u{96}\u{2}\u{51E}\u{520}\u{7}\u{9}\u{2}'
  	'\u{2}\u{51F}\u{51D}\u{3}\u{2}\u{2}\u{2}\u{51F}\u{51E}\u{3}\u{2}\u{2}'
  	'\u{2}\u{520}\u{CD}\u{3}\u{2}\u{2}\u{2}\u{521}\u{527}\u{5}\u{12A}\u{96}'
  	'\u{2}\u{522}\u{523}\u{7}\u{8B}\u{2}\u{2}\u{523}\u{524}\u{5}\u{E8}\u{75}'
  	'\u{2}\u{524}\u{525}\u{7}\u{8C}\u{2}\u{2}\u{525}\u{527}\u{3}\u{2}\u{2}'
  	'\u{2}\u{526}\u{521}\u{3}\u{2}\u{2}\u{2}\u{526}\u{522}\u{3}\u{2}\u{2}'
  	'\u{2}\u{527}\u{52B}\u{3}\u{2}\u{2}\u{2}\u{528}\u{52A}\u{5}\u{D0}\u{69}'
  	'\u{2}\u{529}\u{528}\u{3}\u{2}\u{2}\u{2}\u{52A}\u{52D}\u{3}\u{2}\u{2}'
  	'\u{2}\u{52B}\u{529}\u{3}\u{2}\u{2}\u{2}\u{52B}\u{52C}\u{3}\u{2}\u{2}'
  	'\u{2}\u{52C}\u{539}\u{3}\u{2}\u{2}\u{2}\u{52D}\u{52B}\u{3}\u{2}\u{2}'
  	'\u{2}\u{52E}\u{52F}\u{7}\u{8B}\u{2}\u{2}\u{52F}\u{531}\u{7}\u{AB}\u{2}'
  	'\u{2}\u{530}\u{532}\u{5}\u{B4}\u{5B}\u{2}\u{531}\u{530}\u{3}\u{2}\u{2}'
  	'\u{2}\u{531}\u{532}\u{3}\u{2}\u{2}\u{2}\u{532}\u{534}\u{3}\u{2}\u{2}'
  	'\u{2}\u{533}\u{535}\u{5}\u{12A}\u{96}\u{2}\u{534}\u{533}\u{3}\u{2}\u{2}'
  	'\u{2}\u{534}\u{535}\u{3}\u{2}\u{2}\u{2}\u{535}\u{536}\u{3}\u{2}\u{2}'
  	'\u{2}\u{536}\u{537}\u{7}\u{8C}\u{2}\u{2}\u{537}\u{539}\u{5}\u{58}\u{2D}'
  	'\u{2}\u{538}\u{526}\u{3}\u{2}\u{2}\u{2}\u{538}\u{52E}\u{3}\u{2}\u{2}'
  	'\u{2}\u{539}\u{CF}\u{3}\u{2}\u{2}\u{2}\u{53A}\u{53C}\u{7}\u{8F}\u{2}'
  	'\u{2}\u{53B}\u{53D}\u{5}\u{114}\u{8B}\u{2}\u{53C}\u{53B}\u{3}\u{2}\u{2}'
  	'\u{2}\u{53C}\u{53D}\u{3}\u{2}\u{2}\u{2}\u{53D}\u{53E}\u{3}\u{2}\u{2}'
  	'\u{2}\u{53E}\u{53F}\u{7}\u{90}\u{2}\u{2}\u{53F}\u{D1}\u{3}\u{2}\u{2}'
  	'\u{2}\u{540}\u{543}\u{5}\u{E4}\u{73}\u{2}\u{541}\u{542}\u{7}\u{92}\u{2}'
  	'\u{2}\u{542}\u{544}\u{7}\u{B7}\u{2}\u{2}\u{543}\u{541}\u{3}\u{2}\u{2}'
  	'\u{2}\u{543}\u{544}\u{3}\u{2}\u{2}\u{2}\u{544}\u{D3}\u{3}\u{2}\u{2}\u{2}'
  	'\u{545}\u{547}\u{7}\u{A7}\u{2}\u{2}\u{546}\u{548}\u{5}\u{A2}\u{52}\u{2}'
  	'\u{547}\u{546}\u{3}\u{2}\u{2}\u{2}\u{547}\u{548}\u{3}\u{2}\u{2}\u{2}'
  	'\u{548}\u{54A}\u{3}\u{2}\u{2}\u{2}\u{549}\u{54B}\u{5}\u{D4}\u{6B}\u{2}'
  	'\u{54A}\u{549}\u{3}\u{2}\u{2}\u{2}\u{54A}\u{54B}\u{3}\u{2}\u{2}\u{2}'
  	'\u{54B}\u{D5}\u{3}\u{2}\u{2}\u{2}\u{54C}\u{572}\u{5}\u{12A}\u{96}\u{2}'
  	'\u{54D}\u{564}\u{7}\u{8B}\u{2}\u{2}\u{54E}\u{565}\u{5}\u{124}\u{93}\u{2}'
  	'\u{54F}\u{565}\u{5}\u{122}\u{92}\u{2}\u{550}\u{555}\u{5}\u{12A}\u{96}'
  	'\u{2}\u{551}\u{552}\u{7}\u{93}\u{2}\u{2}\u{552}\u{554}\u{5}\u{12A}\u{96}'
  	'\u{2}\u{553}\u{551}\u{3}\u{2}\u{2}\u{2}\u{554}\u{557}\u{3}\u{2}\u{2}'
  	'\u{2}\u{555}\u{553}\u{3}\u{2}\u{2}\u{2}\u{555}\u{556}\u{3}\u{2}\u{2}'
  	'\u{2}\u{556}\u{562}\u{3}\u{2}\u{2}\u{2}\u{557}\u{555}\u{3}\u{2}\u{2}'
  	'\u{2}\u{558}\u{55E}\u{7}\u{8B}\u{2}\u{2}\u{559}\u{55A}\u{5}\u{12A}\u{96}'
  	'\u{2}\u{55A}\u{55B}\u{7}\u{9C}\u{2}\u{2}\u{55B}\u{55D}\u{3}\u{2}\u{2}'
  	'\u{2}\u{55C}\u{559}\u{3}\u{2}\u{2}\u{2}\u{55D}\u{560}\u{3}\u{2}\u{2}'
  	'\u{2}\u{55E}\u{55C}\u{3}\u{2}\u{2}\u{2}\u{55E}\u{55F}\u{3}\u{2}\u{2}'
  	'\u{2}\u{55F}\u{561}\u{3}\u{2}\u{2}\u{2}\u{560}\u{55E}\u{3}\u{2}\u{2}'
  	'\u{2}\u{561}\u{563}\u{7}\u{8C}\u{2}\u{2}\u{562}\u{558}\u{3}\u{2}\u{2}'
  	'\u{2}\u{562}\u{563}\u{3}\u{2}\u{2}\u{2}\u{563}\u{565}\u{3}\u{2}\u{2}'
  	'\u{2}\u{564}\u{54E}\u{3}\u{2}\u{2}\u{2}\u{564}\u{54F}\u{3}\u{2}\u{2}'
  	'\u{2}\u{564}\u{550}\u{3}\u{2}\u{2}\u{2}\u{565}\u{56D}\u{3}\u{2}\u{2}'
  	'\u{2}\u{566}\u{569}\u{7}\u{92}\u{2}\u{2}\u{567}\u{56A}\u{5}\u{124}\u{93}'
  	'\u{2}\u{568}\u{56A}\u{5}\u{122}\u{92}\u{2}\u{569}\u{567}\u{3}\u{2}\u{2}'
  	'\u{2}\u{569}\u{568}\u{3}\u{2}\u{2}\u{2}\u{56A}\u{56C}\u{3}\u{2}\u{2}'
  	'\u{2}\u{56B}\u{566}\u{3}\u{2}\u{2}\u{2}\u{56C}\u{56F}\u{3}\u{2}\u{2}'
  	'\u{2}\u{56D}\u{56B}\u{3}\u{2}\u{2}\u{2}\u{56D}\u{56E}\u{3}\u{2}\u{2}'
  	'\u{2}\u{56E}\u{570}\u{3}\u{2}\u{2}\u{2}\u{56F}\u{56D}\u{3}\u{2}\u{2}'
  	'\u{2}\u{570}\u{571}\u{7}\u{8C}\u{2}\u{2}\u{571}\u{573}\u{3}\u{2}\u{2}'
  	'\u{2}\u{572}\u{54D}\u{3}\u{2}\u{2}\u{2}\u{572}\u{573}\u{3}\u{2}\u{2}'
  	'\u{2}\u{573}\u{D7}\u{3}\u{2}\u{2}\u{2}\u{574}\u{579}\u{7}\u{8D}\u{2}'
  	'\u{2}\u{575}\u{577}\u{5}\u{10A}\u{86}\u{2}\u{576}\u{578}\u{7}\u{92}\u{2}'
  	'\u{2}\u{577}\u{576}\u{3}\u{2}\u{2}\u{2}\u{577}\u{578}\u{3}\u{2}\u{2}'
  	'\u{2}\u{578}\u{57A}\u{3}\u{2}\u{2}\u{2}\u{579}\u{575}\u{3}\u{2}\u{2}'
  	'\u{2}\u{579}\u{57A}\u{3}\u{2}\u{2}\u{2}\u{57A}\u{57B}\u{3}\u{2}\u{2}'
  	'\u{2}\u{57B}\u{57C}\u{7}\u{8E}\u{2}\u{2}\u{57C}\u{D9}\u{3}\u{2}\u{2}'
  	'\u{2}\u{57D}\u{58B}\u{7}\u{8D}\u{2}\u{2}\u{57E}\u{57F}\u{7}\u{93}\u{2}'
  	'\u{2}\u{57F}\u{585}\u{5}\u{10C}\u{87}\u{2}\u{580}\u{581}\u{7}\u{92}\u{2}'
  	'\u{2}\u{581}\u{582}\u{7}\u{93}\u{2}\u{2}\u{582}\u{584}\u{5}\u{10C}\u{87}'
  	'\u{2}\u{583}\u{580}\u{3}\u{2}\u{2}\u{2}\u{584}\u{587}\u{3}\u{2}\u{2}'
  	'\u{2}\u{585}\u{583}\u{3}\u{2}\u{2}\u{2}\u{585}\u{586}\u{3}\u{2}\u{2}'
  	'\u{2}\u{586}\u{589}\u{3}\u{2}\u{2}\u{2}\u{587}\u{585}\u{3}\u{2}\u{2}'
  	'\u{2}\u{588}\u{58A}\u{7}\u{92}\u{2}\u{2}\u{589}\u{588}\u{3}\u{2}\u{2}'
  	'\u{2}\u{589}\u{58A}\u{3}\u{2}\u{2}\u{2}\u{58A}\u{58C}\u{3}\u{2}\u{2}'
  	'\u{2}\u{58B}\u{57E}\u{3}\u{2}\u{2}\u{2}\u{58B}\u{58C}\u{3}\u{2}\u{2}'
  	'\u{2}\u{58C}\u{58D}\u{3}\u{2}\u{2}\u{2}\u{58D}\u{58E}\u{7}\u{8E}\u{2}'
  	'\u{2}\u{58E}\u{DB}\u{3}\u{2}\u{2}\u{2}\u{58F}\u{594}\u{5}\u{112}\u{8A}'
  	'\u{2}\u{590}\u{591}\u{7}\u{92}\u{2}\u{2}\u{591}\u{593}\u{5}\u{112}\u{8A}'
  	'\u{2}\u{592}\u{590}\u{3}\u{2}\u{2}\u{2}\u{593}\u{596}\u{3}\u{2}\u{2}'
  	'\u{2}\u{594}\u{592}\u{3}\u{2}\u{2}\u{2}\u{594}\u{595}\u{3}\u{2}\u{2}'
  	'\u{2}\u{595}\u{598}\u{3}\u{2}\u{2}\u{2}\u{596}\u{594}\u{3}\u{2}\u{2}'
  	'\u{2}\u{597}\u{599}\u{7}\u{92}\u{2}\u{2}\u{598}\u{597}\u{3}\u{2}\u{2}'
  	'\u{2}\u{598}\u{599}\u{3}\u{2}\u{2}\u{2}\u{599}\u{DD}\u{3}\u{2}\u{2}\u{2}'
  	'\u{59A}\u{59C}\u{5}\u{AE}\u{58}\u{2}\u{59B}\u{59D}\u{5}\u{E0}\u{71}\u{2}'
  	'\u{59C}\u{59B}\u{3}\u{2}\u{2}\u{2}\u{59C}\u{59D}\u{3}\u{2}\u{2}\u{2}'
  	'\u{59D}\u{5A1}\u{3}\u{2}\u{2}\u{2}\u{59E}\u{5A1}\u{5}\u{4A}\u{26}\u{2}'
  	'\u{59F}\u{5A1}\u{5}\u{82}\u{42}\u{2}\u{5A0}\u{59A}\u{3}\u{2}\u{2}\u{2}'
  	'\u{5A0}\u{59E}\u{3}\u{2}\u{2}\u{2}\u{5A0}\u{59F}\u{3}\u{2}\u{2}\u{2}'
  	'\u{5A1}\u{DF}\u{3}\u{2}\u{2}\u{2}\u{5A2}\u{5A4}\u{5}\u{D4}\u{6B}\u{2}'
  	'\u{5A3}\u{5A5}\u{5}\u{E0}\u{71}\u{2}\u{5A4}\u{5A3}\u{3}\u{2}\u{2}\u{2}'
  	'\u{5A4}\u{5A5}\u{3}\u{2}\u{2}\u{2}\u{5A5}\u{5BA}\u{3}\u{2}\u{2}\u{2}'
  	'\u{5A6}\u{5A8}\u{7}\u{8B}\u{2}\u{2}\u{5A7}\u{5A9}\u{5}\u{E0}\u{71}\u{2}'
  	'\u{5A8}\u{5A7}\u{3}\u{2}\u{2}\u{2}\u{5A8}\u{5A9}\u{3}\u{2}\u{2}\u{2}'
  	'\u{5A9}\u{5AA}\u{3}\u{2}\u{2}\u{2}\u{5AA}\u{5AC}\u{7}\u{8C}\u{2}\u{2}'
  	'\u{5AB}\u{5AD}\u{5}\u{E2}\u{72}\u{2}\u{5AC}\u{5AB}\u{3}\u{2}\u{2}\u{2}'
  	'\u{5AD}\u{5AE}\u{3}\u{2}\u{2}\u{2}\u{5AE}\u{5AC}\u{3}\u{2}\u{2}\u{2}'
  	'\u{5AE}\u{5AF}\u{3}\u{2}\u{2}\u{2}\u{5AF}\u{5BA}\u{3}\u{2}\u{2}\u{2}'
  	'\u{5B0}\u{5B2}\u{7}\u{8F}\u{2}\u{2}\u{5B1}\u{5B3}\u{5}\u{114}\u{8B}\u{2}'
  	'\u{5B2}\u{5B1}\u{3}\u{2}\u{2}\u{2}\u{5B2}\u{5B3}\u{3}\u{2}\u{2}\u{2}'
  	'\u{5B3}\u{5B4}\u{3}\u{2}\u{2}\u{2}\u{5B4}\u{5B6}\u{7}\u{90}\u{2}\u{2}'
  	'\u{5B5}\u{5B0}\u{3}\u{2}\u{2}\u{2}\u{5B6}\u{5B7}\u{3}\u{2}\u{2}\u{2}'
  	'\u{5B7}\u{5B5}\u{3}\u{2}\u{2}\u{2}\u{5B7}\u{5B8}\u{3}\u{2}\u{2}\u{2}'
  	'\u{5B8}\u{5BA}\u{3}\u{2}\u{2}\u{2}\u{5B9}\u{5A2}\u{3}\u{2}\u{2}\u{2}'
  	'\u{5B9}\u{5A6}\u{3}\u{2}\u{2}\u{2}\u{5B9}\u{5B5}\u{3}\u{2}\u{2}\u{2}'
  	'\u{5BA}\u{E1}\u{3}\u{2}\u{2}\u{2}\u{5BB}\u{5BD}\u{7}\u{8F}\u{2}\u{2}'
  	'\u{5BC}\u{5BE}\u{5}\u{114}\u{8B}\u{2}\u{5BD}\u{5BC}\u{3}\u{2}\u{2}\u{2}'
  	'\u{5BD}\u{5BE}\u{3}\u{2}\u{2}\u{2}\u{5BE}\u{5BF}\u{3}\u{2}\u{2}\u{2}'
  	'\u{5BF}\u{5C6}\u{7}\u{90}\u{2}\u{2}\u{5C0}\u{5C2}\u{7}\u{8B}\u{2}\u{2}'
  	'\u{5C1}\u{5C3}\u{5}\u{E4}\u{73}\u{2}\u{5C2}\u{5C1}\u{3}\u{2}\u{2}\u{2}'
  	'\u{5C2}\u{5C3}\u{3}\u{2}\u{2}\u{2}\u{5C3}\u{5C4}\u{3}\u{2}\u{2}\u{2}'
  	'\u{5C4}\u{5C6}\u{7}\u{8C}\u{2}\u{2}\u{5C5}\u{5BB}\u{3}\u{2}\u{2}\u{2}'
  	'\u{5C5}\u{5C0}\u{3}\u{2}\u{2}\u{2}\u{5C6}\u{E3}\u{3}\u{2}\u{2}\u{2}\u{5C7}'
  	'\u{5CC}\u{5}\u{E6}\u{74}\u{2}\u{5C8}\u{5C9}\u{7}\u{92}\u{2}\u{2}\u{5C9}'
  	'\u{5CB}\u{5}\u{E6}\u{74}\u{2}\u{5CA}\u{5C8}\u{3}\u{2}\u{2}\u{2}\u{5CB}'
  	'\u{5CE}\u{3}\u{2}\u{2}\u{2}\u{5CC}\u{5CA}\u{3}\u{2}\u{2}\u{2}\u{5CC}'
  	'\u{5CD}\u{3}\u{2}\u{2}\u{2}\u{5CD}\u{E5}\u{3}\u{2}\u{2}\u{2}\u{5CE}\u{5CC}'
  	'\u{3}\u{2}\u{2}\u{2}\u{5CF}\u{5D1}\u{5}\u{A0}\u{51}\u{2}\u{5D0}\u{5D2}'
  	'\u{5}\u{E8}\u{75}\u{2}\u{5D1}\u{5D0}\u{3}\u{2}\u{2}\u{2}\u{5D1}\u{5D2}'
  	'\u{3}\u{2}\u{2}\u{2}\u{5D2}\u{5D6}\u{3}\u{2}\u{2}\u{2}\u{5D3}\u{5D6}'
  	'\u{7}\u{22}\u{2}\u{2}\u{5D4}\u{5D6}\u{5}\u{82}\u{42}\u{2}\u{5D5}\u{5CF}'
  	'\u{3}\u{2}\u{2}\u{2}\u{5D5}\u{5D3}\u{3}\u{2}\u{2}\u{2}\u{5D5}\u{5D4}'
  	'\u{3}\u{2}\u{2}\u{2}\u{5D6}\u{E7}\u{3}\u{2}\u{2}\u{2}\u{5D7}\u{5D9}\u{5}'
  	'\u{D4}\u{6B}\u{2}\u{5D8}\u{5D7}\u{3}\u{2}\u{2}\u{2}\u{5D8}\u{5D9}\u{3}'
  	'\u{2}\u{2}\u{2}\u{5D9}\u{5DA}\u{3}\u{2}\u{2}\u{2}\u{5DA}\u{5DB}\u{5}'
  	'\u{CE}\u{68}\u{2}\u{5DB}\u{E9}\u{3}\u{2}\u{2}\u{2}\u{5DC}\u{5DE}\u{5}'
  	'\u{EC}\u{77}\u{2}\u{5DD}\u{5DF}\u{7}\u{91}\u{2}\u{2}\u{5DE}\u{5DD}\u{3}'
  	'\u{2}\u{2}\u{2}\u{5DE}\u{5DF}\u{3}\u{2}\u{2}\u{2}\u{5DF}\u{606}\u{3}'
  	'\u{2}\u{2}\u{2}\u{5E0}\u{5E2}\u{5}\u{F0}\u{79}\u{2}\u{5E1}\u{5E3}\u{7}'
  	'\u{91}\u{2}\u{2}\u{5E2}\u{5E1}\u{3}\u{2}\u{2}\u{2}\u{5E2}\u{5E3}\u{3}'
  	'\u{2}\u{2}\u{2}\u{5E3}\u{606}\u{3}\u{2}\u{2}\u{2}\u{5E4}\u{5E6}\u{5}'
  	'\u{F2}\u{7A}\u{2}\u{5E5}\u{5E7}\u{7}\u{91}\u{2}\u{2}\u{5E6}\u{5E5}\u{3}'
  	'\u{2}\u{2}\u{2}\u{5E6}\u{5E7}\u{3}\u{2}\u{2}\u{2}\u{5E7}\u{606}\u{3}'
  	'\u{2}\u{2}\u{2}\u{5E8}\u{5EA}\u{5}\u{FC}\u{7F}\u{2}\u{5E9}\u{5EB}\u{7}'
  	'\u{91}\u{2}\u{2}\u{5EA}\u{5E9}\u{3}\u{2}\u{2}\u{2}\u{5EA}\u{5EB}\u{3}'
  	'\u{2}\u{2}\u{2}\u{5EB}\u{606}\u{3}\u{2}\u{2}\u{2}\u{5EC}\u{5EE}\u{5}'
  	'\u{108}\u{85}\u{2}\u{5ED}\u{5EF}\u{7}\u{91}\u{2}\u{2}\u{5EE}\u{5ED}\u{3}'
  	'\u{2}\u{2}\u{2}\u{5EE}\u{5EF}\u{3}\u{2}\u{2}\u{2}\u{5EF}\u{606}\u{3}'
  	'\u{2}\u{2}\u{2}\u{5F0}\u{5F2}\u{5}\u{78}\u{3D}\u{2}\u{5F1}\u{5F3}\u{7}'
  	'\u{91}\u{2}\u{2}\u{5F2}\u{5F1}\u{3}\u{2}\u{2}\u{2}\u{5F2}\u{5F3}\u{3}'
  	'\u{2}\u{2}\u{2}\u{5F3}\u{606}\u{3}\u{2}\u{2}\u{2}\u{5F4}\u{5F6}\u{5}'
  	'\u{7A}\u{3E}\u{2}\u{5F5}\u{5F7}\u{7}\u{91}\u{2}\u{2}\u{5F6}\u{5F5}\u{3}'
  	'\u{2}\u{2}\u{2}\u{5F6}\u{5F7}\u{3}\u{2}\u{2}\u{2}\u{5F7}\u{606}\u{3}'
  	'\u{2}\u{2}\u{2}\u{5F8}\u{5FA}\u{5}\u{72}\u{3A}\u{2}\u{5F9}\u{5FB}\u{7}'
  	'\u{91}\u{2}\u{2}\u{5FA}\u{5F9}\u{3}\u{2}\u{2}\u{2}\u{5FA}\u{5FB}\u{3}'
  	'\u{2}\u{2}\u{2}\u{5FB}\u{606}\u{3}\u{2}\u{2}\u{2}\u{5FC}\u{5FE}\u{5}'
  	'\u{74}\u{3B}\u{2}\u{5FD}\u{5FF}\u{7}\u{91}\u{2}\u{2}\u{5FE}\u{5FD}\u{3}'
  	'\u{2}\u{2}\u{2}\u{5FE}\u{5FF}\u{3}\u{2}\u{2}\u{2}\u{5FF}\u{606}\u{3}'
  	'\u{2}\u{2}\u{2}\u{600}\u{602}\u{5}\u{10A}\u{86}\u{2}\u{601}\u{603}\u{7}'
  	'\u{91}\u{2}\u{2}\u{602}\u{601}\u{3}\u{2}\u{2}\u{2}\u{602}\u{603}\u{3}'
  	'\u{2}\u{2}\u{2}\u{603}\u{606}\u{3}\u{2}\u{2}\u{2}\u{604}\u{606}\u{7}'
  	'\u{91}\u{2}\u{2}\u{605}\u{5DC}\u{3}\u{2}\u{2}\u{2}\u{605}\u{5E0}\u{3}'
  	'\u{2}\u{2}\u{2}\u{605}\u{5E4}\u{3}\u{2}\u{2}\u{2}\u{605}\u{5E8}\u{3}'
  	'\u{2}\u{2}\u{2}\u{605}\u{5EC}\u{3}\u{2}\u{2}\u{2}\u{605}\u{5F0}\u{3}'
  	'\u{2}\u{2}\u{2}\u{605}\u{5F4}\u{3}\u{2}\u{2}\u{2}\u{605}\u{5F8}\u{3}'
  	'\u{2}\u{2}\u{2}\u{605}\u{5FC}\u{3}\u{2}\u{2}\u{2}\u{605}\u{600}\u{3}'
  	'\u{2}\u{2}\u{2}\u{605}\u{604}\u{3}\u{2}\u{2}\u{2}\u{606}\u{EB}\u{3}\u{2}'
  	'\u{2}\u{2}\u{607}\u{608}\u{5}\u{12A}\u{96}\u{2}\u{608}\u{609}\u{7}\u{9C}'
  	'\u{2}\u{2}\u{609}\u{60A}\u{5}\u{EA}\u{76}\u{2}\u{60A}\u{ED}\u{3}\u{2}'
  	'\u{2}\u{2}\u{60B}\u{60E}\u{5}\u{114}\u{8B}\u{2}\u{60C}\u{60D}\u{7}\u{B7}'
  	'\u{2}\u{2}\u{60D}\u{60F}\u{5}\u{114}\u{8B}\u{2}\u{60E}\u{60C}\u{3}\u{2}'
  	'\u{2}\u{2}\u{60E}\u{60F}\u{3}\u{2}\u{2}\u{2}\u{60F}\u{EF}\u{3}\u{2}\u{2}'
  	'\u{2}\u{610}\u{615}\u{7}\u{8D}\u{2}\u{2}\u{611}\u{614}\u{5}\u{90}\u{49}'
  	'\u{2}\u{612}\u{614}\u{5}\u{EA}\u{76}\u{2}\u{613}\u{611}\u{3}\u{2}\u{2}'
  	'\u{2}\u{613}\u{612}\u{3}\u{2}\u{2}\u{2}\u{614}\u{617}\u{3}\u{2}\u{2}'
  	'\u{2}\u{615}\u{613}\u{3}\u{2}\u{2}\u{2}\u{615}\u{616}\u{3}\u{2}\u{2}'
  	'\u{2}\u{616}\u{618}\u{3}\u{2}\u{2}\u{2}\u{617}\u{615}\u{3}\u{2}\u{2}'
  	'\u{2}\u{618}\u{619}\u{7}\u{8E}\u{2}\u{2}\u{619}\u{F1}\u{3}\u{2}\u{2}'
  	'\u{2}\u{61A}\u{61B}\u{7}\u{12}\u{2}\u{2}\u{61B}\u{61C}\u{7}\u{8B}\u{2}'
  	'\u{2}\u{61C}\u{61D}\u{5}\u{10C}\u{87}\u{2}\u{61D}\u{61E}\u{7}\u{8C}\u{2}'
  	'\u{2}\u{61E}\u{621}\u{5}\u{EA}\u{76}\u{2}\u{61F}\u{620}\u{7}\u{C}\u{2}'
  	'\u{2}\u{620}\u{622}\u{5}\u{EA}\u{76}\u{2}\u{621}\u{61F}\u{3}\u{2}\u{2}'
  	'\u{2}\u{621}\u{622}\u{3}\u{2}\u{2}\u{2}\u{622}\u{625}\u{3}\u{2}\u{2}'
  	'\u{2}\u{623}\u{625}\u{5}\u{F4}\u{7B}\u{2}\u{624}\u{61A}\u{3}\u{2}\u{2}'
  	'\u{2}\u{624}\u{623}\u{3}\u{2}\u{2}\u{2}\u{625}\u{F3}\u{3}\u{2}\u{2}\u{2}'
  	'\u{626}\u{627}\u{7}\u{1E}\u{2}\u{2}\u{627}\u{628}\u{7}\u{8B}\u{2}\u{2}'
  	'\u{628}\u{629}\u{5}\u{10C}\u{87}\u{2}\u{629}\u{62A}\u{7}\u{8C}\u{2}\u{2}'
  	'\u{62A}\u{62B}\u{5}\u{F6}\u{7C}\u{2}\u{62B}\u{F5}\u{3}\u{2}\u{2}\u{2}'
  	'\u{62C}\u{630}\u{7}\u{8D}\u{2}\u{2}\u{62D}\u{62F}\u{5}\u{F8}\u{7D}\u{2}'
  	'\u{62E}\u{62D}\u{3}\u{2}\u{2}\u{2}\u{62F}\u{632}\u{3}\u{2}\u{2}\u{2}'
  	'\u{630}\u{62E}\u{3}\u{2}\u{2}\u{2}\u{630}\u{631}\u{3}\u{2}\u{2}\u{2}'
  	'\u{631}\u{633}\u{3}\u{2}\u{2}\u{2}\u{632}\u{630}\u{3}\u{2}\u{2}\u{2}'
  	'\u{633}\u{634}\u{7}\u{8E}\u{2}\u{2}\u{634}\u{F7}\u{3}\u{2}\u{2}\u{2}'
  	'\u{635}\u{637}\u{5}\u{FA}\u{7E}\u{2}\u{636}\u{635}\u{3}\u{2}\u{2}\u{2}'
  	'\u{637}\u{638}\u{3}\u{2}\u{2}\u{2}\u{638}\u{636}\u{3}\u{2}\u{2}\u{2}'
  	'\u{638}\u{639}\u{3}\u{2}\u{2}\u{2}\u{639}\u{63B}\u{3}\u{2}\u{2}\u{2}'
  	'\u{63A}\u{63C}\u{5}\u{EA}\u{76}\u{2}\u{63B}\u{63A}\u{3}\u{2}\u{2}\u{2}'
  	'\u{63C}\u{63D}\u{3}\u{2}\u{2}\u{2}\u{63D}\u{63B}\u{3}\u{2}\u{2}\u{2}'
  	'\u{63D}\u{63E}\u{3}\u{2}\u{2}\u{2}\u{63E}\u{F9}\u{3}\u{2}\u{2}\u{2}\u{63F}'
  	'\u{645}\u{7}\u{5}\u{2}\u{2}\u{640}\u{646}\u{5}\u{EE}\u{78}\u{2}\u{641}'
  	'\u{642}\u{7}\u{8B}\u{2}\u{2}\u{642}\u{643}\u{5}\u{EE}\u{78}\u{2}\u{643}'
  	'\u{644}\u{7}\u{8C}\u{2}\u{2}\u{644}\u{646}\u{3}\u{2}\u{2}\u{2}\u{645}'
  	'\u{640}\u{3}\u{2}\u{2}\u{2}\u{645}\u{641}\u{3}\u{2}\u{2}\u{2}\u{646}'
  	'\u{647}\u{3}\u{2}\u{2}\u{2}\u{647}\u{648}\u{7}\u{9C}\u{2}\u{2}\u{648}'
  	'\u{64C}\u{3}\u{2}\u{2}\u{2}\u{649}\u{64A}\u{7}\u{9}\u{2}\u{2}\u{64A}'
  	'\u{64C}\u{7}\u{9C}\u{2}\u{2}\u{64B}\u{63F}\u{3}\u{2}\u{2}\u{2}\u{64B}'
  	'\u{649}\u{3}\u{2}\u{2}\u{2}\u{64C}\u{FB}\u{3}\u{2}\u{2}\u{2}\u{64D}\u{652}'
  	'\u{5}\u{FE}\u{80}\u{2}\u{64E}\u{652}\u{5}\u{100}\u{81}\u{2}\u{64F}\u{652}'
  	'\u{5}\u{102}\u{82}\u{2}\u{650}\u{652}\u{5}\u{106}\u{84}\u{2}\u{651}\u{64D}'
  	'\u{3}\u{2}\u{2}\u{2}\u{651}\u{64E}\u{3}\u{2}\u{2}\u{2}\u{651}\u{64F}'
  	'\u{3}\u{2}\u{2}\u{2}\u{651}\u{650}\u{3}\u{2}\u{2}\u{2}\u{652}\u{FD}\u{3}'
  	'\u{2}\u{2}\u{2}\u{653}\u{654}\u{7}\u{24}\u{2}\u{2}\u{654}\u{655}\u{7}'
  	'\u{8B}\u{2}\u{2}\u{655}\u{656}\u{5}\u{10C}\u{87}\u{2}\u{656}\u{657}\u{7}'
  	'\u{8C}\u{2}\u{2}\u{657}\u{658}\u{5}\u{EA}\u{76}\u{2}\u{658}\u{FF}\u{3}'
  	'\u{2}\u{2}\u{2}\u{659}\u{65A}\u{7}\u{A}\u{2}\u{2}\u{65A}\u{65B}\u{5}'
  	'\u{EA}\u{76}\u{2}\u{65B}\u{65C}\u{7}\u{24}\u{2}\u{2}\u{65C}\u{65D}\u{7}'
  	'\u{8B}\u{2}\u{2}\u{65D}\u{65E}\u{5}\u{10C}\u{87}\u{2}\u{65E}\u{65F}\u{7}'
  	'\u{8C}\u{2}\u{2}\u{65F}\u{660}\u{7}\u{91}\u{2}\u{2}\u{660}\u{101}\u{3}'
  	'\u{2}\u{2}\u{2}\u{661}\u{662}\u{7}\u{10}\u{2}\u{2}\u{662}\u{664}\u{7}'
  	'\u{8B}\u{2}\u{2}\u{663}\u{665}\u{5}\u{104}\u{83}\u{2}\u{664}\u{663}\u{3}'
  	'\u{2}\u{2}\u{2}\u{664}\u{665}\u{3}\u{2}\u{2}\u{2}\u{665}\u{666}\u{3}'
  	'\u{2}\u{2}\u{2}\u{666}\u{668}\u{7}\u{91}\u{2}\u{2}\u{667}\u{669}\u{5}'
  	'\u{10C}\u{87}\u{2}\u{668}\u{667}\u{3}\u{2}\u{2}\u{2}\u{668}\u{669}\u{3}'
  	'\u{2}\u{2}\u{2}\u{669}\u{66A}\u{3}\u{2}\u{2}\u{2}\u{66A}\u{66C}\u{7}'
  	'\u{91}\u{2}\u{2}\u{66B}\u{66D}\u{5}\u{10A}\u{86}\u{2}\u{66C}\u{66B}\u{3}'
  	'\u{2}\u{2}\u{2}\u{66C}\u{66D}\u{3}\u{2}\u{2}\u{2}\u{66D}\u{66E}\u{3}'
  	'\u{2}\u{2}\u{2}\u{66E}\u{66F}\u{7}\u{8C}\u{2}\u{2}\u{66F}\u{670}\u{5}'
  	'\u{EA}\u{76}\u{2}\u{670}\u{103}\u{3}\u{2}\u{2}\u{2}\u{671}\u{672}\u{5}'
  	'\u{A0}\u{51}\u{2}\u{672}\u{673}\u{5}\u{A6}\u{54}\u{2}\u{673}\u{676}\u{3}'
  	'\u{2}\u{2}\u{2}\u{674}\u{676}\u{5}\u{10A}\u{86}\u{2}\u{675}\u{671}\u{3}'
  	'\u{2}\u{2}\u{2}\u{675}\u{674}\u{3}\u{2}\u{2}\u{2}\u{676}\u{105}\u{3}'
  	'\u{2}\u{2}\u{2}\u{677}\u{678}\u{7}\u{10}\u{2}\u{2}\u{678}\u{679}\u{7}'
  	'\u{8B}\u{2}\u{2}\u{679}\u{67A}\u{5}\u{70}\u{39}\u{2}\u{67A}\u{67C}\u{7}'
  	'\u{30}\u{2}\u{2}\u{67B}\u{67D}\u{5}\u{10C}\u{87}\u{2}\u{67C}\u{67B}\u{3}'
  	'\u{2}\u{2}\u{2}\u{67C}\u{67D}\u{3}\u{2}\u{2}\u{2}\u{67D}\u{67E}\u{3}'
  	'\u{2}\u{2}\u{2}\u{67E}\u{67F}\u{7}\u{8C}\u{2}\u{2}\u{67F}\u{680}\u{5}'
  	'\u{EA}\u{76}\u{2}\u{680}\u{107}\u{3}\u{2}\u{2}\u{2}\u{681}\u{682}\u{7}'
  	'\u{11}\u{2}\u{2}\u{682}\u{68A}\u{5}\u{12A}\u{96}\u{2}\u{683}\u{68A}\u{7}'
  	'\u{8}\u{2}\u{2}\u{684}\u{68A}\u{7}\u{4}\u{2}\u{2}\u{685}\u{687}\u{7}'
  	'\u{18}\u{2}\u{2}\u{686}\u{688}\u{5}\u{10C}\u{87}\u{2}\u{687}\u{686}\u{3}'
  	'\u{2}\u{2}\u{2}\u{687}\u{688}\u{3}\u{2}\u{2}\u{2}\u{688}\u{68A}\u{3}'
  	'\u{2}\u{2}\u{2}\u{689}\u{681}\u{3}\u{2}\u{2}\u{2}\u{689}\u{683}\u{3}'
  	'\u{2}\u{2}\u{2}\u{689}\u{684}\u{3}\u{2}\u{2}\u{2}\u{689}\u{685}\u{3}'
  	'\u{2}\u{2}\u{2}\u{68A}\u{109}\u{3}\u{2}\u{2}\u{2}\u{68B}\u{690}\u{5}'
  	'\u{10C}\u{87}\u{2}\u{68C}\u{68D}\u{7}\u{92}\u{2}\u{2}\u{68D}\u{68F}\u{5}'
  	'\u{10C}\u{87}\u{2}\u{68E}\u{68C}\u{3}\u{2}\u{2}\u{2}\u{68F}\u{692}\u{3}'
  	'\u{2}\u{2}\u{2}\u{690}\u{68E}\u{3}\u{2}\u{2}\u{2}\u{690}\u{691}\u{3}'
  	'\u{2}\u{2}\u{2}\u{691}\u{10B}\u{3}\u{2}\u{2}\u{2}\u{692}\u{690}\u{3}'
  	'\u{2}\u{2}\u{2}\u{693}\u{694}\u{8}\u{87}\u{1}\u{2}\u{694}\u{69E}\u{5}'
  	'\u{110}\u{89}\u{2}\u{695}\u{696}\u{7}\u{8B}\u{2}\u{2}\u{696}\u{697}\u{5}'
  	'\u{F0}\u{79}\u{2}\u{697}\u{698}\u{7}\u{8C}\u{2}\u{2}\u{698}\u{69E}\u{3}'
  	'\u{2}\u{2}\u{2}\u{699}\u{69A}\u{5}\u{116}\u{8C}\u{2}\u{69A}\u{69B}\u{5}'
  	'\u{10E}\u{88}\u{2}\u{69B}\u{69C}\u{5}\u{10C}\u{87}\u{3}\u{69C}\u{69E}'
  	'\u{3}\u{2}\u{2}\u{2}\u{69D}\u{693}\u{3}\u{2}\u{2}\u{2}\u{69D}\u{695}'
  	'\u{3}\u{2}\u{2}\u{2}\u{69D}\u{699}\u{3}\u{2}\u{2}\u{2}\u{69E}\u{6CB}'
  	'\u{3}\u{2}\u{2}\u{2}\u{69F}\u{6A0}\u{C}\u{F}\u{2}\u{2}\u{6A0}\u{6A1}'
  	'\u{9}\u{D}\u{2}\u{2}\u{6A1}\u{6CA}\u{5}\u{10C}\u{87}\u{10}\u{6A2}\u{6A3}'
  	'\u{C}\u{E}\u{2}\u{2}\u{6A3}\u{6A4}\u{9}\u{E}\u{2}\u{2}\u{6A4}\u{6CA}'
  	'\u{5}\u{10C}\u{87}\u{F}\u{6A5}\u{6AA}\u{C}\u{D}\u{2}\u{2}\u{6A6}\u{6A7}'
  	'\u{7}\u{98}\u{2}\u{2}\u{6A7}\u{6AB}\u{7}\u{98}\u{2}\u{2}\u{6A8}\u{6A9}'
  	'\u{7}\u{97}\u{2}\u{2}\u{6A9}\u{6AB}\u{7}\u{97}\u{2}\u{2}\u{6AA}\u{6A6}'
  	'\u{3}\u{2}\u{2}\u{2}\u{6AA}\u{6A8}\u{3}\u{2}\u{2}\u{2}\u{6AB}\u{6AC}'
  	'\u{3}\u{2}\u{2}\u{2}\u{6AC}\u{6CA}\u{5}\u{10C}\u{87}\u{E}\u{6AD}\u{6AE}'
  	'\u{C}\u{C}\u{2}\u{2}\u{6AE}\u{6AF}\u{9}\u{F}\u{2}\u{2}\u{6AF}\u{6CA}'
  	'\u{5}\u{10C}\u{87}\u{D}\u{6B0}\u{6B1}\u{C}\u{B}\u{2}\u{2}\u{6B1}\u{6B2}'
  	'\u{9}\u{10}\u{2}\u{2}\u{6B2}\u{6CA}\u{5}\u{10C}\u{87}\u{C}\u{6B3}\u{6B4}'
  	'\u{C}\u{A}\u{2}\u{2}\u{6B4}\u{6B5}\u{7}\u{A9}\u{2}\u{2}\u{6B5}\u{6CA}'
  	'\u{5}\u{10C}\u{87}\u{B}\u{6B6}\u{6B7}\u{C}\u{9}\u{2}\u{2}\u{6B7}\u{6B8}'
  	'\u{7}\u{AB}\u{2}\u{2}\u{6B8}\u{6CA}\u{5}\u{10C}\u{87}\u{A}\u{6B9}\u{6BA}'
  	'\u{C}\u{8}\u{2}\u{2}\u{6BA}\u{6BB}\u{7}\u{AA}\u{2}\u{2}\u{6BB}\u{6CA}'
  	'\u{5}\u{10C}\u{87}\u{9}\u{6BC}\u{6BD}\u{C}\u{7}\u{2}\u{2}\u{6BD}\u{6BE}'
  	'\u{7}\u{A1}\u{2}\u{2}\u{6BE}\u{6CA}\u{5}\u{10C}\u{87}\u{8}\u{6BF}\u{6C0}'
  	'\u{C}\u{6}\u{2}\u{2}\u{6C0}\u{6C1}\u{7}\u{A2}\u{2}\u{2}\u{6C1}\u{6CA}'
  	'\u{5}\u{10C}\u{87}\u{7}\u{6C2}\u{6C3}\u{C}\u{5}\u{2}\u{2}\u{6C3}\u{6C5}'
  	'\u{7}\u{9B}\u{2}\u{2}\u{6C4}\u{6C6}\u{5}\u{10C}\u{87}\u{2}\u{6C5}\u{6C4}'
  	'\u{3}\u{2}\u{2}\u{2}\u{6C5}\u{6C6}\u{3}\u{2}\u{2}\u{2}\u{6C6}\u{6C7}'
  	'\u{3}\u{2}\u{2}\u{2}\u{6C7}\u{6C8}\u{7}\u{9C}\u{2}\u{2}\u{6C8}\u{6CA}'
  	'\u{5}\u{10C}\u{87}\u{6}\u{6C9}\u{69F}\u{3}\u{2}\u{2}\u{2}\u{6C9}\u{6A2}'
  	'\u{3}\u{2}\u{2}\u{2}\u{6C9}\u{6A5}\u{3}\u{2}\u{2}\u{2}\u{6C9}\u{6AD}'
  	'\u{3}\u{2}\u{2}\u{2}\u{6C9}\u{6B0}\u{3}\u{2}\u{2}\u{2}\u{6C9}\u{6B3}'
  	'\u{3}\u{2}\u{2}\u{2}\u{6C9}\u{6B6}\u{3}\u{2}\u{2}\u{2}\u{6C9}\u{6B9}'
  	'\u{3}\u{2}\u{2}\u{2}\u{6C9}\u{6BC}\u{3}\u{2}\u{2}\u{2}\u{6C9}\u{6BF}'
  	'\u{3}\u{2}\u{2}\u{2}\u{6C9}\u{6C2}\u{3}\u{2}\u{2}\u{2}\u{6CA}\u{6CD}'
  	'\u{3}\u{2}\u{2}\u{2}\u{6CB}\u{6C9}\u{3}\u{2}\u{2}\u{2}\u{6CB}\u{6CC}'
  	'\u{3}\u{2}\u{2}\u{2}\u{6CC}\u{10D}\u{3}\u{2}\u{2}\u{2}\u{6CD}\u{6CB}'
  	'\u{3}\u{2}\u{2}\u{2}\u{6CE}\u{6CF}\u{9}\u{11}\u{2}\u{2}\u{6CF}\u{10F}'
  	'\u{3}\u{2}\u{2}\u{2}\u{6D0}\u{6DA}\u{5}\u{116}\u{8C}\u{2}\u{6D1}\u{6D2}'
  	'\u{7}\u{8B}\u{2}\u{2}\u{6D2}\u{6D3}\u{5}\u{DE}\u{70}\u{2}\u{6D3}\u{6D4}'
  	'\u{7}\u{8C}\u{2}\u{2}\u{6D4}\u{6D7}\u{3}\u{2}\u{2}\u{2}\u{6D5}\u{6D8}'
  	'\u{5}\u{110}\u{89}\u{2}\u{6D6}\u{6D8}\u{5}\u{112}\u{8A}\u{2}\u{6D7}\u{6D5}'
  	'\u{3}\u{2}\u{2}\u{2}\u{6D7}\u{6D6}\u{3}\u{2}\u{2}\u{2}\u{6D8}\u{6DA}'
  	'\u{3}\u{2}\u{2}\u{2}\u{6D9}\u{6D0}\u{3}\u{2}\u{2}\u{2}\u{6D9}\u{6D1}'
  	'\u{3}\u{2}\u{2}\u{2}\u{6DA}\u{111}\u{3}\u{2}\u{2}\u{2}\u{6DB}\u{6DF}'
  	'\u{5}\u{10C}\u{87}\u{2}\u{6DC}\u{6DF}\u{5}\u{D8}\u{6D}\u{2}\u{6DD}\u{6DF}'
  	'\u{5}\u{DA}\u{6E}\u{2}\u{6DE}\u{6DB}\u{3}\u{2}\u{2}\u{2}\u{6DE}\u{6DC}'
  	'\u{3}\u{2}\u{2}\u{2}\u{6DE}\u{6DD}\u{3}\u{2}\u{2}\u{2}\u{6DF}\u{113}'
  	'\u{3}\u{2}\u{2}\u{2}\u{6E0}\u{6E3}\u{5}\u{12A}\u{96}\u{2}\u{6E1}\u{6E3}'
  	'\u{5}\u{126}\u{94}\u{2}\u{6E2}\u{6E0}\u{3}\u{2}\u{2}\u{2}\u{6E2}\u{6E1}'
  	'\u{3}\u{2}\u{2}\u{2}\u{6E3}\u{115}\u{3}\u{2}\u{2}\u{2}\u{6E4}\u{6F3}'
  	'\u{5}\u{11A}\u{8E}\u{2}\u{6E5}\u{6EB}\u{7}\u{1B}\u{2}\u{2}\u{6E6}\u{6EC}'
  	'\u{5}\u{116}\u{8C}\u{2}\u{6E7}\u{6E8}\u{7}\u{8B}\u{2}\u{2}\u{6E8}\u{6E9}'
  	'\u{5}\u{BE}\u{60}\u{2}\u{6E9}\u{6EA}\u{7}\u{8C}\u{2}\u{2}\u{6EA}\u{6EC}'
  	'\u{3}\u{2}\u{2}\u{2}\u{6EB}\u{6E6}\u{3}\u{2}\u{2}\u{2}\u{6EB}\u{6E7}'
  	'\u{3}\u{2}\u{2}\u{2}\u{6EC}\u{6F3}\u{3}\u{2}\u{2}\u{2}\u{6ED}\u{6EE}'
  	'\u{9}\u{12}\u{2}\u{2}\u{6EE}\u{6F3}\u{5}\u{116}\u{8C}\u{2}\u{6EF}\u{6F0}'
  	'\u{5}\u{118}\u{8D}\u{2}\u{6F0}\u{6F1}\u{5}\u{110}\u{89}\u{2}\u{6F1}\u{6F3}'
  	'\u{3}\u{2}\u{2}\u{2}\u{6F2}\u{6E4}\u{3}\u{2}\u{2}\u{2}\u{6F2}\u{6E5}'
  	'\u{3}\u{2}\u{2}\u{2}\u{6F2}\u{6ED}\u{3}\u{2}\u{2}\u{2}\u{6F2}\u{6EF}'
  	'\u{3}\u{2}\u{2}\u{2}\u{6F3}\u{117}\u{3}\u{2}\u{2}\u{2}\u{6F4}\u{6F5}'
  	'\u{9}\u{13}\u{2}\u{2}\u{6F5}\u{119}\u{3}\u{2}\u{2}\u{2}\u{6F6}\u{6F7}'
  	'\u{8}\u{8E}\u{1}\u{2}\u{6F7}\u{6FB}\u{5}\u{124}\u{93}\u{2}\u{6F8}\u{6FA}'
  	'\u{5}\u{11C}\u{8F}\u{2}\u{6F9}\u{6F8}\u{3}\u{2}\u{2}\u{2}\u{6FA}\u{6FD}'
  	'\u{3}\u{2}\u{2}\u{2}\u{6FB}\u{6F9}\u{3}\u{2}\u{2}\u{2}\u{6FB}\u{6FC}'
  	'\u{3}\u{2}\u{2}\u{2}\u{6FC}\u{709}\u{3}\u{2}\u{2}\u{2}\u{6FD}\u{6FB}'
  	'\u{3}\u{2}\u{2}\u{2}\u{6FE}\u{6FF}\u{C}\u{3}\u{2}\u{2}\u{6FF}\u{700}'
  	'\u{9}\u{14}\u{2}\u{2}\u{700}\u{704}\u{5}\u{12A}\u{96}\u{2}\u{701}\u{703}'
  	'\u{5}\u{11C}\u{8F}\u{2}\u{702}\u{701}\u{3}\u{2}\u{2}\u{2}\u{703}\u{706}'
  	'\u{3}\u{2}\u{2}\u{2}\u{704}\u{702}\u{3}\u{2}\u{2}\u{2}\u{704}\u{705}'
  	'\u{3}\u{2}\u{2}\u{2}\u{705}\u{708}\u{3}\u{2}\u{2}\u{2}\u{706}\u{704}'
  	'\u{3}\u{2}\u{2}\u{2}\u{707}\u{6FE}\u{3}\u{2}\u{2}\u{2}\u{708}\u{70B}'
  	'\u{3}\u{2}\u{2}\u{2}\u{709}\u{707}\u{3}\u{2}\u{2}\u{2}\u{709}\u{70A}'
  	'\u{3}\u{2}\u{2}\u{2}\u{70A}\u{11B}\u{3}\u{2}\u{2}\u{2}\u{70B}\u{709}'
  	'\u{3}\u{2}\u{2}\u{2}\u{70C}\u{70D}\u{7}\u{8F}\u{2}\u{2}\u{70D}\u{70E}'
  	'\u{5}\u{10C}\u{87}\u{2}\u{70E}\u{70F}\u{7}\u{90}\u{2}\u{2}\u{70F}\u{71F}'
  	'\u{3}\u{2}\u{2}\u{2}\u{710}\u{712}\u{7}\u{8B}\u{2}\u{2}\u{711}\u{713}'
  	'\u{5}\u{11E}\u{90}\u{2}\u{712}\u{711}\u{3}\u{2}\u{2}\u{2}\u{712}\u{713}'
  	'\u{3}\u{2}\u{2}\u{2}\u{713}\u{714}\u{3}\u{2}\u{2}\u{2}\u{714}\u{71F}'
  	'\u{7}\u{8C}\u{2}\u{2}\u{715}\u{718}\u{7}\u{8B}\u{2}\u{2}\u{716}\u{719}'
  	'\u{7}\u{92}\u{2}\u{2}\u{717}\u{719}\u{A}\u{15}\u{2}\u{2}\u{718}\u{716}'
  	'\u{3}\u{2}\u{2}\u{2}\u{718}\u{717}\u{3}\u{2}\u{2}\u{2}\u{719}\u{71A}'
  	'\u{3}\u{2}\u{2}\u{2}\u{71A}\u{718}\u{3}\u{2}\u{2}\u{2}\u{71A}\u{71B}'
  	'\u{3}\u{2}\u{2}\u{2}\u{71B}\u{71C}\u{3}\u{2}\u{2}\u{2}\u{71C}\u{71F}'
  	'\u{7}\u{8C}\u{2}\u{2}\u{71D}\u{71F}\u{9}\u{12}\u{2}\u{2}\u{71E}\u{70C}'
  	'\u{3}\u{2}\u{2}\u{2}\u{71E}\u{710}\u{3}\u{2}\u{2}\u{2}\u{71E}\u{715}'
  	'\u{3}\u{2}\u{2}\u{2}\u{71E}\u{71D}\u{3}\u{2}\u{2}\u{2}\u{71F}\u{11D}'
  	'\u{3}\u{2}\u{2}\u{2}\u{720}\u{725}\u{5}\u{120}\u{91}\u{2}\u{721}\u{722}'
  	'\u{7}\u{92}\u{2}\u{2}\u{722}\u{724}\u{5}\u{120}\u{91}\u{2}\u{723}\u{721}'
  	'\u{3}\u{2}\u{2}\u{2}\u{724}\u{727}\u{3}\u{2}\u{2}\u{2}\u{725}\u{723}'
  	'\u{3}\u{2}\u{2}\u{2}\u{725}\u{726}\u{3}\u{2}\u{2}\u{2}\u{726}\u{11F}'
  	'\u{3}\u{2}\u{2}\u{2}\u{727}\u{725}\u{3}\u{2}\u{2}\u{2}\u{728}\u{72B}'
  	'\u{5}\u{10C}\u{87}\u{2}\u{729}\u{72B}\u{5}\u{BE}\u{60}\u{2}\u{72A}\u{728}'
  	'\u{3}\u{2}\u{2}\u{2}\u{72A}\u{729}\u{3}\u{2}\u{2}\u{2}\u{72B}\u{121}'
  	'\u{3}\u{2}\u{2}\u{2}\u{72C}\u{734}\u{5}\u{12A}\u{96}\u{2}\u{72D}\u{72E}'
  	'\u{7}\u{8B}\u{2}\u{2}\u{72E}\u{731}\u{9}\u{16}\u{2}\u{2}\u{72F}\u{730}'
  	'\u{7}\u{92}\u{2}\u{2}\u{730}\u{732}\u{9}\u{16}\u{2}\u{2}\u{731}\u{72F}'
  	'\u{3}\u{2}\u{2}\u{2}\u{731}\u{732}\u{3}\u{2}\u{2}\u{2}\u{732}\u{733}'
  	'\u{3}\u{2}\u{2}\u{2}\u{733}\u{735}\u{7}\u{8C}\u{2}\u{2}\u{734}\u{72D}'
  	'\u{3}\u{2}\u{2}\u{2}\u{734}\u{735}\u{3}\u{2}\u{2}\u{2}\u{735}\u{123}'
  	'\u{3}\u{2}\u{2}\u{2}\u{736}\u{746}\u{5}\u{12A}\u{96}\u{2}\u{737}\u{746}'
  	'\u{5}\u{126}\u{94}\u{2}\u{738}\u{746}\u{5}\u{128}\u{95}\u{2}\u{739}\u{73A}'
  	'\u{7}\u{8B}\u{2}\u{2}\u{73A}\u{73B}\u{5}\u{10C}\u{87}\u{2}\u{73B}\u{73C}'
  	'\u{7}\u{8C}\u{2}\u{2}\u{73C}\u{746}\u{3}\u{2}\u{2}\u{2}\u{73D}\u{746}'
  	'\u{5}\u{5E}\u{30}\u{2}\u{73E}\u{746}\u{5}\u{68}\u{35}\u{2}\u{73F}\u{746}'
  	'\u{5}\u{6C}\u{37}\u{2}\u{740}\u{746}\u{5}\u{6E}\u{38}\u{2}\u{741}\u{746}'
  	'\u{5}\u{50}\u{29}\u{2}\u{742}\u{746}\u{5}\u{54}\u{2B}\u{2}\u{743}\u{746}'
  	'\u{5}\u{56}\u{2C}\u{2}\u{744}\u{746}\u{5}\u{5C}\u{2F}\u{2}\u{745}\u{736}'
  	'\u{3}\u{2}\u{2}\u{2}\u{745}\u{737}\u{3}\u{2}\u{2}\u{2}\u{745}\u{738}'
  	'\u{3}\u{2}\u{2}\u{2}\u{745}\u{739}\u{3}\u{2}\u{2}\u{2}\u{745}\u{73D}'
  	'\u{3}\u{2}\u{2}\u{2}\u{745}\u{73E}\u{3}\u{2}\u{2}\u{2}\u{745}\u{73F}'
  	'\u{3}\u{2}\u{2}\u{2}\u{745}\u{740}\u{3}\u{2}\u{2}\u{2}\u{745}\u{741}'
  	'\u{3}\u{2}\u{2}\u{2}\u{745}\u{742}\u{3}\u{2}\u{2}\u{2}\u{745}\u{743}'
  	'\u{3}\u{2}\u{2}\u{2}\u{745}\u{744}\u{3}\u{2}\u{2}\u{2}\u{746}\u{125}'
  	'\u{3}\u{2}\u{2}\u{2}\u{747}\u{75A}\u{7}\u{BA}\u{2}\u{2}\u{748}\u{75A}'
  	'\u{7}\u{BB}\u{2}\u{2}\u{749}\u{75A}\u{7}\u{BC}\u{2}\u{2}\u{74A}\u{74C}'
  	'\u{9}\u{E}\u{2}\u{2}\u{74B}\u{74A}\u{3}\u{2}\u{2}\u{2}\u{74B}\u{74C}'
  	'\u{3}\u{2}\u{2}\u{2}\u{74C}\u{74D}\u{3}\u{2}\u{2}\u{2}\u{74D}\u{75A}'
  	'\u{7}\u{BD}\u{2}\u{2}\u{74E}\u{750}\u{9}\u{E}\u{2}\u{2}\u{74F}\u{74E}'
  	'\u{3}\u{2}\u{2}\u{2}\u{74F}\u{750}\u{3}\u{2}\u{2}\u{2}\u{750}\u{751}'
  	'\u{3}\u{2}\u{2}\u{2}\u{751}\u{75A}\u{7}\u{BE}\u{2}\u{2}\u{752}\u{75A}'
  	'\u{7}\u{B8}\u{2}\u{2}\u{753}\u{75A}\u{7}\u{32}\u{2}\u{2}\u{754}\u{75A}'
  	'\u{7}\u{34}\u{2}\u{2}\u{755}\u{75A}\u{7}\u{3B}\u{2}\u{2}\u{756}\u{75A}'
  	'\u{7}\u{33}\u{2}\u{2}\u{757}\u{75A}\u{7}\u{28}\u{2}\u{2}\u{758}\u{75A}'
  	'\u{7}\u{29}\u{2}\u{2}\u{759}\u{747}\u{3}\u{2}\u{2}\u{2}\u{759}\u{748}'
  	'\u{3}\u{2}\u{2}\u{2}\u{759}\u{749}\u{3}\u{2}\u{2}\u{2}\u{759}\u{74B}'
  	'\u{3}\u{2}\u{2}\u{2}\u{759}\u{74F}\u{3}\u{2}\u{2}\u{2}\u{759}\u{752}'
  	'\u{3}\u{2}\u{2}\u{2}\u{759}\u{753}\u{3}\u{2}\u{2}\u{2}\u{759}\u{754}'
  	'\u{3}\u{2}\u{2}\u{2}\u{759}\u{755}\u{3}\u{2}\u{2}\u{2}\u{759}\u{756}'
  	'\u{3}\u{2}\u{2}\u{2}\u{759}\u{757}\u{3}\u{2}\u{2}\u{2}\u{759}\u{758}'
  	'\u{3}\u{2}\u{2}\u{2}\u{75A}\u{127}\u{3}\u{2}\u{2}\u{2}\u{75B}\u{75F}'
  	'\u{7}\u{B9}\u{2}\u{2}\u{75C}\u{75E}\u{9}\u{17}\u{2}\u{2}\u{75D}\u{75C}'
  	'\u{3}\u{2}\u{2}\u{2}\u{75E}\u{761}\u{3}\u{2}\u{2}\u{2}\u{75F}\u{75D}'
  	'\u{3}\u{2}\u{2}\u{2}\u{75F}\u{760}\u{3}\u{2}\u{2}\u{2}\u{760}\u{762}'
  	'\u{3}\u{2}\u{2}\u{2}\u{761}\u{75F}\u{3}\u{2}\u{2}\u{2}\u{762}\u{764}'
  	'\u{7}\u{C6}\u{2}\u{2}\u{763}\u{75B}\u{3}\u{2}\u{2}\u{2}\u{764}\u{765}'
  	'\u{3}\u{2}\u{2}\u{2}\u{765}\u{763}\u{3}\u{2}\u{2}\u{2}\u{765}\u{766}'
  	'\u{3}\u{2}\u{2}\u{2}\u{766}\u{129}\u{3}\u{2}\u{2}\u{2}\u{767}\u{768}'
  	'\u{9}\u{18}\u{2}\u{2}\u{768}\u{12B}\u{3}\u{2}\u{2}\u{2}\u{111}\u{12F}'
  	'\u{13F}\u{147}\u{14A}\u{152}\u{155}\u{159}\u{15B}\u{162}\u{168}\u{16B}'
  	'\u{16E}\u{174}\u{176}\u{17D}\u{184}\u{187}\u{18A}\u{192}\u{195}\u{198}'
  	'\u{1A2}\u{1AC}\u{1B0}\u{1B2}\u{1BB}\u{1C0}\u{1C9}\u{1CF}\u{1D1}\u{1DC}'
  	'\u{1E4}\u{1EE}\u{1F6}\u{1F9}\u{1FC}\u{205}\u{21C}\u{223}\u{228}\u{22A}'
  	'\u{230}\u{239}\u{23F}\u{241}\u{24A}\u{24C}\u{255}\u{25A}\u{25C}\u{266}'
  	'\u{268}\u{271}\u{275}\u{278}\u{280}\u{284}\u{286}\u{289}\u{28F}\u{293}'
  	'\u{299}\u{2A7}\u{2AE}\u{2B4}\u{2B7}\u{2BB}\u{2C1}\u{2C5}\u{2CD}\u{2D0}'
  	'\u{2D7}\u{2E3}\u{2E7}\u{2E9}\u{2F5}\u{2F7}\u{303}\u{305}\u{30A}\u{310}'
  	'\u{313}\u{319}\u{31D}\u{320}\u{323}\u{32E}\u{334}\u{336}\u{339}\u{341}'
  	'\u{346}\u{34C}\u{355}\u{35A}\u{35C}\u{372}\u{379}\u{37E}\u{392}\u{394}'
  	'\u{39C}\u{39E}\u{3A4}\u{3A9}\u{3AE}\u{3B1}\u{3B6}\u{3B9}\u{3BF}\u{3C4}'
  	'\u{3C8}\u{3CC}\u{3D0}\u{3D9}\u{3E0}\u{3E7}\u{3ED}\u{3F0}\u{3F4}\u{3FD}'
  	'\u{3FF}\u{403}\u{407}\u{40B}\u{40D}\u{413}\u{419}\u{41D}\u{41F}\u{425}'
  	'\u{431}\u{435}\u{437}\u{441}\u{445}\u{44E}\u{450}\u{456}\u{458}\u{45D}'
  	'\u{45F}\u{469}\u{474}\u{47A}\u{47C}\u{481}\u{486}\u{48C}\u{490}\u{496}'
  	'\u{49A}\u{49C}\u{4A3}\u{4A5}\u{4AD}\u{4BB}\u{4C2}\u{4C9}\u{4CC}\u{4D8}'
  	'\u{4DD}\u{4E1}\u{4E5}\u{4E9}\u{4F0}\u{4F6}\u{4FD}\u{504}\u{50B}\u{50F}'
  	'\u{514}\u{516}\u{51B}\u{51F}\u{526}\u{52B}\u{531}\u{534}\u{538}\u{53C}'
  	'\u{543}\u{547}\u{54A}\u{555}\u{55E}\u{562}\u{564}\u{569}\u{56D}\u{572}'
  	'\u{577}\u{579}\u{585}\u{589}\u{58B}\u{594}\u{598}\u{59C}\u{5A0}\u{5A4}'
  	'\u{5A8}\u{5AE}\u{5B2}\u{5B7}\u{5B9}\u{5BD}\u{5C2}\u{5C5}\u{5CC}\u{5D1}'
  	'\u{5D5}\u{5D8}\u{5DE}\u{5E2}\u{5E6}\u{5EA}\u{5EE}\u{5F2}\u{5F6}\u{5FA}'
  	'\u{5FE}\u{602}\u{605}\u{60E}\u{613}\u{615}\u{621}\u{624}\u{630}\u{638}'
  	'\u{63D}\u{645}\u{64B}\u{651}\u{664}\u{668}\u{66C}\u{675}\u{67C}\u{687}'
  	'\u{689}\u{690}\u{69D}\u{6AA}\u{6C5}\u{6C9}\u{6CB}\u{6D7}\u{6D9}\u{6DE}'
  	'\u{6E2}\u{6EB}\u{6F2}\u{6FB}\u{704}\u{709}\u{712}\u{718}\u{71A}\u{71E}'
  	'\u{725}\u{72A}\u{731}\u{734}\u{745}\u{74B}\u{74F}\u{759}\u{75F}\u{765}';
  static final ATN _ATN =
      ATNDeserializer().deserialize(_serializedATN.codeUnits);
}
class TranslationUnitContext extends ParserRuleContext {
  TerminalNode EOF() => getToken(ObjectiveCParser.TOKEN_EOF, 0);
  List<TopLevelDeclarationContext> topLevelDeclarations() => getRuleContexts<TopLevelDeclarationContext>();
  TopLevelDeclarationContext topLevelDeclaration(int i) => getRuleContext<TopLevelDeclarationContext>(i);
  TranslationUnitContext([ParserRuleContext parent, int invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_translationUnit;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is ObjectiveCParserListener) listener.enterTranslationUnit(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is ObjectiveCParserListener) listener.exitTranslationUnit(this);
  }
}

class TopLevelDeclarationContext extends ParserRuleContext {
  ImportDeclarationContext importDeclaration() => getRuleContext<ImportDeclarationContext>(0);
  FunctionDeclarationContext functionDeclaration() => getRuleContext<FunctionDeclarationContext>(0);
  DeclarationContext declaration() => getRuleContext<DeclarationContext>(0);
  ClassInterfaceContext classInterface() => getRuleContext<ClassInterfaceContext>(0);
  ClassImplementationContext classImplementation() => getRuleContext<ClassImplementationContext>(0);
  CategoryInterfaceContext categoryInterface() => getRuleContext<CategoryInterfaceContext>(0);
  CategoryImplementationContext categoryImplementation() => getRuleContext<CategoryImplementationContext>(0);
  ProtocolDeclarationContext protocolDeclaration() => getRuleContext<ProtocolDeclarationContext>(0);
  ProtocolDeclarationListContext protocolDeclarationList() => getRuleContext<ProtocolDeclarationListContext>(0);
  ClassDeclarationListContext classDeclarationList() => getRuleContext<ClassDeclarationListContext>(0);
  FunctionDefinitionContext functionDefinition() => getRuleContext<FunctionDefinitionContext>(0);
  TopLevelDeclarationContext([ParserRuleContext parent, int invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_topLevelDeclaration;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is ObjectiveCParserListener) listener.enterTopLevelDeclaration(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is ObjectiveCParserListener) listener.exitTopLevelDeclaration(this);
  }
}

class ImportDeclarationContext extends ParserRuleContext {
  IdentifierContext frameworkName;
  IdentifierContext headerName;
  TerminalNode IMPORT() => getToken(ObjectiveCParser.TOKEN_IMPORT, 0);
  StringLiteralContext stringLiteral() => getRuleContext<StringLiteralContext>(0);
  TerminalNode SEMI() => getToken(ObjectiveCParser.TOKEN_SEMI, 0);
  TerminalNode LT() => getToken(ObjectiveCParser.TOKEN_LT, 0);
  TerminalNode DOT() => getToken(ObjectiveCParser.TOKEN_DOT, 0);
  TerminalNode IDENTIFIER() => getToken(ObjectiveCParser.TOKEN_IDENTIFIER, 0);
  TerminalNode GT() => getToken(ObjectiveCParser.TOKEN_GT, 0);
  List<IdentifierContext> identifiers() => getRuleContexts<IdentifierContext>();
  IdentifierContext identifier(int i) => getRuleContext<IdentifierContext>(i);
  TerminalNode DIV() => getToken(ObjectiveCParser.TOKEN_DIV, 0);
  ImportDeclarationContext([ParserRuleContext parent, int invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_importDeclaration;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is ObjectiveCParserListener) listener.enterImportDeclaration(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is ObjectiveCParserListener) listener.exitImportDeclaration(this);
  }
}

class ClassInterfaceContext extends ParserRuleContext {
  GenericTypeSpecifierContext className;
  IdentifierContext superclassName;
  ProtocolListContext protocols;
  TerminalNode INTERFACE() => getToken(ObjectiveCParser.TOKEN_INTERFACE, 0);
  TerminalNode END() => getToken(ObjectiveCParser.TOKEN_END, 0);
  GenericTypeSpecifierContext genericTypeSpecifier() => getRuleContext<GenericTypeSpecifierContext>(0);
  TerminalNode IB_DESIGNABLE() => getToken(ObjectiveCParser.TOKEN_IB_DESIGNABLE, 0);
  List<MacroContext> macros() => getRuleContexts<MacroContext>();
  MacroContext macro(int i) => getRuleContext<MacroContext>(i);
  List<AttributeSpecifierContext> attributeSpecifiers() => getRuleContexts<AttributeSpecifierContext>();
  AttributeSpecifierContext attributeSpecifier(int i) => getRuleContext<AttributeSpecifierContext>(i);
  TerminalNode COLON() => getToken(ObjectiveCParser.TOKEN_COLON, 0);
  TerminalNode LT() => getToken(ObjectiveCParser.TOKEN_LT, 0);
  TerminalNode GT() => getToken(ObjectiveCParser.TOKEN_GT, 0);
  InstanceVariablesContext instanceVariables() => getRuleContext<InstanceVariablesContext>(0);
  InterfaceDeclarationListContext interfaceDeclarationList() => getRuleContext<InterfaceDeclarationListContext>(0);
  IdentifierContext identifier() => getRuleContext<IdentifierContext>(0);
  ProtocolListContext protocolList() => getRuleContext<ProtocolListContext>(0);
  ClassInterfaceContext([ParserRuleContext parent, int invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_classInterface;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is ObjectiveCParserListener) listener.enterClassInterface(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is ObjectiveCParserListener) listener.exitClassInterface(this);
  }
}

class CategoryInterfaceContext extends ParserRuleContext {
  GenericTypeSpecifierContext className;
  IdentifierContext categoryName;
  ProtocolListContext protocols;
  TerminalNode INTERFACE() => getToken(ObjectiveCParser.TOKEN_INTERFACE, 0);
  TerminalNode LP() => getToken(ObjectiveCParser.TOKEN_LP, 0);
  TerminalNode RP() => getToken(ObjectiveCParser.TOKEN_RP, 0);
  TerminalNode END() => getToken(ObjectiveCParser.TOKEN_END, 0);
  GenericTypeSpecifierContext genericTypeSpecifier() => getRuleContext<GenericTypeSpecifierContext>(0);
  List<MacroContext> macros() => getRuleContexts<MacroContext>();
  MacroContext macro(int i) => getRuleContext<MacroContext>(i);
  List<AttributeSpecifierContext> attributeSpecifiers() => getRuleContexts<AttributeSpecifierContext>();
  AttributeSpecifierContext attributeSpecifier(int i) => getRuleContext<AttributeSpecifierContext>(i);
  TerminalNode LT() => getToken(ObjectiveCParser.TOKEN_LT, 0);
  TerminalNode GT() => getToken(ObjectiveCParser.TOKEN_GT, 0);
  InstanceVariablesContext instanceVariables() => getRuleContext<InstanceVariablesContext>(0);
  InterfaceDeclarationListContext interfaceDeclarationList() => getRuleContext<InterfaceDeclarationListContext>(0);
  IdentifierContext identifier() => getRuleContext<IdentifierContext>(0);
  ProtocolListContext protocolList() => getRuleContext<ProtocolListContext>(0);
  CategoryInterfaceContext([ParserRuleContext parent, int invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_categoryInterface;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is ObjectiveCParserListener) listener.enterCategoryInterface(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is ObjectiveCParserListener) listener.exitCategoryInterface(this);
  }
}

class ClassImplementationContext extends ParserRuleContext {
  GenericTypeSpecifierContext className;
  IdentifierContext superclassName;
  TerminalNode IMPLEMENTATION() => getToken(ObjectiveCParser.TOKEN_IMPLEMENTATION, 0);
  TerminalNode END() => getToken(ObjectiveCParser.TOKEN_END, 0);
  GenericTypeSpecifierContext genericTypeSpecifier() => getRuleContext<GenericTypeSpecifierContext>(0);
  TerminalNode COLON() => getToken(ObjectiveCParser.TOKEN_COLON, 0);
  InstanceVariablesContext instanceVariables() => getRuleContext<InstanceVariablesContext>(0);
  ImplementationDefinitionListContext implementationDefinitionList() => getRuleContext<ImplementationDefinitionListContext>(0);
  IdentifierContext identifier() => getRuleContext<IdentifierContext>(0);
  ClassImplementationContext([ParserRuleContext parent, int invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_classImplementation;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is ObjectiveCParserListener) listener.enterClassImplementation(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is ObjectiveCParserListener) listener.exitClassImplementation(this);
  }
}

class CategoryImplementationContext extends ParserRuleContext {
  GenericTypeSpecifierContext className;
  IdentifierContext categoryName;
  TerminalNode IMPLEMENTATION() => getToken(ObjectiveCParser.TOKEN_IMPLEMENTATION, 0);
  TerminalNode LP() => getToken(ObjectiveCParser.TOKEN_LP, 0);
  TerminalNode RP() => getToken(ObjectiveCParser.TOKEN_RP, 0);
  TerminalNode END() => getToken(ObjectiveCParser.TOKEN_END, 0);
  GenericTypeSpecifierContext genericTypeSpecifier() => getRuleContext<GenericTypeSpecifierContext>(0);
  IdentifierContext identifier() => getRuleContext<IdentifierContext>(0);
  ImplementationDefinitionListContext implementationDefinitionList() => getRuleContext<ImplementationDefinitionListContext>(0);
  CategoryImplementationContext([ParserRuleContext parent, int invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_categoryImplementation;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is ObjectiveCParserListener) listener.enterCategoryImplementation(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is ObjectiveCParserListener) listener.exitCategoryImplementation(this);
  }
}

class GenericTypeSpecifierContext extends ParserRuleContext {
  IdentifierContext identifier() => getRuleContext<IdentifierContext>(0);
  GenericsSpecifierContext genericsSpecifier() => getRuleContext<GenericsSpecifierContext>(0);
  TerminalNode LT() => getToken(ObjectiveCParser.TOKEN_LT, 0);
  ProtocolListContext protocolList() => getRuleContext<ProtocolListContext>(0);
  TerminalNode GT() => getToken(ObjectiveCParser.TOKEN_GT, 0);
  GenericTypeSpecifierContext([ParserRuleContext parent, int invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_genericTypeSpecifier;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is ObjectiveCParserListener) listener.enterGenericTypeSpecifier(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is ObjectiveCParserListener) listener.exitGenericTypeSpecifier(this);
  }
}

class ProtocolDeclarationContext extends ParserRuleContext {
  ProtocolNameContext name;
  ProtocolListContext protocols;
  TerminalNode PROTOCOL() => getToken(ObjectiveCParser.TOKEN_PROTOCOL, 0);
  TerminalNode END() => getToken(ObjectiveCParser.TOKEN_END, 0);
  ProtocolNameContext protocolName() => getRuleContext<ProtocolNameContext>(0);
  List<MacroContext> macros() => getRuleContexts<MacroContext>();
  MacroContext macro(int i) => getRuleContext<MacroContext>(i);
  List<AttributeSpecifierContext> attributeSpecifiers() => getRuleContexts<AttributeSpecifierContext>();
  AttributeSpecifierContext attributeSpecifier(int i) => getRuleContext<AttributeSpecifierContext>(i);
  TerminalNode LT() => getToken(ObjectiveCParser.TOKEN_LT, 0);
  TerminalNode GT() => getToken(ObjectiveCParser.TOKEN_GT, 0);
  List<ProtocolDeclarationSectionContext> protocolDeclarationSections() => getRuleContexts<ProtocolDeclarationSectionContext>();
  ProtocolDeclarationSectionContext protocolDeclarationSection(int i) => getRuleContext<ProtocolDeclarationSectionContext>(i);
  ProtocolListContext protocolList() => getRuleContext<ProtocolListContext>(0);
  ProtocolDeclarationContext([ParserRuleContext parent, int invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_protocolDeclaration;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is ObjectiveCParserListener) listener.enterProtocolDeclaration(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is ObjectiveCParserListener) listener.exitProtocolDeclaration(this);
  }
}

class ProtocolDeclarationSectionContext extends ParserRuleContext {
  Token modifier;
  TerminalNode REQUIRED() => getToken(ObjectiveCParser.TOKEN_REQUIRED, 0);
  TerminalNode OPTIONAL() => getToken(ObjectiveCParser.TOKEN_OPTIONAL, 0);
  List<InterfaceDeclarationListContext> interfaceDeclarationLists() => getRuleContexts<InterfaceDeclarationListContext>();
  InterfaceDeclarationListContext interfaceDeclarationList(int i) => getRuleContext<InterfaceDeclarationListContext>(i);
  ProtocolDeclarationSectionContext([ParserRuleContext parent, int invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_protocolDeclarationSection;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is ObjectiveCParserListener) listener.enterProtocolDeclarationSection(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is ObjectiveCParserListener) listener.exitProtocolDeclarationSection(this);
  }
}

class ProtocolDeclarationListContext extends ParserRuleContext {
  TerminalNode PROTOCOL() => getToken(ObjectiveCParser.TOKEN_PROTOCOL, 0);
  ProtocolListContext protocolList() => getRuleContext<ProtocolListContext>(0);
  TerminalNode SEMI() => getToken(ObjectiveCParser.TOKEN_SEMI, 0);
  ProtocolDeclarationListContext([ParserRuleContext parent, int invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_protocolDeclarationList;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is ObjectiveCParserListener) listener.enterProtocolDeclarationList(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is ObjectiveCParserListener) listener.exitProtocolDeclarationList(this);
  }
}

class ClassDeclarationContext extends ParserRuleContext {
  IdentifierContext identifier() => getRuleContext<IdentifierContext>(0);
  TerminalNode LT() => getToken(ObjectiveCParser.TOKEN_LT, 0);
  ProtocolListContext protocolList() => getRuleContext<ProtocolListContext>(0);
  TerminalNode GT() => getToken(ObjectiveCParser.TOKEN_GT, 0);
  ClassDeclarationContext([ParserRuleContext parent, int invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_classDeclaration;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is ObjectiveCParserListener) listener.enterClassDeclaration(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is ObjectiveCParserListener) listener.exitClassDeclaration(this);
  }
}

class ClassDeclarationListContext extends ParserRuleContext {
  TerminalNode CLASS() => getToken(ObjectiveCParser.TOKEN_CLASS, 0);
  List<ClassDeclarationContext> classDeclarations() => getRuleContexts<ClassDeclarationContext>();
  ClassDeclarationContext classDeclaration(int i) => getRuleContext<ClassDeclarationContext>(i);
  TerminalNode SEMI() => getToken(ObjectiveCParser.TOKEN_SEMI, 0);
  List<TerminalNode> COMMAs() => getTokens(ObjectiveCParser.TOKEN_COMMA);
  TerminalNode COMMA(int i) => getToken(ObjectiveCParser.TOKEN_COMMA, i);
  ClassDeclarationListContext([ParserRuleContext parent, int invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_classDeclarationList;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is ObjectiveCParserListener) listener.enterClassDeclarationList(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is ObjectiveCParserListener) listener.exitClassDeclarationList(this);
  }
}

class ProtocolListContext extends ParserRuleContext {
  ProtocolNameContext _protocolName;
  List<ProtocolNameContext> list = List<ProtocolNameContext>();
  List<ProtocolNameContext> protocolNames() => getRuleContexts<ProtocolNameContext>();
  ProtocolNameContext protocolName(int i) => getRuleContext<ProtocolNameContext>(i);
  List<TerminalNode> COMMAs() => getTokens(ObjectiveCParser.TOKEN_COMMA);
  TerminalNode COMMA(int i) => getToken(ObjectiveCParser.TOKEN_COMMA, i);
  ProtocolListContext([ParserRuleContext parent, int invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_protocolList;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is ObjectiveCParserListener) listener.enterProtocolList(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is ObjectiveCParserListener) listener.exitProtocolList(this);
  }
}

class PropertyDeclarationContext extends ParserRuleContext {
  TerminalNode PROPERTY() => getToken(ObjectiveCParser.TOKEN_PROPERTY, 0);
  FieldDeclarationContext fieldDeclaration() => getRuleContext<FieldDeclarationContext>(0);
  TerminalNode LP() => getToken(ObjectiveCParser.TOKEN_LP, 0);
  PropertyAttributesListContext propertyAttributesList() => getRuleContext<PropertyAttributesListContext>(0);
  TerminalNode RP() => getToken(ObjectiveCParser.TOKEN_RP, 0);
  IbOutletQualifierContext ibOutletQualifier() => getRuleContext<IbOutletQualifierContext>(0);
  TerminalNode IB_INSPECTABLE() => getToken(ObjectiveCParser.TOKEN_IB_INSPECTABLE, 0);
  PropertyDeclarationContext([ParserRuleContext parent, int invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_propertyDeclaration;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is ObjectiveCParserListener) listener.enterPropertyDeclaration(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is ObjectiveCParserListener) listener.exitPropertyDeclaration(this);
  }
}

class PropertyAttributesListContext extends ParserRuleContext {
  List<PropertyAttributeContext> propertyAttributes() => getRuleContexts<PropertyAttributeContext>();
  PropertyAttributeContext propertyAttribute(int i) => getRuleContext<PropertyAttributeContext>(i);
  List<TerminalNode> COMMAs() => getTokens(ObjectiveCParser.TOKEN_COMMA);
  TerminalNode COMMA(int i) => getToken(ObjectiveCParser.TOKEN_COMMA, i);
  PropertyAttributesListContext([ParserRuleContext parent, int invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_propertyAttributesList;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is ObjectiveCParserListener) listener.enterPropertyAttributesList(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is ObjectiveCParserListener) listener.exitPropertyAttributesList(this);
  }
}

class PropertyAttributeContext extends ParserRuleContext {
  TerminalNode ATOMIC() => getToken(ObjectiveCParser.TOKEN_ATOMIC, 0);
  TerminalNode NONATOMIC() => getToken(ObjectiveCParser.TOKEN_NONATOMIC, 0);
  TerminalNode STRONG() => getToken(ObjectiveCParser.TOKEN_STRONG, 0);
  TerminalNode WEAK() => getToken(ObjectiveCParser.TOKEN_WEAK, 0);
  TerminalNode RETAIN() => getToken(ObjectiveCParser.TOKEN_RETAIN, 0);
  TerminalNode ASSIGN() => getToken(ObjectiveCParser.TOKEN_ASSIGN, 0);
  TerminalNode UNSAFE_UNRETAINED() => getToken(ObjectiveCParser.TOKEN_UNSAFE_UNRETAINED, 0);
  TerminalNode COPY() => getToken(ObjectiveCParser.TOKEN_COPY, 0);
  TerminalNode READONLY() => getToken(ObjectiveCParser.TOKEN_READONLY, 0);
  TerminalNode READWRITE() => getToken(ObjectiveCParser.TOKEN_READWRITE, 0);
  TerminalNode GETTER() => getToken(ObjectiveCParser.TOKEN_GETTER, 0);
  TerminalNode ASSIGNMENT() => getToken(ObjectiveCParser.TOKEN_ASSIGNMENT, 0);
  IdentifierContext identifier() => getRuleContext<IdentifierContext>(0);
  TerminalNode SETTER() => getToken(ObjectiveCParser.TOKEN_SETTER, 0);
  TerminalNode COLON() => getToken(ObjectiveCParser.TOKEN_COLON, 0);
  NullabilitySpecifierContext nullabilitySpecifier() => getRuleContext<NullabilitySpecifierContext>(0);
  PropertyAttributeContext([ParserRuleContext parent, int invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_propertyAttribute;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is ObjectiveCParserListener) listener.enterPropertyAttribute(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is ObjectiveCParserListener) listener.exitPropertyAttribute(this);
  }
}

class ProtocolNameContext extends ParserRuleContext {
  TypeNameContext name;
  TerminalNode LT() => getToken(ObjectiveCParser.TOKEN_LT, 0);
  ProtocolListContext protocolList() => getRuleContext<ProtocolListContext>(0);
  TerminalNode GT() => getToken(ObjectiveCParser.TOKEN_GT, 0);
  TypeNameContext typeName() => getRuleContext<TypeNameContext>(0);
  TerminalNode COLON() => getToken(ObjectiveCParser.TOKEN_COLON, 0);
  TypeSpecifierContext typeSpecifier() => getRuleContext<TypeSpecifierContext>(0);
  TerminalNode COVARIANT() => getToken(ObjectiveCParser.TOKEN_COVARIANT, 0);
  TerminalNode CONTRAVARIANT() => getToken(ObjectiveCParser.TOKEN_CONTRAVARIANT, 0);
  ProtocolNameContext([ParserRuleContext parent, int invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_protocolName;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is ObjectiveCParserListener) listener.enterProtocolName(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is ObjectiveCParserListener) listener.exitProtocolName(this);
  }
}

class InstanceVariablesContext extends ParserRuleContext {
  TerminalNode LBRACE() => getToken(ObjectiveCParser.TOKEN_LBRACE, 0);
  TerminalNode RBRACE() => getToken(ObjectiveCParser.TOKEN_RBRACE, 0);
  List<VisibilitySectionContext> visibilitySections() => getRuleContexts<VisibilitySectionContext>();
  VisibilitySectionContext visibilitySection(int i) => getRuleContext<VisibilitySectionContext>(i);
  InstanceVariablesContext([ParserRuleContext parent, int invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_instanceVariables;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is ObjectiveCParserListener) listener.enterInstanceVariables(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is ObjectiveCParserListener) listener.exitInstanceVariables(this);
  }
}

class VisibilitySectionContext extends ParserRuleContext {
  AccessModifierContext accessModifier() => getRuleContext<AccessModifierContext>(0);
  List<FieldDeclarationContext> fieldDeclarations() => getRuleContexts<FieldDeclarationContext>();
  FieldDeclarationContext fieldDeclaration(int i) => getRuleContext<FieldDeclarationContext>(i);
  VisibilitySectionContext([ParserRuleContext parent, int invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_visibilitySection;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is ObjectiveCParserListener) listener.enterVisibilitySection(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is ObjectiveCParserListener) listener.exitVisibilitySection(this);
  }
}

class AccessModifierContext extends ParserRuleContext {
  TerminalNode PRIVATE() => getToken(ObjectiveCParser.TOKEN_PRIVATE, 0);
  TerminalNode PROTECTED() => getToken(ObjectiveCParser.TOKEN_PROTECTED, 0);
  TerminalNode PACKAGE() => getToken(ObjectiveCParser.TOKEN_PACKAGE, 0);
  TerminalNode PUBLIC() => getToken(ObjectiveCParser.TOKEN_PUBLIC, 0);
  AccessModifierContext([ParserRuleContext parent, int invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_accessModifier;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is ObjectiveCParserListener) listener.enterAccessModifier(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is ObjectiveCParserListener) listener.exitAccessModifier(this);
  }
}

class InterfaceDeclarationListContext extends ParserRuleContext {
  List<DeclarationContext> declarations() => getRuleContexts<DeclarationContext>();
  DeclarationContext declaration(int i) => getRuleContext<DeclarationContext>(i);
  List<ClassMethodDeclarationContext> classMethodDeclarations() => getRuleContexts<ClassMethodDeclarationContext>();
  ClassMethodDeclarationContext classMethodDeclaration(int i) => getRuleContext<ClassMethodDeclarationContext>(i);
  List<InstanceMethodDeclarationContext> instanceMethodDeclarations() => getRuleContexts<InstanceMethodDeclarationContext>();
  InstanceMethodDeclarationContext instanceMethodDeclaration(int i) => getRuleContext<InstanceMethodDeclarationContext>(i);
  List<PropertyDeclarationContext> propertyDeclarations() => getRuleContexts<PropertyDeclarationContext>();
  PropertyDeclarationContext propertyDeclaration(int i) => getRuleContext<PropertyDeclarationContext>(i);
  List<FunctionDeclarationContext> functionDeclarations() => getRuleContexts<FunctionDeclarationContext>();
  FunctionDeclarationContext functionDeclaration(int i) => getRuleContext<FunctionDeclarationContext>(i);
  InterfaceDeclarationListContext([ParserRuleContext parent, int invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_interfaceDeclarationList;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is ObjectiveCParserListener) listener.enterInterfaceDeclarationList(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is ObjectiveCParserListener) listener.exitInterfaceDeclarationList(this);
  }
}

class ClassMethodDeclarationContext extends ParserRuleContext {
  TerminalNode ADD() => getToken(ObjectiveCParser.TOKEN_ADD, 0);
  MethodDeclarationContext methodDeclaration() => getRuleContext<MethodDeclarationContext>(0);
  ClassMethodDeclarationContext([ParserRuleContext parent, int invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_classMethodDeclaration;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is ObjectiveCParserListener) listener.enterClassMethodDeclaration(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is ObjectiveCParserListener) listener.exitClassMethodDeclaration(this);
  }
}

class InstanceMethodDeclarationContext extends ParserRuleContext {
  TerminalNode SUB() => getToken(ObjectiveCParser.TOKEN_SUB, 0);
  MethodDeclarationContext methodDeclaration() => getRuleContext<MethodDeclarationContext>(0);
  InstanceMethodDeclarationContext([ParserRuleContext parent, int invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_instanceMethodDeclaration;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is ObjectiveCParserListener) listener.enterInstanceMethodDeclaration(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is ObjectiveCParserListener) listener.exitInstanceMethodDeclaration(this);
  }
}

class MethodDeclarationContext extends ParserRuleContext {
  MethodSelectorContext methodSelector() => getRuleContext<MethodSelectorContext>(0);
  TerminalNode SEMI() => getToken(ObjectiveCParser.TOKEN_SEMI, 0);
  MethodTypeContext methodType() => getRuleContext<MethodTypeContext>(0);
  List<MacroContext> macros() => getRuleContexts<MacroContext>();
  MacroContext macro(int i) => getRuleContext<MacroContext>(i);
  List<AttributeSpecifierContext> attributeSpecifiers() => getRuleContexts<AttributeSpecifierContext>();
  AttributeSpecifierContext attributeSpecifier(int i) => getRuleContext<AttributeSpecifierContext>(i);
  MethodDeclarationContext([ParserRuleContext parent, int invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_methodDeclaration;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is ObjectiveCParserListener) listener.enterMethodDeclaration(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is ObjectiveCParserListener) listener.exitMethodDeclaration(this);
  }
}

class ImplementationDefinitionListContext extends ParserRuleContext {
  List<FunctionDefinitionContext> functionDefinitions() => getRuleContexts<FunctionDefinitionContext>();
  FunctionDefinitionContext functionDefinition(int i) => getRuleContext<FunctionDefinitionContext>(i);
  List<DeclarationContext> declarations() => getRuleContexts<DeclarationContext>();
  DeclarationContext declaration(int i) => getRuleContext<DeclarationContext>(i);
  List<ClassMethodDefinitionContext> classMethodDefinitions() => getRuleContexts<ClassMethodDefinitionContext>();
  ClassMethodDefinitionContext classMethodDefinition(int i) => getRuleContext<ClassMethodDefinitionContext>(i);
  List<InstanceMethodDefinitionContext> instanceMethodDefinitions() => getRuleContexts<InstanceMethodDefinitionContext>();
  InstanceMethodDefinitionContext instanceMethodDefinition(int i) => getRuleContext<InstanceMethodDefinitionContext>(i);
  List<PropertyImplementationContext> propertyImplementations() => getRuleContexts<PropertyImplementationContext>();
  PropertyImplementationContext propertyImplementation(int i) => getRuleContext<PropertyImplementationContext>(i);
  ImplementationDefinitionListContext([ParserRuleContext parent, int invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_implementationDefinitionList;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is ObjectiveCParserListener) listener.enterImplementationDefinitionList(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is ObjectiveCParserListener) listener.exitImplementationDefinitionList(this);
  }
}

class ClassMethodDefinitionContext extends ParserRuleContext {
  TerminalNode ADD() => getToken(ObjectiveCParser.TOKEN_ADD, 0);
  MethodDefinitionContext methodDefinition() => getRuleContext<MethodDefinitionContext>(0);
  ClassMethodDefinitionContext([ParserRuleContext parent, int invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_classMethodDefinition;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is ObjectiveCParserListener) listener.enterClassMethodDefinition(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is ObjectiveCParserListener) listener.exitClassMethodDefinition(this);
  }
}

class InstanceMethodDefinitionContext extends ParserRuleContext {
  TerminalNode SUB() => getToken(ObjectiveCParser.TOKEN_SUB, 0);
  MethodDefinitionContext methodDefinition() => getRuleContext<MethodDefinitionContext>(0);
  InstanceMethodDefinitionContext([ParserRuleContext parent, int invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_instanceMethodDefinition;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is ObjectiveCParserListener) listener.enterInstanceMethodDefinition(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is ObjectiveCParserListener) listener.exitInstanceMethodDefinition(this);
  }
}

class MethodDefinitionContext extends ParserRuleContext {
  MethodSelectorContext methodSelector() => getRuleContext<MethodSelectorContext>(0);
  CompoundStatementContext compoundStatement() => getRuleContext<CompoundStatementContext>(0);
  MethodTypeContext methodType() => getRuleContext<MethodTypeContext>(0);
  InitDeclaratorListContext initDeclaratorList() => getRuleContext<InitDeclaratorListContext>(0);
  TerminalNode SEMI() => getToken(ObjectiveCParser.TOKEN_SEMI, 0);
  MethodDefinitionContext([ParserRuleContext parent, int invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_methodDefinition;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is ObjectiveCParserListener) listener.enterMethodDefinition(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is ObjectiveCParserListener) listener.exitMethodDefinition(this);
  }
}

class MethodSelectorContext extends ParserRuleContext {
  SelectorContext sel;
  SelectorContext selector() => getRuleContext<SelectorContext>(0);
  List<KeywordDeclaratorContext> keywordDeclarators() => getRuleContexts<KeywordDeclaratorContext>();
  KeywordDeclaratorContext keywordDeclarator(int i) => getRuleContext<KeywordDeclaratorContext>(i);
  TerminalNode COMMA() => getToken(ObjectiveCParser.TOKEN_COMMA, 0);
  TerminalNode ELIPSIS() => getToken(ObjectiveCParser.TOKEN_ELIPSIS, 0);
  MethodSelectorContext([ParserRuleContext parent, int invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_methodSelector;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is ObjectiveCParserListener) listener.enterMethodSelector(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is ObjectiveCParserListener) listener.exitMethodSelector(this);
  }
}

class KeywordDeclaratorContext extends ParserRuleContext {
  SelectorContext sel;
  MethodTypeContext _methodType;
  List<MethodTypeContext> types = List<MethodTypeContext>();
  IdentifierContext name;
  TerminalNode COLON() => getToken(ObjectiveCParser.TOKEN_COLON, 0);
  IdentifierContext identifier() => getRuleContext<IdentifierContext>(0);
  ArcBehaviourSpecifierContext arcBehaviourSpecifier() => getRuleContext<ArcBehaviourSpecifierContext>(0);
  SelectorContext selector() => getRuleContext<SelectorContext>(0);
  List<MethodTypeContext> methodTypes() => getRuleContexts<MethodTypeContext>();
  MethodTypeContext methodType(int i) => getRuleContext<MethodTypeContext>(i);
  KeywordDeclaratorContext([ParserRuleContext parent, int invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_keywordDeclarator;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is ObjectiveCParserListener) listener.enterKeywordDeclarator(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is ObjectiveCParserListener) listener.exitKeywordDeclarator(this);
  }
}

class SelectorContext extends ParserRuleContext {
  IdentifierContext identifier() => getRuleContext<IdentifierContext>(0);
  TerminalNode RETURN() => getToken(ObjectiveCParser.TOKEN_RETURN, 0);
  SelectorContext([ParserRuleContext parent, int invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_selector;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is ObjectiveCParserListener) listener.enterSelector(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is ObjectiveCParserListener) listener.exitSelector(this);
  }
}

class MethodTypeContext extends ParserRuleContext {
  TerminalNode LP() => getToken(ObjectiveCParser.TOKEN_LP, 0);
  TypeNameContext typeName() => getRuleContext<TypeNameContext>(0);
  TerminalNode RP() => getToken(ObjectiveCParser.TOKEN_RP, 0);
  MethodTypeContext([ParserRuleContext parent, int invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_methodType;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is ObjectiveCParserListener) listener.enterMethodType(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is ObjectiveCParserListener) listener.exitMethodType(this);
  }
}

class PropertyImplementationContext extends ParserRuleContext {
  TerminalNode SYNTHESIZE() => getToken(ObjectiveCParser.TOKEN_SYNTHESIZE, 0);
  PropertySynthesizeListContext propertySynthesizeList() => getRuleContext<PropertySynthesizeListContext>(0);
  TerminalNode SEMI() => getToken(ObjectiveCParser.TOKEN_SEMI, 0);
  TerminalNode DYNAMIC() => getToken(ObjectiveCParser.TOKEN_DYNAMIC, 0);
  PropertyImplementationContext([ParserRuleContext parent, int invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_propertyImplementation;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is ObjectiveCParserListener) listener.enterPropertyImplementation(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is ObjectiveCParserListener) listener.exitPropertyImplementation(this);
  }
}

class PropertySynthesizeListContext extends ParserRuleContext {
  List<PropertySynthesizeItemContext> propertySynthesizeItems() => getRuleContexts<PropertySynthesizeItemContext>();
  PropertySynthesizeItemContext propertySynthesizeItem(int i) => getRuleContext<PropertySynthesizeItemContext>(i);
  List<TerminalNode> COMMAs() => getTokens(ObjectiveCParser.TOKEN_COMMA);
  TerminalNode COMMA(int i) => getToken(ObjectiveCParser.TOKEN_COMMA, i);
  PropertySynthesizeListContext([ParserRuleContext parent, int invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_propertySynthesizeList;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is ObjectiveCParserListener) listener.enterPropertySynthesizeList(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is ObjectiveCParserListener) listener.exitPropertySynthesizeList(this);
  }
}

class PropertySynthesizeItemContext extends ParserRuleContext {
  List<IdentifierContext> identifiers() => getRuleContexts<IdentifierContext>();
  IdentifierContext identifier(int i) => getRuleContext<IdentifierContext>(i);
  TerminalNode ASSIGNMENT() => getToken(ObjectiveCParser.TOKEN_ASSIGNMENT, 0);
  PropertySynthesizeItemContext([ParserRuleContext parent, int invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_propertySynthesizeItem;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is ObjectiveCParserListener) listener.enterPropertySynthesizeItem(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is ObjectiveCParserListener) listener.exitPropertySynthesizeItem(this);
  }
}

class BlockTypeContext extends ParserRuleContext {
  List<TypeSpecifierContext> typeSpecifiers() => getRuleContexts<TypeSpecifierContext>();
  TypeSpecifierContext typeSpecifier(int i) => getRuleContext<TypeSpecifierContext>(i);
  TerminalNode LP() => getToken(ObjectiveCParser.TOKEN_LP, 0);
  TerminalNode BITXOR() => getToken(ObjectiveCParser.TOKEN_BITXOR, 0);
  TerminalNode RP() => getToken(ObjectiveCParser.TOKEN_RP, 0);
  List<NullabilitySpecifierContext> nullabilitySpecifiers() => getRuleContexts<NullabilitySpecifierContext>();
  NullabilitySpecifierContext nullabilitySpecifier(int i) => getRuleContext<NullabilitySpecifierContext>(i);
  BlockParametersContext blockParameters() => getRuleContext<BlockParametersContext>(0);
  BlockTypeContext([ParserRuleContext parent, int invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_blockType;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is ObjectiveCParserListener) listener.enterBlockType(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is ObjectiveCParserListener) listener.exitBlockType(this);
  }
}

class GenericsSpecifierContext extends ParserRuleContext {
  TerminalNode LT() => getToken(ObjectiveCParser.TOKEN_LT, 0);
  TerminalNode GT() => getToken(ObjectiveCParser.TOKEN_GT, 0);
  List<TypeSpecifierWithPrefixesContext> typeSpecifierWithPrefixess() => getRuleContexts<TypeSpecifierWithPrefixesContext>();
  TypeSpecifierWithPrefixesContext typeSpecifierWithPrefixes(int i) => getRuleContext<TypeSpecifierWithPrefixesContext>(i);
  List<TerminalNode> COMMAs() => getTokens(ObjectiveCParser.TOKEN_COMMA);
  TerminalNode COMMA(int i) => getToken(ObjectiveCParser.TOKEN_COMMA, i);
  GenericsSpecifierContext([ParserRuleContext parent, int invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_genericsSpecifier;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is ObjectiveCParserListener) listener.enterGenericsSpecifier(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is ObjectiveCParserListener) listener.exitGenericsSpecifier(this);
  }
}

class TypeSpecifierWithPrefixesContext extends ParserRuleContext {
  TypeSpecifierContext typeSpecifier() => getRuleContext<TypeSpecifierContext>(0);
  List<TypePrefixContext> typePrefixs() => getRuleContexts<TypePrefixContext>();
  TypePrefixContext typePrefix(int i) => getRuleContext<TypePrefixContext>(i);
  TypeSpecifierWithPrefixesContext([ParserRuleContext parent, int invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_typeSpecifierWithPrefixes;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is ObjectiveCParserListener) listener.enterTypeSpecifierWithPrefixes(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is ObjectiveCParserListener) listener.exitTypeSpecifierWithPrefixes(this);
  }
}

class DictionaryExpressionContext extends ParserRuleContext {
  TerminalNode AT() => getToken(ObjectiveCParser.TOKEN_AT, 0);
  TerminalNode LBRACE() => getToken(ObjectiveCParser.TOKEN_LBRACE, 0);
  TerminalNode RBRACE() => getToken(ObjectiveCParser.TOKEN_RBRACE, 0);
  List<DictionaryPairContext> dictionaryPairs() => getRuleContexts<DictionaryPairContext>();
  DictionaryPairContext dictionaryPair(int i) => getRuleContext<DictionaryPairContext>(i);
  List<TerminalNode> COMMAs() => getTokens(ObjectiveCParser.TOKEN_COMMA);
  TerminalNode COMMA(int i) => getToken(ObjectiveCParser.TOKEN_COMMA, i);
  DictionaryExpressionContext([ParserRuleContext parent, int invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_dictionaryExpression;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is ObjectiveCParserListener) listener.enterDictionaryExpression(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is ObjectiveCParserListener) listener.exitDictionaryExpression(this);
  }
}

class DictionaryPairContext extends ParserRuleContext {
  CastExpressionContext castExpression() => getRuleContext<CastExpressionContext>(0);
  TerminalNode COLON() => getToken(ObjectiveCParser.TOKEN_COLON, 0);
  ExpressionContext expression() => getRuleContext<ExpressionContext>(0);
  DictionaryPairContext([ParserRuleContext parent, int invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_dictionaryPair;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is ObjectiveCParserListener) listener.enterDictionaryPair(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is ObjectiveCParserListener) listener.exitDictionaryPair(this);
  }
}

class ArrayExpressionContext extends ParserRuleContext {
  TerminalNode AT() => getToken(ObjectiveCParser.TOKEN_AT, 0);
  TerminalNode LBRACK() => getToken(ObjectiveCParser.TOKEN_LBRACK, 0);
  TerminalNode RBRACK() => getToken(ObjectiveCParser.TOKEN_RBRACK, 0);
  ExpressionsContext expressions() => getRuleContext<ExpressionsContext>(0);
  TerminalNode COMMA() => getToken(ObjectiveCParser.TOKEN_COMMA, 0);
  ArrayExpressionContext([ParserRuleContext parent, int invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_arrayExpression;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is ObjectiveCParserListener) listener.enterArrayExpression(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is ObjectiveCParserListener) listener.exitArrayExpression(this);
  }
}

class BoxExpressionContext extends ParserRuleContext {
  TerminalNode AT() => getToken(ObjectiveCParser.TOKEN_AT, 0);
  TerminalNode LP() => getToken(ObjectiveCParser.TOKEN_LP, 0);
  ExpressionContext expression() => getRuleContext<ExpressionContext>(0);
  TerminalNode RP() => getToken(ObjectiveCParser.TOKEN_RP, 0);
  ConstantContext constant() => getRuleContext<ConstantContext>(0);
  IdentifierContext identifier() => getRuleContext<IdentifierContext>(0);
  BoxExpressionContext([ParserRuleContext parent, int invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_boxExpression;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is ObjectiveCParserListener) listener.enterBoxExpression(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is ObjectiveCParserListener) listener.exitBoxExpression(this);
  }
}

class BlockParametersContext extends ParserRuleContext {
  TypeVariableDeclaratorOrNameContext _typeVariableDeclaratorOrName;
  List<TypeVariableDeclaratorOrNameContext> types = List<TypeVariableDeclaratorOrNameContext>();
  TerminalNode LP() => getToken(ObjectiveCParser.TOKEN_LP, 0);
  TerminalNode RP() => getToken(ObjectiveCParser.TOKEN_RP, 0);
  TerminalNode VOID() => getToken(ObjectiveCParser.TOKEN_VOID, 0);
  List<TypeVariableDeclaratorOrNameContext> typeVariableDeclaratorOrNames() => getRuleContexts<TypeVariableDeclaratorOrNameContext>();
  TypeVariableDeclaratorOrNameContext typeVariableDeclaratorOrName(int i) => getRuleContext<TypeVariableDeclaratorOrNameContext>(i);
  List<TerminalNode> COMMAs() => getTokens(ObjectiveCParser.TOKEN_COMMA);
  TerminalNode COMMA(int i) => getToken(ObjectiveCParser.TOKEN_COMMA, i);
  BlockParametersContext([ParserRuleContext parent, int invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_blockParameters;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is ObjectiveCParserListener) listener.enterBlockParameters(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is ObjectiveCParserListener) listener.exitBlockParameters(this);
  }
}

class TypeVariableDeclaratorOrNameContext extends ParserRuleContext {
  TypeVariableDeclaratorContext typeVariableDeclarator() => getRuleContext<TypeVariableDeclaratorContext>(0);
  TypeNameContext typeName() => getRuleContext<TypeNameContext>(0);
  TypeVariableDeclaratorOrNameContext([ParserRuleContext parent, int invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_typeVariableDeclaratorOrName;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is ObjectiveCParserListener) listener.enterTypeVariableDeclaratorOrName(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is ObjectiveCParserListener) listener.exitTypeVariableDeclaratorOrName(this);
  }
}

class BlockExpressionContext extends ParserRuleContext {
  TerminalNode BITXOR() => getToken(ObjectiveCParser.TOKEN_BITXOR, 0);
  CompoundStatementContext compoundStatement() => getRuleContext<CompoundStatementContext>(0);
  TypeSpecifierContext typeSpecifier() => getRuleContext<TypeSpecifierContext>(0);
  NullabilitySpecifierContext nullabilitySpecifier() => getRuleContext<NullabilitySpecifierContext>(0);
  BlockParametersContext blockParameters() => getRuleContext<BlockParametersContext>(0);
  BlockExpressionContext([ParserRuleContext parent, int invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_blockExpression;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is ObjectiveCParserListener) listener.enterBlockExpression(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is ObjectiveCParserListener) listener.exitBlockExpression(this);
  }
}

class MessageExpressionContext extends ParserRuleContext {
  TerminalNode LBRACK() => getToken(ObjectiveCParser.TOKEN_LBRACK, 0);
  ReceiverContext receiver() => getRuleContext<ReceiverContext>(0);
  MessageSelectorContext messageSelector() => getRuleContext<MessageSelectorContext>(0);
  TerminalNode RBRACK() => getToken(ObjectiveCParser.TOKEN_RBRACK, 0);
  MessageExpressionContext([ParserRuleContext parent, int invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_messageExpression;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is ObjectiveCParserListener) listener.enterMessageExpression(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is ObjectiveCParserListener) listener.exitMessageExpression(this);
  }
}

class ReceiverContext extends ParserRuleContext {
  ExpressionContext expression() => getRuleContext<ExpressionContext>(0);
  TypeSpecifierContext typeSpecifier() => getRuleContext<TypeSpecifierContext>(0);
  ReceiverContext([ParserRuleContext parent, int invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_receiver;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is ObjectiveCParserListener) listener.enterReceiver(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is ObjectiveCParserListener) listener.exitReceiver(this);
  }
}

class MessageSelectorContext extends ParserRuleContext {
  SelectorContext selector() => getRuleContext<SelectorContext>(0);
  List<KeywordArgumentContext> keywordArguments() => getRuleContexts<KeywordArgumentContext>();
  KeywordArgumentContext keywordArgument(int i) => getRuleContext<KeywordArgumentContext>(i);
  MessageSelectorContext([ParserRuleContext parent, int invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_messageSelector;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is ObjectiveCParserListener) listener.enterMessageSelector(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is ObjectiveCParserListener) listener.exitMessageSelector(this);
  }
}

class KeywordArgumentContext extends ParserRuleContext {
  TerminalNode COLON() => getToken(ObjectiveCParser.TOKEN_COLON, 0);
  List<KeywordArgumentTypeContext> keywordArgumentTypes() => getRuleContexts<KeywordArgumentTypeContext>();
  KeywordArgumentTypeContext keywordArgumentType(int i) => getRuleContext<KeywordArgumentTypeContext>(i);
  SelectorContext selector() => getRuleContext<SelectorContext>(0);
  List<TerminalNode> COMMAs() => getTokens(ObjectiveCParser.TOKEN_COMMA);
  TerminalNode COMMA(int i) => getToken(ObjectiveCParser.TOKEN_COMMA, i);
  KeywordArgumentContext([ParserRuleContext parent, int invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_keywordArgument;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is ObjectiveCParserListener) listener.enterKeywordArgument(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is ObjectiveCParserListener) listener.exitKeywordArgument(this);
  }
}

class KeywordArgumentTypeContext extends ParserRuleContext {
  ExpressionsContext expressions() => getRuleContext<ExpressionsContext>(0);
  NullabilitySpecifierContext nullabilitySpecifier() => getRuleContext<NullabilitySpecifierContext>(0);
  TerminalNode LBRACE() => getToken(ObjectiveCParser.TOKEN_LBRACE, 0);
  InitializerListContext initializerList() => getRuleContext<InitializerListContext>(0);
  TerminalNode RBRACE() => getToken(ObjectiveCParser.TOKEN_RBRACE, 0);
  KeywordArgumentTypeContext([ParserRuleContext parent, int invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_keywordArgumentType;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is ObjectiveCParserListener) listener.enterKeywordArgumentType(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is ObjectiveCParserListener) listener.exitKeywordArgumentType(this);
  }
}

class SelectorExpressionContext extends ParserRuleContext {
  TerminalNode SELECTOR() => getToken(ObjectiveCParser.TOKEN_SELECTOR, 0);
  TerminalNode LP() => getToken(ObjectiveCParser.TOKEN_LP, 0);
  SelectorNameContext selectorName() => getRuleContext<SelectorNameContext>(0);
  TerminalNode RP() => getToken(ObjectiveCParser.TOKEN_RP, 0);
  SelectorExpressionContext([ParserRuleContext parent, int invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_selectorExpression;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is ObjectiveCParserListener) listener.enterSelectorExpression(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is ObjectiveCParserListener) listener.exitSelectorExpression(this);
  }
}

class SelectorNameContext extends ParserRuleContext {
  List<SelectorContext> selectors() => getRuleContexts<SelectorContext>();
  SelectorContext selector(int i) => getRuleContext<SelectorContext>(i);
  List<TerminalNode> COLONs() => getTokens(ObjectiveCParser.TOKEN_COLON);
  TerminalNode COLON(int i) => getToken(ObjectiveCParser.TOKEN_COLON, i);
  SelectorNameContext([ParserRuleContext parent, int invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_selectorName;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is ObjectiveCParserListener) listener.enterSelectorName(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is ObjectiveCParserListener) listener.exitSelectorName(this);
  }
}

class ProtocolExpressionContext extends ParserRuleContext {
  TerminalNode PROTOCOL() => getToken(ObjectiveCParser.TOKEN_PROTOCOL, 0);
  TerminalNode LP() => getToken(ObjectiveCParser.TOKEN_LP, 0);
  ProtocolNameContext protocolName() => getRuleContext<ProtocolNameContext>(0);
  TerminalNode RP() => getToken(ObjectiveCParser.TOKEN_RP, 0);
  ProtocolExpressionContext([ParserRuleContext parent, int invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_protocolExpression;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is ObjectiveCParserListener) listener.enterProtocolExpression(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is ObjectiveCParserListener) listener.exitProtocolExpression(this);
  }
}

class EncodeExpressionContext extends ParserRuleContext {
  TerminalNode ENCODE() => getToken(ObjectiveCParser.TOKEN_ENCODE, 0);
  TerminalNode LP() => getToken(ObjectiveCParser.TOKEN_LP, 0);
  TypeNameContext typeName() => getRuleContext<TypeNameContext>(0);
  TerminalNode RP() => getToken(ObjectiveCParser.TOKEN_RP, 0);
  EncodeExpressionContext([ParserRuleContext parent, int invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_encodeExpression;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is ObjectiveCParserListener) listener.enterEncodeExpression(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is ObjectiveCParserListener) listener.exitEncodeExpression(this);
  }
}

class TypeVariableDeclaratorContext extends ParserRuleContext {
  DeclarationSpecifiersContext declarationSpecifiers() => getRuleContext<DeclarationSpecifiersContext>(0);
  DeclaratorContext declarator() => getRuleContext<DeclaratorContext>(0);
  TypeVariableDeclaratorContext([ParserRuleContext parent, int invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_typeVariableDeclarator;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is ObjectiveCParserListener) listener.enterTypeVariableDeclarator(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is ObjectiveCParserListener) listener.exitTypeVariableDeclarator(this);
  }
}

class ThrowStatementContext extends ParserRuleContext {
  TerminalNode THROW() => getToken(ObjectiveCParser.TOKEN_THROW, 0);
  TerminalNode LP() => getToken(ObjectiveCParser.TOKEN_LP, 0);
  IdentifierContext identifier() => getRuleContext<IdentifierContext>(0);
  TerminalNode RP() => getToken(ObjectiveCParser.TOKEN_RP, 0);
  ExpressionContext expression() => getRuleContext<ExpressionContext>(0);
  ThrowStatementContext([ParserRuleContext parent, int invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_throwStatement;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is ObjectiveCParserListener) listener.enterThrowStatement(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is ObjectiveCParserListener) listener.exitThrowStatement(this);
  }
}

class TryBlockContext extends ParserRuleContext {
  CompoundStatementContext tryStatement;
  CompoundStatementContext finallyStatement;
  TerminalNode TRY() => getToken(ObjectiveCParser.TOKEN_TRY, 0);
  List<CompoundStatementContext> compoundStatements() => getRuleContexts<CompoundStatementContext>();
  CompoundStatementContext compoundStatement(int i) => getRuleContext<CompoundStatementContext>(i);
  List<CatchStatementContext> catchStatements() => getRuleContexts<CatchStatementContext>();
  CatchStatementContext catchStatement(int i) => getRuleContext<CatchStatementContext>(i);
  TerminalNode FINALLY() => getToken(ObjectiveCParser.TOKEN_FINALLY, 0);
  TryBlockContext([ParserRuleContext parent, int invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_tryBlock;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is ObjectiveCParserListener) listener.enterTryBlock(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is ObjectiveCParserListener) listener.exitTryBlock(this);
  }
}

class CatchStatementContext extends ParserRuleContext {
  TerminalNode CATCH() => getToken(ObjectiveCParser.TOKEN_CATCH, 0);
  TerminalNode LP() => getToken(ObjectiveCParser.TOKEN_LP, 0);
  TypeVariableDeclaratorContext typeVariableDeclarator() => getRuleContext<TypeVariableDeclaratorContext>(0);
  TerminalNode RP() => getToken(ObjectiveCParser.TOKEN_RP, 0);
  CompoundStatementContext compoundStatement() => getRuleContext<CompoundStatementContext>(0);
  CatchStatementContext([ParserRuleContext parent, int invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_catchStatement;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is ObjectiveCParserListener) listener.enterCatchStatement(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is ObjectiveCParserListener) listener.exitCatchStatement(this);
  }
}

class SynchronizedStatementContext extends ParserRuleContext {
  TerminalNode SYNCHRONIZED() => getToken(ObjectiveCParser.TOKEN_SYNCHRONIZED, 0);
  TerminalNode LP() => getToken(ObjectiveCParser.TOKEN_LP, 0);
  ExpressionContext expression() => getRuleContext<ExpressionContext>(0);
  TerminalNode RP() => getToken(ObjectiveCParser.TOKEN_RP, 0);
  CompoundStatementContext compoundStatement() => getRuleContext<CompoundStatementContext>(0);
  SynchronizedStatementContext([ParserRuleContext parent, int invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_synchronizedStatement;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is ObjectiveCParserListener) listener.enterSynchronizedStatement(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is ObjectiveCParserListener) listener.exitSynchronizedStatement(this);
  }
}

class AutoreleaseStatementContext extends ParserRuleContext {
  TerminalNode AUTORELEASEPOOL() => getToken(ObjectiveCParser.TOKEN_AUTORELEASEPOOL, 0);
  CompoundStatementContext compoundStatement() => getRuleContext<CompoundStatementContext>(0);
  AutoreleaseStatementContext([ParserRuleContext parent, int invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_autoreleaseStatement;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is ObjectiveCParserListener) listener.enterAutoreleaseStatement(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is ObjectiveCParserListener) listener.exitAutoreleaseStatement(this);
  }
}

class FunctionDeclarationContext extends ParserRuleContext {
  FunctionSignatureContext functionSignature() => getRuleContext<FunctionSignatureContext>(0);
  TerminalNode SEMI() => getToken(ObjectiveCParser.TOKEN_SEMI, 0);
  List<MacroContext> macros() => getRuleContexts<MacroContext>();
  MacroContext macro(int i) => getRuleContext<MacroContext>(i);
  List<AttributeSpecifierContext> attributeSpecifiers() => getRuleContexts<AttributeSpecifierContext>();
  AttributeSpecifierContext attributeSpecifier(int i) => getRuleContext<AttributeSpecifierContext>(i);
  FunctionDeclarationContext([ParserRuleContext parent, int invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_functionDeclaration;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is ObjectiveCParserListener) listener.enterFunctionDeclaration(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is ObjectiveCParserListener) listener.exitFunctionDeclaration(this);
  }
}

class FunctionDefinitionContext extends ParserRuleContext {
  FunctionSignatureContext functionSignature() => getRuleContext<FunctionSignatureContext>(0);
  CompoundStatementContext compoundStatement() => getRuleContext<CompoundStatementContext>(0);
  List<MacroContext> macros() => getRuleContexts<MacroContext>();
  MacroContext macro(int i) => getRuleContext<MacroContext>(i);
  List<AttributeSpecifierContext> attributeSpecifiers() => getRuleContexts<AttributeSpecifierContext>();
  AttributeSpecifierContext attributeSpecifier(int i) => getRuleContext<AttributeSpecifierContext>(i);
  FunctionDefinitionContext([ParserRuleContext parent, int invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_functionDefinition;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is ObjectiveCParserListener) listener.enterFunctionDefinition(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is ObjectiveCParserListener) listener.exitFunctionDefinition(this);
  }
}

class FunctionSignatureContext extends ParserRuleContext {
  IdentifierContext identifier() => getRuleContext<IdentifierContext>(0);
  TerminalNode LP() => getToken(ObjectiveCParser.TOKEN_LP, 0);
  TerminalNode RP() => getToken(ObjectiveCParser.TOKEN_RP, 0);
  DeclarationSpecifiersContext declarationSpecifiers() => getRuleContext<DeclarationSpecifiersContext>(0);
  AttributeSpecifierContext attributeSpecifier() => getRuleContext<AttributeSpecifierContext>(0);
  ParameterListContext parameterList() => getRuleContext<ParameterListContext>(0);
  FunctionSignatureContext([ParserRuleContext parent, int invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_functionSignature;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is ObjectiveCParserListener) listener.enterFunctionSignature(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is ObjectiveCParserListener) listener.exitFunctionSignature(this);
  }
}

class FunctionPointerContext extends ParserRuleContext {
  IdentifierContext name;
  List<TerminalNode> LPs() => getTokens(ObjectiveCParser.TOKEN_LP);
  TerminalNode LP(int i) => getToken(ObjectiveCParser.TOKEN_LP, i);
  TerminalNode MUL() => getToken(ObjectiveCParser.TOKEN_MUL, 0);
  List<TerminalNode> RPs() => getTokens(ObjectiveCParser.TOKEN_RP);
  TerminalNode RP(int i) => getToken(ObjectiveCParser.TOKEN_RP, i);
  DeclarationSpecifiersContext declarationSpecifiers() => getRuleContext<DeclarationSpecifiersContext>(0);
  AttributeSpecifierContext attributeSpecifier() => getRuleContext<AttributeSpecifierContext>(0);
  NullabilitySpecifierContext nullabilitySpecifier() => getRuleContext<NullabilitySpecifierContext>(0);
  ParameterListContext parameterList() => getRuleContext<ParameterListContext>(0);
  IdentifierContext identifier() => getRuleContext<IdentifierContext>(0);
  FunctionPointerContext([ParserRuleContext parent, int invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_functionPointer;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is ObjectiveCParserListener) listener.enterFunctionPointer(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is ObjectiveCParserListener) listener.exitFunctionPointer(this);
  }
}

class AttributeContext extends ParserRuleContext {
  AttributeNameContext attributeName() => getRuleContext<AttributeNameContext>(0);
  AttributeParametersContext attributeParameters() => getRuleContext<AttributeParametersContext>(0);
  AttributeContext([ParserRuleContext parent, int invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_attribute;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is ObjectiveCParserListener) listener.enterAttribute(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is ObjectiveCParserListener) listener.exitAttribute(this);
  }
}

class AttributeNameContext extends ParserRuleContext {
  TerminalNode CONST() => getToken(ObjectiveCParser.TOKEN_CONST, 0);
  IdentifierContext identifier() => getRuleContext<IdentifierContext>(0);
  AttributeNameContext([ParserRuleContext parent, int invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_attributeName;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is ObjectiveCParserListener) listener.enterAttributeName(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is ObjectiveCParserListener) listener.exitAttributeName(this);
  }
}

class AttributeParametersContext extends ParserRuleContext {
  TerminalNode LP() => getToken(ObjectiveCParser.TOKEN_LP, 0);
  TerminalNode RP() => getToken(ObjectiveCParser.TOKEN_RP, 0);
  AttributeParameterListContext attributeParameterList() => getRuleContext<AttributeParameterListContext>(0);
  AttributeParametersContext([ParserRuleContext parent, int invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_attributeParameters;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is ObjectiveCParserListener) listener.enterAttributeParameters(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is ObjectiveCParserListener) listener.exitAttributeParameters(this);
  }
}

class AttributeParameterListContext extends ParserRuleContext {
  List<AttributeParameterContext> attributeParameters() => getRuleContexts<AttributeParameterContext>();
  AttributeParameterContext attributeParameter(int i) => getRuleContext<AttributeParameterContext>(i);
  List<TerminalNode> COMMAs() => getTokens(ObjectiveCParser.TOKEN_COMMA);
  TerminalNode COMMA(int i) => getToken(ObjectiveCParser.TOKEN_COMMA, i);
  AttributeParameterListContext([ParserRuleContext parent, int invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_attributeParameterList;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is ObjectiveCParserListener) listener.enterAttributeParameterList(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is ObjectiveCParserListener) listener.exitAttributeParameterList(this);
  }
}

class AttributeParameterContext extends ParserRuleContext {
  AttributeContext attribute() => getRuleContext<AttributeContext>(0);
  ConstantContext constant() => getRuleContext<ConstantContext>(0);
  StringLiteralContext stringLiteral() => getRuleContext<StringLiteralContext>(0);
  AttributeParameterAssignmentContext attributeParameterAssignment() => getRuleContext<AttributeParameterAssignmentContext>(0);
  AttributeParameterContext([ParserRuleContext parent, int invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_attributeParameter;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is ObjectiveCParserListener) listener.enterAttributeParameter(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is ObjectiveCParserListener) listener.exitAttributeParameter(this);
  }
}

class AttributeParameterAssignmentContext extends ParserRuleContext {
  List<AttributeNameContext> attributeNames() => getRuleContexts<AttributeNameContext>();
  AttributeNameContext attributeName(int i) => getRuleContext<AttributeNameContext>(i);
  TerminalNode ASSIGNMENT() => getToken(ObjectiveCParser.TOKEN_ASSIGNMENT, 0);
  ConstantContext constant() => getRuleContext<ConstantContext>(0);
  StringLiteralContext stringLiteral() => getRuleContext<StringLiteralContext>(0);
  AttributeParameterAssignmentContext([ParserRuleContext parent, int invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_attributeParameterAssignment;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is ObjectiveCParserListener) listener.enterAttributeParameterAssignment(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is ObjectiveCParserListener) listener.exitAttributeParameterAssignment(this);
  }
}

class DeclarationContext extends ParserRuleContext {
  FunctionCallExpressionContext functionCallExpression() => getRuleContext<FunctionCallExpressionContext>(0);
  EnumDeclarationContext enumDeclaration() => getRuleContext<EnumDeclarationContext>(0);
  VarDeclarationContext varDeclaration() => getRuleContext<VarDeclarationContext>(0);
  TypedefDeclarationContext typedefDeclaration() => getRuleContext<TypedefDeclarationContext>(0);
  DeclarationContext([ParserRuleContext parent, int invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_declaration;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is ObjectiveCParserListener) listener.enterDeclaration(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is ObjectiveCParserListener) listener.exitDeclaration(this);
  }
}

class FunctionCallExpressionContext extends ParserRuleContext {
  IdentifierContext identifier() => getRuleContext<IdentifierContext>(0);
  TerminalNode LP() => getToken(ObjectiveCParser.TOKEN_LP, 0);
  DirectDeclaratorContext directDeclarator() => getRuleContext<DirectDeclaratorContext>(0);
  TerminalNode RP() => getToken(ObjectiveCParser.TOKEN_RP, 0);
  TerminalNode SEMI() => getToken(ObjectiveCParser.TOKEN_SEMI, 0);
  List<AttributeSpecifierContext> attributeSpecifiers() => getRuleContexts<AttributeSpecifierContext>();
  AttributeSpecifierContext attributeSpecifier(int i) => getRuleContext<AttributeSpecifierContext>(i);
  FunctionCallExpressionContext([ParserRuleContext parent, int invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_functionCallExpression;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is ObjectiveCParserListener) listener.enterFunctionCallExpression(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is ObjectiveCParserListener) listener.exitFunctionCallExpression(this);
  }
}

class EnumDeclarationContext extends ParserRuleContext {
  IdentifierContext name;
  EnumSpecifierContext enumSpecifier() => getRuleContext<EnumSpecifierContext>(0);
  TerminalNode SEMI() => getToken(ObjectiveCParser.TOKEN_SEMI, 0);
  List<MacroContext> macros() => getRuleContexts<MacroContext>();
  MacroContext macro(int i) => getRuleContext<MacroContext>(i);
  List<AttributeSpecifierContext> attributeSpecifiers() => getRuleContexts<AttributeSpecifierContext>();
  AttributeSpecifierContext attributeSpecifier(int i) => getRuleContext<AttributeSpecifierContext>(i);
  TerminalNode TYPEDEF() => getToken(ObjectiveCParser.TOKEN_TYPEDEF, 0);
  IdentifierContext identifier() => getRuleContext<IdentifierContext>(0);
  EnumDeclarationContext([ParserRuleContext parent, int invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_enumDeclaration;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is ObjectiveCParserListener) listener.enterEnumDeclaration(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is ObjectiveCParserListener) listener.exitEnumDeclaration(this);
  }
}

class VarDeclarationContext extends ParserRuleContext {
  TerminalNode SEMI() => getToken(ObjectiveCParser.TOKEN_SEMI, 0);
  DeclarationSpecifiersContext declarationSpecifiers() => getRuleContext<DeclarationSpecifiersContext>(0);
  InitDeclaratorListContext initDeclaratorList() => getRuleContext<InitDeclaratorListContext>(0);
  List<MacroContext> macros() => getRuleContexts<MacroContext>();
  MacroContext macro(int i) => getRuleContext<MacroContext>(i);
  List<AttributeSpecifierContext> attributeSpecifiers() => getRuleContexts<AttributeSpecifierContext>();
  AttributeSpecifierContext attributeSpecifier(int i) => getRuleContext<AttributeSpecifierContext>(i);
  VarDeclarationContext([ParserRuleContext parent, int invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_varDeclaration;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is ObjectiveCParserListener) listener.enterVarDeclaration(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is ObjectiveCParserListener) listener.exitVarDeclaration(this);
  }
}

class TypedefDeclarationContext extends ParserRuleContext {
  TerminalNode TYPEDEF() => getToken(ObjectiveCParser.TOKEN_TYPEDEF, 0);
  TerminalNode SEMI() => getToken(ObjectiveCParser.TOKEN_SEMI, 0);
  DeclarationSpecifiersContext declarationSpecifiers() => getRuleContext<DeclarationSpecifiersContext>(0);
  TypeDeclaratorListContext typeDeclaratorList() => getRuleContext<TypeDeclaratorListContext>(0);
  FunctionPointerContext functionPointer() => getRuleContext<FunctionPointerContext>(0);
  FunctionSignatureContext functionSignature() => getRuleContext<FunctionSignatureContext>(0);
  StructOrUnionSpecifierContext structOrUnionSpecifier() => getRuleContext<StructOrUnionSpecifierContext>(0);
  IdentifierContext identifier() => getRuleContext<IdentifierContext>(0);
  List<AttributeSpecifierContext> attributeSpecifiers() => getRuleContexts<AttributeSpecifierContext>();
  AttributeSpecifierContext attributeSpecifier(int i) => getRuleContext<AttributeSpecifierContext>(i);
  List<MacroContext> macros() => getRuleContexts<MacroContext>();
  MacroContext macro(int i) => getRuleContext<MacroContext>(i);
  TypedefDeclarationContext([ParserRuleContext parent, int invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_typedefDeclaration;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is ObjectiveCParserListener) listener.enterTypedefDeclaration(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is ObjectiveCParserListener) listener.exitTypedefDeclaration(this);
  }
}

class TypeDeclaratorListContext extends ParserRuleContext {
  List<TypeDeclaratorContext> typeDeclarators() => getRuleContexts<TypeDeclaratorContext>();
  TypeDeclaratorContext typeDeclarator(int i) => getRuleContext<TypeDeclaratorContext>(i);
  List<TerminalNode> COMMAs() => getTokens(ObjectiveCParser.TOKEN_COMMA);
  TerminalNode COMMA(int i) => getToken(ObjectiveCParser.TOKEN_COMMA, i);
  TypeDeclaratorListContext([ParserRuleContext parent, int invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_typeDeclaratorList;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is ObjectiveCParserListener) listener.enterTypeDeclaratorList(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is ObjectiveCParserListener) listener.exitTypeDeclaratorList(this);
  }
}

class TypeDeclaratorContext extends ParserRuleContext {
  DirectDeclaratorContext directDeclarator() => getRuleContext<DirectDeclaratorContext>(0);
  PointerContext pointer() => getRuleContext<PointerContext>(0);
  TypeDeclaratorContext([ParserRuleContext parent, int invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_typeDeclarator;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is ObjectiveCParserListener) listener.enterTypeDeclarator(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is ObjectiveCParserListener) listener.exitTypeDeclarator(this);
  }
}

class CommonSpecifiersContext extends ParserRuleContext {
  List<ArcBehaviourSpecifierContext> arcBehaviourSpecifiers() => getRuleContexts<ArcBehaviourSpecifierContext>();
  ArcBehaviourSpecifierContext arcBehaviourSpecifier(int i) => getRuleContext<ArcBehaviourSpecifierContext>(i);
  List<NullabilitySpecifierContext> nullabilitySpecifiers() => getRuleContexts<NullabilitySpecifierContext>();
  NullabilitySpecifierContext nullabilitySpecifier(int i) => getRuleContext<NullabilitySpecifierContext>(i);
  List<IbOutletQualifierContext> ibOutletQualifiers() => getRuleContexts<IbOutletQualifierContext>();
  IbOutletQualifierContext ibOutletQualifier(int i) => getRuleContext<IbOutletQualifierContext>(i);
  List<TypePrefixContext> typePrefixs() => getRuleContexts<TypePrefixContext>();
  TypePrefixContext typePrefix(int i) => getRuleContext<TypePrefixContext>(i);
  List<TypeQualifierContext> typeQualifiers() => getRuleContexts<TypeQualifierContext>();
  TypeQualifierContext typeQualifier(int i) => getRuleContext<TypeQualifierContext>(i);
  CommonSpecifiersContext([ParserRuleContext parent, int invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_commonSpecifiers;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is ObjectiveCParserListener) listener.enterCommonSpecifiers(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is ObjectiveCParserListener) listener.exitCommonSpecifiers(this);
  }
}

class DeclarationSpecifiersContext extends ParserRuleContext {
  List<StorageClassSpecifierContext> storageClassSpecifiers() => getRuleContexts<StorageClassSpecifierContext>();
  StorageClassSpecifierContext storageClassSpecifier(int i) => getRuleContext<StorageClassSpecifierContext>(i);
  List<AttributeSpecifierContext> attributeSpecifiers() => getRuleContexts<AttributeSpecifierContext>();
  AttributeSpecifierContext attributeSpecifier(int i) => getRuleContext<AttributeSpecifierContext>(i);
  List<CommonSpecifiersContext> commonSpecifierss() => getRuleContexts<CommonSpecifiersContext>();
  CommonSpecifiersContext commonSpecifiers(int i) => getRuleContext<CommonSpecifiersContext>(i);
  List<TypeSpecifierContext> typeSpecifiers() => getRuleContexts<TypeSpecifierContext>();
  TypeSpecifierContext typeSpecifier(int i) => getRuleContext<TypeSpecifierContext>(i);
  DeclarationSpecifiersContext([ParserRuleContext parent, int invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_declarationSpecifiers;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is ObjectiveCParserListener) listener.enterDeclarationSpecifiers(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is ObjectiveCParserListener) listener.exitDeclarationSpecifiers(this);
  }
}

class PointerQualifierContext extends ParserRuleContext {
  List<StorageClassSpecifierContext> storageClassSpecifiers() => getRuleContexts<StorageClassSpecifierContext>();
  StorageClassSpecifierContext storageClassSpecifier(int i) => getRuleContext<StorageClassSpecifierContext>(i);
  List<AttributeSpecifierContext> attributeSpecifiers() => getRuleContexts<AttributeSpecifierContext>();
  AttributeSpecifierContext attributeSpecifier(int i) => getRuleContext<AttributeSpecifierContext>(i);
  List<CommonSpecifiersContext> commonSpecifierss() => getRuleContexts<CommonSpecifiersContext>();
  CommonSpecifiersContext commonSpecifiers(int i) => getRuleContext<CommonSpecifiersContext>(i);
  PointerQualifierContext([ParserRuleContext parent, int invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_pointerQualifier;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is ObjectiveCParserListener) listener.enterPointerQualifier(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is ObjectiveCParserListener) listener.exitPointerQualifier(this);
  }
}

class AttributeSpecifierContext extends ParserRuleContext {
  TerminalNode ATTRIBUTE() => getToken(ObjectiveCParser.TOKEN_ATTRIBUTE, 0);
  List<TerminalNode> LPs() => getTokens(ObjectiveCParser.TOKEN_LP);
  TerminalNode LP(int i) => getToken(ObjectiveCParser.TOKEN_LP, i);
  List<AttributeContext> attributes() => getRuleContexts<AttributeContext>();
  AttributeContext attribute(int i) => getRuleContext<AttributeContext>(i);
  List<TerminalNode> RPs() => getTokens(ObjectiveCParser.TOKEN_RP);
  TerminalNode RP(int i) => getToken(ObjectiveCParser.TOKEN_RP, i);
  List<TerminalNode> COMMAs() => getTokens(ObjectiveCParser.TOKEN_COMMA);
  TerminalNode COMMA(int i) => getToken(ObjectiveCParser.TOKEN_COMMA, i);
  AttributeSpecifierContext([ParserRuleContext parent, int invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_attributeSpecifier;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is ObjectiveCParserListener) listener.enterAttributeSpecifier(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is ObjectiveCParserListener) listener.exitAttributeSpecifier(this);
  }
}

class InitDeclaratorListContext extends ParserRuleContext {
  List<InitDeclaratorContext> initDeclarators() => getRuleContexts<InitDeclaratorContext>();
  InitDeclaratorContext initDeclarator(int i) => getRuleContext<InitDeclaratorContext>(i);
  List<TerminalNode> COMMAs() => getTokens(ObjectiveCParser.TOKEN_COMMA);
  TerminalNode COMMA(int i) => getToken(ObjectiveCParser.TOKEN_COMMA, i);
  InitDeclaratorListContext([ParserRuleContext parent, int invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_initDeclaratorList;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is ObjectiveCParserListener) listener.enterInitDeclaratorList(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is ObjectiveCParserListener) listener.exitInitDeclaratorList(this);
  }
}

class InitDeclaratorContext extends ParserRuleContext {
  DeclaratorContext declarator() => getRuleContext<DeclaratorContext>(0);
  List<MacroContext> macros() => getRuleContexts<MacroContext>();
  MacroContext macro(int i) => getRuleContext<MacroContext>(i);
  List<AttributeSpecifierContext> attributeSpecifiers() => getRuleContexts<AttributeSpecifierContext>();
  AttributeSpecifierContext attributeSpecifier(int i) => getRuleContext<AttributeSpecifierContext>(i);
  TerminalNode ASSIGNMENT() => getToken(ObjectiveCParser.TOKEN_ASSIGNMENT, 0);
  InitializerContext initializer() => getRuleContext<InitializerContext>(0);
  InitDeclaratorContext([ParserRuleContext parent, int invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_initDeclarator;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is ObjectiveCParserListener) listener.enterInitDeclarator(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is ObjectiveCParserListener) listener.exitInitDeclarator(this);
  }
}

class StructOrUnionSpecifierContext extends ParserRuleContext {
  TerminalNode STRUCT() => getToken(ObjectiveCParser.TOKEN_STRUCT, 0);
  TerminalNode UNION() => getToken(ObjectiveCParser.TOKEN_UNION, 0);
  IdentifierContext identifier() => getRuleContext<IdentifierContext>(0);
  TerminalNode LBRACE() => getToken(ObjectiveCParser.TOKEN_LBRACE, 0);
  TerminalNode RBRACE() => getToken(ObjectiveCParser.TOKEN_RBRACE, 0);
  List<FieldDeclarationContext> fieldDeclarations() => getRuleContexts<FieldDeclarationContext>();
  FieldDeclarationContext fieldDeclaration(int i) => getRuleContext<FieldDeclarationContext>(i);
  StructOrUnionSpecifierContext([ParserRuleContext parent, int invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_structOrUnionSpecifier;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is ObjectiveCParserListener) listener.enterStructOrUnionSpecifier(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is ObjectiveCParserListener) listener.exitStructOrUnionSpecifier(this);
  }
}

class FieldDeclarationContext extends ParserRuleContext {
  TerminalNode SEMI() => getToken(ObjectiveCParser.TOKEN_SEMI, 0);
  SpecifierQualifierListContext specifierQualifierList() => getRuleContext<SpecifierQualifierListContext>(0);
  FieldDeclaratorListContext fieldDeclaratorList() => getRuleContext<FieldDeclaratorListContext>(0);
  FunctionPointerContext functionPointer() => getRuleContext<FunctionPointerContext>(0);
  List<MacroContext> macros() => getRuleContexts<MacroContext>();
  MacroContext macro(int i) => getRuleContext<MacroContext>(i);
  List<AttributeSpecifierContext> attributeSpecifiers() => getRuleContexts<AttributeSpecifierContext>();
  AttributeSpecifierContext attributeSpecifier(int i) => getRuleContext<AttributeSpecifierContext>(i);
  FieldDeclarationContext([ParserRuleContext parent, int invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_fieldDeclaration;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is ObjectiveCParserListener) listener.enterFieldDeclaration(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is ObjectiveCParserListener) listener.exitFieldDeclaration(this);
  }
}

class SpecifierQualifierListContext extends ParserRuleContext {
  List<CommonSpecifiersContext> commonSpecifierss() => getRuleContexts<CommonSpecifiersContext>();
  CommonSpecifiersContext commonSpecifiers(int i) => getRuleContext<CommonSpecifiersContext>(i);
  List<TypeSpecifierContext> typeSpecifiers() => getRuleContexts<TypeSpecifierContext>();
  TypeSpecifierContext typeSpecifier(int i) => getRuleContext<TypeSpecifierContext>(i);
  SpecifierQualifierListContext([ParserRuleContext parent, int invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_specifierQualifierList;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is ObjectiveCParserListener) listener.enterSpecifierQualifierList(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is ObjectiveCParserListener) listener.exitSpecifierQualifierList(this);
  }
}

class IbOutletQualifierContext extends ParserRuleContext {
  TerminalNode IB_OUTLET_COLLECTION() => getToken(ObjectiveCParser.TOKEN_IB_OUTLET_COLLECTION, 0);
  TerminalNode LP() => getToken(ObjectiveCParser.TOKEN_LP, 0);
  IdentifierContext identifier() => getRuleContext<IdentifierContext>(0);
  TerminalNode RP() => getToken(ObjectiveCParser.TOKEN_RP, 0);
  TerminalNode IB_OUTLET() => getToken(ObjectiveCParser.TOKEN_IB_OUTLET, 0);
  IbOutletQualifierContext([ParserRuleContext parent, int invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_ibOutletQualifier;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is ObjectiveCParserListener) listener.enterIbOutletQualifier(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is ObjectiveCParserListener) listener.exitIbOutletQualifier(this);
  }
}

class ArcBehaviourSpecifierContext extends ParserRuleContext {
  TerminalNode WEAK_QUALIFIER() => getToken(ObjectiveCParser.TOKEN_WEAK_QUALIFIER, 0);
  TerminalNode STRONG_QUALIFIER() => getToken(ObjectiveCParser.TOKEN_STRONG_QUALIFIER, 0);
  TerminalNode AUTORELEASING_QUALIFIER() => getToken(ObjectiveCParser.TOKEN_AUTORELEASING_QUALIFIER, 0);
  TerminalNode UNSAFE_UNRETAINED_QUALIFIER() => getToken(ObjectiveCParser.TOKEN_UNSAFE_UNRETAINED_QUALIFIER, 0);
  ArcBehaviourSpecifierContext([ParserRuleContext parent, int invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_arcBehaviourSpecifier;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is ObjectiveCParserListener) listener.enterArcBehaviourSpecifier(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is ObjectiveCParserListener) listener.exitArcBehaviourSpecifier(this);
  }
}

class NullabilitySpecifierContext extends ParserRuleContext {
  TerminalNode NULL_UNSPECIFIED() => getToken(ObjectiveCParser.TOKEN_NULL_UNSPECIFIED, 0);
  TerminalNode NULLABLE() => getToken(ObjectiveCParser.TOKEN_NULLABLE, 0);
  TerminalNode NONNULL() => getToken(ObjectiveCParser.TOKEN_NONNULL, 0);
  TerminalNode NULL_RESETTABLE() => getToken(ObjectiveCParser.TOKEN_NULL_RESETTABLE, 0);
  NullabilitySpecifierContext([ParserRuleContext parent, int invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_nullabilitySpecifier;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is ObjectiveCParserListener) listener.enterNullabilitySpecifier(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is ObjectiveCParserListener) listener.exitNullabilitySpecifier(this);
  }
}

class StorageClassSpecifierContext extends ParserRuleContext {
  TerminalNode AUTO() => getToken(ObjectiveCParser.TOKEN_AUTO, 0);
  TerminalNode REGISTER() => getToken(ObjectiveCParser.TOKEN_REGISTER, 0);
  TerminalNode STATIC() => getToken(ObjectiveCParser.TOKEN_STATIC, 0);
  TerminalNode EXTERN() => getToken(ObjectiveCParser.TOKEN_EXTERN, 0);
  StorageClassSpecifierContext([ParserRuleContext parent, int invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_storageClassSpecifier;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is ObjectiveCParserListener) listener.enterStorageClassSpecifier(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is ObjectiveCParserListener) listener.exitStorageClassSpecifier(this);
  }
}

class TypePrefixContext extends ParserRuleContext {
  TerminalNode BRIDGE() => getToken(ObjectiveCParser.TOKEN_BRIDGE, 0);
  TerminalNode BRIDGE_TRANSFER() => getToken(ObjectiveCParser.TOKEN_BRIDGE_TRANSFER, 0);
  TerminalNode BRIDGE_RETAINED() => getToken(ObjectiveCParser.TOKEN_BRIDGE_RETAINED, 0);
  TerminalNode BLOCK() => getToken(ObjectiveCParser.TOKEN_BLOCK, 0);
  TerminalNode INLINE() => getToken(ObjectiveCParser.TOKEN_INLINE, 0);
  TerminalNode NS_INLINE() => getToken(ObjectiveCParser.TOKEN_NS_INLINE, 0);
  TerminalNode KINDOF() => getToken(ObjectiveCParser.TOKEN_KINDOF, 0);
  TypePrefixContext([ParserRuleContext parent, int invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_typePrefix;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is ObjectiveCParserListener) listener.enterTypePrefix(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is ObjectiveCParserListener) listener.exitTypePrefix(this);
  }
}

class TypeQualifierContext extends ParserRuleContext {
  TerminalNode CONST() => getToken(ObjectiveCParser.TOKEN_CONST, 0);
  TerminalNode VOLATILE() => getToken(ObjectiveCParser.TOKEN_VOLATILE, 0);
  TerminalNode RESTRICT() => getToken(ObjectiveCParser.TOKEN_RESTRICT, 0);
  ProtocolQualifierContext protocolQualifier() => getRuleContext<ProtocolQualifierContext>(0);
  TypeQualifierContext([ParserRuleContext parent, int invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_typeQualifier;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is ObjectiveCParserListener) listener.enterTypeQualifier(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is ObjectiveCParserListener) listener.exitTypeQualifier(this);
  }
}

class ProtocolQualifierContext extends ParserRuleContext {
  TerminalNode IN() => getToken(ObjectiveCParser.TOKEN_IN, 0);
  TerminalNode OUT() => getToken(ObjectiveCParser.TOKEN_OUT, 0);
  TerminalNode INOUT() => getToken(ObjectiveCParser.TOKEN_INOUT, 0);
  TerminalNode BYCOPY() => getToken(ObjectiveCParser.TOKEN_BYCOPY, 0);
  TerminalNode BYREF() => getToken(ObjectiveCParser.TOKEN_BYREF, 0);
  TerminalNode ONEWAY() => getToken(ObjectiveCParser.TOKEN_ONEWAY, 0);
  ProtocolQualifierContext([ParserRuleContext parent, int invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_protocolQualifier;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is ObjectiveCParserListener) listener.enterProtocolQualifier(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is ObjectiveCParserListener) listener.exitProtocolQualifier(this);
  }
}

class TypeSpecifierContext extends ParserRuleContext {
  TypeofExpressionContext typeofExpression() => getRuleContext<TypeofExpressionContext>(0);
  GenericTypeSpecifierContext genericTypeSpecifier() => getRuleContext<GenericTypeSpecifierContext>(0);
  StructOrUnionSpecifierContext structOrUnionSpecifier() => getRuleContext<StructOrUnionSpecifierContext>(0);
  EnumSpecifierContext enumSpecifier() => getRuleContext<EnumSpecifierContext>(0);
  IdentifierContext identifier() => getRuleContext<IdentifierContext>(0);
  PointerContext pointer() => getRuleContext<PointerContext>(0);
  List<TerminalNode> VOIDs() => getTokens(ObjectiveCParser.TOKEN_VOID);
  TerminalNode VOID(int i) => getToken(ObjectiveCParser.TOKEN_VOID, i);
  List<TerminalNode> CHARs() => getTokens(ObjectiveCParser.TOKEN_CHAR);
  TerminalNode CHAR(int i) => getToken(ObjectiveCParser.TOKEN_CHAR, i);
  List<TerminalNode> SHORTs() => getTokens(ObjectiveCParser.TOKEN_SHORT);
  TerminalNode SHORT(int i) => getToken(ObjectiveCParser.TOKEN_SHORT, i);
  List<TerminalNode> INTs() => getTokens(ObjectiveCParser.TOKEN_INT);
  TerminalNode INT(int i) => getToken(ObjectiveCParser.TOKEN_INT, i);
  List<TerminalNode> LONGs() => getTokens(ObjectiveCParser.TOKEN_LONG);
  TerminalNode LONG(int i) => getToken(ObjectiveCParser.TOKEN_LONG, i);
  List<TerminalNode> FLOATs() => getTokens(ObjectiveCParser.TOKEN_FLOAT);
  TerminalNode FLOAT(int i) => getToken(ObjectiveCParser.TOKEN_FLOAT, i);
  List<TerminalNode> DOUBLEs() => getTokens(ObjectiveCParser.TOKEN_DOUBLE);
  TerminalNode DOUBLE(int i) => getToken(ObjectiveCParser.TOKEN_DOUBLE, i);
  List<TerminalNode> SIGNEDs() => getTokens(ObjectiveCParser.TOKEN_SIGNED);
  TerminalNode SIGNED(int i) => getToken(ObjectiveCParser.TOKEN_SIGNED, i);
  List<TerminalNode> UNSIGNEDs() => getTokens(ObjectiveCParser.TOKEN_UNSIGNED);
  TerminalNode UNSIGNED(int i) => getToken(ObjectiveCParser.TOKEN_UNSIGNED, i);
  TypeSpecifierContext([ParserRuleContext parent, int invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_typeSpecifier;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is ObjectiveCParserListener) listener.enterTypeSpecifier(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is ObjectiveCParserListener) listener.exitTypeSpecifier(this);
  }
}

class TypeofExpressionContext extends ParserRuleContext {
  TerminalNode TYPEOF() => getToken(ObjectiveCParser.TOKEN_TYPEOF, 0);
  TerminalNode LP() => getToken(ObjectiveCParser.TOKEN_LP, 0);
  ExpressionContext expression() => getRuleContext<ExpressionContext>(0);
  TerminalNode RP() => getToken(ObjectiveCParser.TOKEN_RP, 0);
  TypeofExpressionContext([ParserRuleContext parent, int invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_typeofExpression;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is ObjectiveCParserListener) listener.enterTypeofExpression(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is ObjectiveCParserListener) listener.exitTypeofExpression(this);
  }
}

class FieldDeclaratorListContext extends ParserRuleContext {
  List<FieldDeclaratorContext> fieldDeclarators() => getRuleContexts<FieldDeclaratorContext>();
  FieldDeclaratorContext fieldDeclarator(int i) => getRuleContext<FieldDeclaratorContext>(i);
  List<TerminalNode> COMMAs() => getTokens(ObjectiveCParser.TOKEN_COMMA);
  TerminalNode COMMA(int i) => getToken(ObjectiveCParser.TOKEN_COMMA, i);
  FieldDeclaratorListContext([ParserRuleContext parent, int invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_fieldDeclaratorList;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is ObjectiveCParserListener) listener.enterFieldDeclaratorList(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is ObjectiveCParserListener) listener.exitFieldDeclaratorList(this);
  }
}

class FieldDeclaratorContext extends ParserRuleContext {
  DeclaratorContext declarator() => getRuleContext<DeclaratorContext>(0);
  TerminalNode COLON() => getToken(ObjectiveCParser.TOKEN_COLON, 0);
  ConstantContext constant() => getRuleContext<ConstantContext>(0);
  FieldDeclaratorContext([ParserRuleContext parent, int invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_fieldDeclarator;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is ObjectiveCParserListener) listener.enterFieldDeclarator(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is ObjectiveCParserListener) listener.exitFieldDeclarator(this);
  }
}

class EnumSpecifierContext extends ParserRuleContext {
  IdentifierContext name;
  Token type;
  TerminalNode ENUM() => getToken(ObjectiveCParser.TOKEN_ENUM, 0);
  List<IdentifierContext> identifiers() => getRuleContexts<IdentifierContext>();
  IdentifierContext identifier(int i) => getRuleContext<IdentifierContext>(i);
  TerminalNode LBRACE() => getToken(ObjectiveCParser.TOKEN_LBRACE, 0);
  EnumeratorListContext enumeratorList() => getRuleContext<EnumeratorListContext>(0);
  TerminalNode RBRACE() => getToken(ObjectiveCParser.TOKEN_RBRACE, 0);
  TerminalNode COLON() => getToken(ObjectiveCParser.TOKEN_COLON, 0);
  TypeNameContext typeName() => getRuleContext<TypeNameContext>(0);
  TerminalNode LP() => getToken(ObjectiveCParser.TOKEN_LP, 0);
  TerminalNode RP() => getToken(ObjectiveCParser.TOKEN_RP, 0);
  TerminalNode NS_OPTIONS() => getToken(ObjectiveCParser.TOKEN_NS_OPTIONS, 0);
  TerminalNode NS_ENUM() => getToken(ObjectiveCParser.TOKEN_NS_ENUM, 0);
  TerminalNode NS_ERROR_ENUM() => getToken(ObjectiveCParser.TOKEN_NS_ERROR_ENUM, 0);
  TerminalNode NS_CLOSED_ENUM() => getToken(ObjectiveCParser.TOKEN_NS_CLOSED_ENUM, 0);
  TerminalNode COMMA() => getToken(ObjectiveCParser.TOKEN_COMMA, 0);
  EnumSpecifierContext([ParserRuleContext parent, int invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_enumSpecifier;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is ObjectiveCParserListener) listener.enterEnumSpecifier(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is ObjectiveCParserListener) listener.exitEnumSpecifier(this);
  }
}

class EnumeratorListContext extends ParserRuleContext {
  EnumeratorContext _enumerator;
  List<EnumeratorContext> list = List<EnumeratorContext>();
  List<EnumeratorContext> enumerators() => getRuleContexts<EnumeratorContext>();
  EnumeratorContext enumerator(int i) => getRuleContext<EnumeratorContext>(i);
  List<TerminalNode> COMMAs() => getTokens(ObjectiveCParser.TOKEN_COMMA);
  TerminalNode COMMA(int i) => getToken(ObjectiveCParser.TOKEN_COMMA, i);
  EnumeratorListContext([ParserRuleContext parent, int invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_enumeratorList;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is ObjectiveCParserListener) listener.enterEnumeratorList(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is ObjectiveCParserListener) listener.exitEnumeratorList(this);
  }
}

class EnumeratorContext extends ParserRuleContext {
  EnumeratorIdentifierContext name;
  ExpressionContext value;
  EnumeratorIdentifierContext enumeratorIdentifier() => getRuleContext<EnumeratorIdentifierContext>(0);
  List<MacroContext> macros() => getRuleContexts<MacroContext>();
  MacroContext macro(int i) => getRuleContext<MacroContext>(i);
  List<AttributeSpecifierContext> attributeSpecifiers() => getRuleContexts<AttributeSpecifierContext>();
  AttributeSpecifierContext attributeSpecifier(int i) => getRuleContext<AttributeSpecifierContext>(i);
  TerminalNode ASSIGNMENT() => getToken(ObjectiveCParser.TOKEN_ASSIGNMENT, 0);
  ExpressionContext expression() => getRuleContext<ExpressionContext>(0);
  EnumeratorContext([ParserRuleContext parent, int invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_enumerator;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is ObjectiveCParserListener) listener.enterEnumerator(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is ObjectiveCParserListener) listener.exitEnumerator(this);
  }
}

class EnumeratorIdentifierContext extends ParserRuleContext {
  IdentifierContext identifier() => getRuleContext<IdentifierContext>(0);
  TerminalNode DEFAULT() => getToken(ObjectiveCParser.TOKEN_DEFAULT, 0);
  EnumeratorIdentifierContext([ParserRuleContext parent, int invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_enumeratorIdentifier;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is ObjectiveCParserListener) listener.enterEnumeratorIdentifier(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is ObjectiveCParserListener) listener.exitEnumeratorIdentifier(this);
  }
}

class DirectDeclaratorContext extends ParserRuleContext {
  IdentifierContext identifier() => getRuleContext<IdentifierContext>(0);
  TerminalNode LP() => getToken(ObjectiveCParser.TOKEN_LP, 0);
  DeclaratorContext declarator() => getRuleContext<DeclaratorContext>(0);
  TerminalNode RP() => getToken(ObjectiveCParser.TOKEN_RP, 0);
  List<DeclaratorSuffixContext> declaratorSuffixs() => getRuleContexts<DeclaratorSuffixContext>();
  DeclaratorSuffixContext declaratorSuffix(int i) => getRuleContext<DeclaratorSuffixContext>(i);
  TerminalNode BITXOR() => getToken(ObjectiveCParser.TOKEN_BITXOR, 0);
  BlockParametersContext blockParameters() => getRuleContext<BlockParametersContext>(0);
  NullabilitySpecifierContext nullabilitySpecifier() => getRuleContext<NullabilitySpecifierContext>(0);
  DirectDeclaratorContext([ParserRuleContext parent, int invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_directDeclarator;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is ObjectiveCParserListener) listener.enterDirectDeclarator(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is ObjectiveCParserListener) listener.exitDirectDeclarator(this);
  }
}

class DeclaratorSuffixContext extends ParserRuleContext {
  TerminalNode LBRACK() => getToken(ObjectiveCParser.TOKEN_LBRACK, 0);
  TerminalNode RBRACK() => getToken(ObjectiveCParser.TOKEN_RBRACK, 0);
  ConstantExpressionContext constantExpression() => getRuleContext<ConstantExpressionContext>(0);
  DeclaratorSuffixContext([ParserRuleContext parent, int invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_declaratorSuffix;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is ObjectiveCParserListener) listener.enterDeclaratorSuffix(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is ObjectiveCParserListener) listener.exitDeclaratorSuffix(this);
  }
}

class ParameterListContext extends ParserRuleContext {
  ParameterDeclarationListContext parameterDeclarationList() => getRuleContext<ParameterDeclarationListContext>(0);
  TerminalNode COMMA() => getToken(ObjectiveCParser.TOKEN_COMMA, 0);
  TerminalNode ELIPSIS() => getToken(ObjectiveCParser.TOKEN_ELIPSIS, 0);
  ParameterListContext([ParserRuleContext parent, int invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_parameterList;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is ObjectiveCParserListener) listener.enterParameterList(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is ObjectiveCParserListener) listener.exitParameterList(this);
  }
}

class PointerContext extends ParserRuleContext {
  PointerContext nextPointer;
  TerminalNode MUL() => getToken(ObjectiveCParser.TOKEN_MUL, 0);
  PointerQualifierContext pointerQualifier() => getRuleContext<PointerQualifierContext>(0);
  PointerContext pointer() => getRuleContext<PointerContext>(0);
  PointerContext([ParserRuleContext parent, int invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_pointer;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is ObjectiveCParserListener) listener.enterPointer(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is ObjectiveCParserListener) listener.exitPointer(this);
  }
}

class MacroContext extends ParserRuleContext {
  PrimaryExpressionContext _primaryExpression;
  List<PrimaryExpressionContext> messages = List<PrimaryExpressionContext>();
  OsVersionContext _osVersion;
  List<OsVersionContext> nativeOsVersions = List<OsVersionContext>();
  List<IdentifierContext> identifiers() => getRuleContexts<IdentifierContext>();
  IdentifierContext identifier(int i) => getRuleContext<IdentifierContext>(i);
  List<TerminalNode> LPs() => getTokens(ObjectiveCParser.TOKEN_LP);
  TerminalNode LP(int i) => getToken(ObjectiveCParser.TOKEN_LP, i);
  List<TerminalNode> RPs() => getTokens(ObjectiveCParser.TOKEN_RP);
  TerminalNode RP(int i) => getToken(ObjectiveCParser.TOKEN_RP, i);
  List<PrimaryExpressionContext> primaryExpressions() => getRuleContexts<PrimaryExpressionContext>();
  PrimaryExpressionContext primaryExpression(int i) => getRuleContext<PrimaryExpressionContext>(i);
  List<OsVersionContext> osVersions() => getRuleContexts<OsVersionContext>();
  OsVersionContext osVersion(int i) => getRuleContext<OsVersionContext>(i);
  List<TerminalNode> COMMAs() => getTokens(ObjectiveCParser.TOKEN_COMMA);
  TerminalNode COMMA(int i) => getToken(ObjectiveCParser.TOKEN_COMMA, i);
  List<TerminalNode> DOTs() => getTokens(ObjectiveCParser.TOKEN_DOT);
  TerminalNode DOT(int i) => getToken(ObjectiveCParser.TOKEN_DOT, i);
  List<TerminalNode> COLONs() => getTokens(ObjectiveCParser.TOKEN_COLON);
  TerminalNode COLON(int i) => getToken(ObjectiveCParser.TOKEN_COLON, i);
  MacroContext([ParserRuleContext parent, int invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_macro;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is ObjectiveCParserListener) listener.enterMacro(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is ObjectiveCParserListener) listener.exitMacro(this);
  }
}

class ArrayInitializerContext extends ParserRuleContext {
  TerminalNode LBRACE() => getToken(ObjectiveCParser.TOKEN_LBRACE, 0);
  TerminalNode RBRACE() => getToken(ObjectiveCParser.TOKEN_RBRACE, 0);
  ExpressionsContext expressions() => getRuleContext<ExpressionsContext>(0);
  TerminalNode COMMA() => getToken(ObjectiveCParser.TOKEN_COMMA, 0);
  ArrayInitializerContext([ParserRuleContext parent, int invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_arrayInitializer;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is ObjectiveCParserListener) listener.enterArrayInitializer(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is ObjectiveCParserListener) listener.exitArrayInitializer(this);
  }
}

class StructInitializerContext extends ParserRuleContext {
  TerminalNode LBRACE() => getToken(ObjectiveCParser.TOKEN_LBRACE, 0);
  TerminalNode RBRACE() => getToken(ObjectiveCParser.TOKEN_RBRACE, 0);
  List<TerminalNode> DOTs() => getTokens(ObjectiveCParser.TOKEN_DOT);
  TerminalNode DOT(int i) => getToken(ObjectiveCParser.TOKEN_DOT, i);
  List<ExpressionContext> expressions() => getRuleContexts<ExpressionContext>();
  ExpressionContext expression(int i) => getRuleContext<ExpressionContext>(i);
  List<TerminalNode> COMMAs() => getTokens(ObjectiveCParser.TOKEN_COMMA);
  TerminalNode COMMA(int i) => getToken(ObjectiveCParser.TOKEN_COMMA, i);
  StructInitializerContext([ParserRuleContext parent, int invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_structInitializer;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is ObjectiveCParserListener) listener.enterStructInitializer(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is ObjectiveCParserListener) listener.exitStructInitializer(this);
  }
}

class InitializerListContext extends ParserRuleContext {
  List<InitializerContext> initializers() => getRuleContexts<InitializerContext>();
  InitializerContext initializer(int i) => getRuleContext<InitializerContext>(i);
  List<TerminalNode> COMMAs() => getTokens(ObjectiveCParser.TOKEN_COMMA);
  TerminalNode COMMA(int i) => getToken(ObjectiveCParser.TOKEN_COMMA, i);
  InitializerListContext([ParserRuleContext parent, int invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_initializerList;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is ObjectiveCParserListener) listener.enterInitializerList(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is ObjectiveCParserListener) listener.exitInitializerList(this);
  }
}

class TypeNameContext extends ParserRuleContext {
  SpecifierQualifierListContext specifierQualifierList() => getRuleContext<SpecifierQualifierListContext>(0);
  AbstractDeclaratorContext abstractDeclarator() => getRuleContext<AbstractDeclaratorContext>(0);
  BlockTypeContext blockType() => getRuleContext<BlockTypeContext>(0);
  FunctionPointerContext functionPointer() => getRuleContext<FunctionPointerContext>(0);
  TypeNameContext([ParserRuleContext parent, int invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_typeName;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is ObjectiveCParserListener) listener.enterTypeName(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is ObjectiveCParserListener) listener.exitTypeName(this);
  }
}

class AbstractDeclaratorContext extends ParserRuleContext {
  PointerContext pointer() => getRuleContext<PointerContext>(0);
  AbstractDeclaratorContext abstractDeclarator() => getRuleContext<AbstractDeclaratorContext>(0);
  TerminalNode LP() => getToken(ObjectiveCParser.TOKEN_LP, 0);
  TerminalNode RP() => getToken(ObjectiveCParser.TOKEN_RP, 0);
  List<AbstractDeclaratorSuffixContext> abstractDeclaratorSuffixs() => getRuleContexts<AbstractDeclaratorSuffixContext>();
  AbstractDeclaratorSuffixContext abstractDeclaratorSuffix(int i) => getRuleContext<AbstractDeclaratorSuffixContext>(i);
  List<TerminalNode> LBRACKs() => getTokens(ObjectiveCParser.TOKEN_LBRACK);
  TerminalNode LBRACK(int i) => getToken(ObjectiveCParser.TOKEN_LBRACK, i);
  List<TerminalNode> RBRACKs() => getTokens(ObjectiveCParser.TOKEN_RBRACK);
  TerminalNode RBRACK(int i) => getToken(ObjectiveCParser.TOKEN_RBRACK, i);
  List<ConstantExpressionContext> constantExpressions() => getRuleContexts<ConstantExpressionContext>();
  ConstantExpressionContext constantExpression(int i) => getRuleContext<ConstantExpressionContext>(i);
  AbstractDeclaratorContext([ParserRuleContext parent, int invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_abstractDeclarator;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is ObjectiveCParserListener) listener.enterAbstractDeclarator(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is ObjectiveCParserListener) listener.exitAbstractDeclarator(this);
  }
}

class AbstractDeclaratorSuffixContext extends ParserRuleContext {
  TerminalNode LBRACK() => getToken(ObjectiveCParser.TOKEN_LBRACK, 0);
  TerminalNode RBRACK() => getToken(ObjectiveCParser.TOKEN_RBRACK, 0);
  ConstantExpressionContext constantExpression() => getRuleContext<ConstantExpressionContext>(0);
  TerminalNode LP() => getToken(ObjectiveCParser.TOKEN_LP, 0);
  TerminalNode RP() => getToken(ObjectiveCParser.TOKEN_RP, 0);
  ParameterDeclarationListContext parameterDeclarationList() => getRuleContext<ParameterDeclarationListContext>(0);
  AbstractDeclaratorSuffixContext([ParserRuleContext parent, int invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_abstractDeclaratorSuffix;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is ObjectiveCParserListener) listener.enterAbstractDeclaratorSuffix(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is ObjectiveCParserListener) listener.exitAbstractDeclaratorSuffix(this);
  }
}

class ParameterDeclarationListContext extends ParserRuleContext {
  List<ParameterDeclarationContext> parameterDeclarations() => getRuleContexts<ParameterDeclarationContext>();
  ParameterDeclarationContext parameterDeclaration(int i) => getRuleContext<ParameterDeclarationContext>(i);
  List<TerminalNode> COMMAs() => getTokens(ObjectiveCParser.TOKEN_COMMA);
  TerminalNode COMMA(int i) => getToken(ObjectiveCParser.TOKEN_COMMA, i);
  ParameterDeclarationListContext([ParserRuleContext parent, int invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_parameterDeclarationList;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is ObjectiveCParserListener) listener.enterParameterDeclarationList(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is ObjectiveCParserListener) listener.exitParameterDeclarationList(this);
  }
}

class ParameterDeclarationContext extends ParserRuleContext {
  DeclarationSpecifiersContext declarationSpecifiers() => getRuleContext<DeclarationSpecifiersContext>(0);
  DeclaratorContext declarator() => getRuleContext<DeclaratorContext>(0);
  TerminalNode VOID() => getToken(ObjectiveCParser.TOKEN_VOID, 0);
  FunctionPointerContext functionPointer() => getRuleContext<FunctionPointerContext>(0);
  ParameterDeclarationContext([ParserRuleContext parent, int invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_parameterDeclaration;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is ObjectiveCParserListener) listener.enterParameterDeclaration(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is ObjectiveCParserListener) listener.exitParameterDeclaration(this);
  }
}

class DeclaratorContext extends ParserRuleContext {
  DirectDeclaratorContext directDeclarator() => getRuleContext<DirectDeclaratorContext>(0);
  PointerContext pointer() => getRuleContext<PointerContext>(0);
  DeclaratorContext([ParserRuleContext parent, int invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_declarator;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is ObjectiveCParserListener) listener.enterDeclarator(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is ObjectiveCParserListener) listener.exitDeclarator(this);
  }
}

class StatementContext extends ParserRuleContext {
  LabeledStatementContext labeledStatement() => getRuleContext<LabeledStatementContext>(0);
  TerminalNode SEMI() => getToken(ObjectiveCParser.TOKEN_SEMI, 0);
  CompoundStatementContext compoundStatement() => getRuleContext<CompoundStatementContext>(0);
  SelectionStatementContext selectionStatement() => getRuleContext<SelectionStatementContext>(0);
  IterationStatementContext iterationStatement() => getRuleContext<IterationStatementContext>(0);
  JumpStatementContext jumpStatement() => getRuleContext<JumpStatementContext>(0);
  SynchronizedStatementContext synchronizedStatement() => getRuleContext<SynchronizedStatementContext>(0);
  AutoreleaseStatementContext autoreleaseStatement() => getRuleContext<AutoreleaseStatementContext>(0);
  ThrowStatementContext throwStatement() => getRuleContext<ThrowStatementContext>(0);
  TryBlockContext tryBlock() => getRuleContext<TryBlockContext>(0);
  ExpressionsContext expressions() => getRuleContext<ExpressionsContext>(0);
  StatementContext([ParserRuleContext parent, int invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_statement;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is ObjectiveCParserListener) listener.enterStatement(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is ObjectiveCParserListener) listener.exitStatement(this);
  }
}

class LabeledStatementContext extends ParserRuleContext {
  IdentifierContext identifier() => getRuleContext<IdentifierContext>(0);
  TerminalNode COLON() => getToken(ObjectiveCParser.TOKEN_COLON, 0);
  StatementContext statement() => getRuleContext<StatementContext>(0);
  LabeledStatementContext([ParserRuleContext parent, int invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_labeledStatement;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is ObjectiveCParserListener) listener.enterLabeledStatement(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is ObjectiveCParserListener) listener.exitLabeledStatement(this);
  }
}

class RangeExpressionContext extends ParserRuleContext {
  List<ConstantExpressionContext> constantExpressions() => getRuleContexts<ConstantExpressionContext>();
  ConstantExpressionContext constantExpression(int i) => getRuleContext<ConstantExpressionContext>(i);
  TerminalNode ELIPSIS() => getToken(ObjectiveCParser.TOKEN_ELIPSIS, 0);
  RangeExpressionContext([ParserRuleContext parent, int invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_rangeExpression;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is ObjectiveCParserListener) listener.enterRangeExpression(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is ObjectiveCParserListener) listener.exitRangeExpression(this);
  }
}

class CompoundStatementContext extends ParserRuleContext {
  TerminalNode LBRACE() => getToken(ObjectiveCParser.TOKEN_LBRACE, 0);
  TerminalNode RBRACE() => getToken(ObjectiveCParser.TOKEN_RBRACE, 0);
  List<DeclarationContext> declarations() => getRuleContexts<DeclarationContext>();
  DeclarationContext declaration(int i) => getRuleContext<DeclarationContext>(i);
  List<StatementContext> statements() => getRuleContexts<StatementContext>();
  StatementContext statement(int i) => getRuleContext<StatementContext>(i);
  CompoundStatementContext([ParserRuleContext parent, int invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_compoundStatement;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is ObjectiveCParserListener) listener.enterCompoundStatement(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is ObjectiveCParserListener) listener.exitCompoundStatement(this);
  }
}

class SelectionStatementContext extends ParserRuleContext {
  StatementContext ifBody;
  StatementContext elseBody;
  TerminalNode IF() => getToken(ObjectiveCParser.TOKEN_IF, 0);
  TerminalNode LP() => getToken(ObjectiveCParser.TOKEN_LP, 0);
  ExpressionContext expression() => getRuleContext<ExpressionContext>(0);
  TerminalNode RP() => getToken(ObjectiveCParser.TOKEN_RP, 0);
  List<StatementContext> statements() => getRuleContexts<StatementContext>();
  StatementContext statement(int i) => getRuleContext<StatementContext>(i);
  TerminalNode ELSE() => getToken(ObjectiveCParser.TOKEN_ELSE, 0);
  SwitchStatementContext switchStatement() => getRuleContext<SwitchStatementContext>(0);
  SelectionStatementContext([ParserRuleContext parent, int invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_selectionStatement;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is ObjectiveCParserListener) listener.enterSelectionStatement(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is ObjectiveCParserListener) listener.exitSelectionStatement(this);
  }
}

class SwitchStatementContext extends ParserRuleContext {
  TerminalNode SWITCH() => getToken(ObjectiveCParser.TOKEN_SWITCH, 0);
  TerminalNode LP() => getToken(ObjectiveCParser.TOKEN_LP, 0);
  ExpressionContext expression() => getRuleContext<ExpressionContext>(0);
  TerminalNode RP() => getToken(ObjectiveCParser.TOKEN_RP, 0);
  SwitchBlockContext switchBlock() => getRuleContext<SwitchBlockContext>(0);
  SwitchStatementContext([ParserRuleContext parent, int invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_switchStatement;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is ObjectiveCParserListener) listener.enterSwitchStatement(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is ObjectiveCParserListener) listener.exitSwitchStatement(this);
  }
}

class SwitchBlockContext extends ParserRuleContext {
  TerminalNode LBRACE() => getToken(ObjectiveCParser.TOKEN_LBRACE, 0);
  TerminalNode RBRACE() => getToken(ObjectiveCParser.TOKEN_RBRACE, 0);
  List<SwitchSectionContext> switchSections() => getRuleContexts<SwitchSectionContext>();
  SwitchSectionContext switchSection(int i) => getRuleContext<SwitchSectionContext>(i);
  SwitchBlockContext([ParserRuleContext parent, int invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_switchBlock;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is ObjectiveCParserListener) listener.enterSwitchBlock(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is ObjectiveCParserListener) listener.exitSwitchBlock(this);
  }
}

class SwitchSectionContext extends ParserRuleContext {
  List<SwitchLabelContext> switchLabels() => getRuleContexts<SwitchLabelContext>();
  SwitchLabelContext switchLabel(int i) => getRuleContext<SwitchLabelContext>(i);
  List<StatementContext> statements() => getRuleContexts<StatementContext>();
  StatementContext statement(int i) => getRuleContext<StatementContext>(i);
  SwitchSectionContext([ParserRuleContext parent, int invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_switchSection;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is ObjectiveCParserListener) listener.enterSwitchSection(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is ObjectiveCParserListener) listener.exitSwitchSection(this);
  }
}

class SwitchLabelContext extends ParserRuleContext {
  TerminalNode CASE() => getToken(ObjectiveCParser.TOKEN_CASE, 0);
  TerminalNode COLON() => getToken(ObjectiveCParser.TOKEN_COLON, 0);
  RangeExpressionContext rangeExpression() => getRuleContext<RangeExpressionContext>(0);
  TerminalNode LP() => getToken(ObjectiveCParser.TOKEN_LP, 0);
  TerminalNode RP() => getToken(ObjectiveCParser.TOKEN_RP, 0);
  TerminalNode DEFAULT() => getToken(ObjectiveCParser.TOKEN_DEFAULT, 0);
  SwitchLabelContext([ParserRuleContext parent, int invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_switchLabel;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is ObjectiveCParserListener) listener.enterSwitchLabel(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is ObjectiveCParserListener) listener.exitSwitchLabel(this);
  }
}

class IterationStatementContext extends ParserRuleContext {
  WhileStatementContext whileStatement() => getRuleContext<WhileStatementContext>(0);
  DoStatementContext doStatement() => getRuleContext<DoStatementContext>(0);
  ForStatementContext forStatement() => getRuleContext<ForStatementContext>(0);
  ForInStatementContext forInStatement() => getRuleContext<ForInStatementContext>(0);
  IterationStatementContext([ParserRuleContext parent, int invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_iterationStatement;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is ObjectiveCParserListener) listener.enterIterationStatement(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is ObjectiveCParserListener) listener.exitIterationStatement(this);
  }
}

class WhileStatementContext extends ParserRuleContext {
  TerminalNode WHILE() => getToken(ObjectiveCParser.TOKEN_WHILE, 0);
  TerminalNode LP() => getToken(ObjectiveCParser.TOKEN_LP, 0);
  ExpressionContext expression() => getRuleContext<ExpressionContext>(0);
  TerminalNode RP() => getToken(ObjectiveCParser.TOKEN_RP, 0);
  StatementContext statement() => getRuleContext<StatementContext>(0);
  WhileStatementContext([ParserRuleContext parent, int invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_whileStatement;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is ObjectiveCParserListener) listener.enterWhileStatement(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is ObjectiveCParserListener) listener.exitWhileStatement(this);
  }
}

class DoStatementContext extends ParserRuleContext {
  TerminalNode DO() => getToken(ObjectiveCParser.TOKEN_DO, 0);
  StatementContext statement() => getRuleContext<StatementContext>(0);
  TerminalNode WHILE() => getToken(ObjectiveCParser.TOKEN_WHILE, 0);
  TerminalNode LP() => getToken(ObjectiveCParser.TOKEN_LP, 0);
  ExpressionContext expression() => getRuleContext<ExpressionContext>(0);
  TerminalNode RP() => getToken(ObjectiveCParser.TOKEN_RP, 0);
  TerminalNode SEMI() => getToken(ObjectiveCParser.TOKEN_SEMI, 0);
  DoStatementContext([ParserRuleContext parent, int invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_doStatement;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is ObjectiveCParserListener) listener.enterDoStatement(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is ObjectiveCParserListener) listener.exitDoStatement(this);
  }
}

class ForStatementContext extends ParserRuleContext {
  TerminalNode FOR() => getToken(ObjectiveCParser.TOKEN_FOR, 0);
  TerminalNode LP() => getToken(ObjectiveCParser.TOKEN_LP, 0);
  List<TerminalNode> SEMIs() => getTokens(ObjectiveCParser.TOKEN_SEMI);
  TerminalNode SEMI(int i) => getToken(ObjectiveCParser.TOKEN_SEMI, i);
  TerminalNode RP() => getToken(ObjectiveCParser.TOKEN_RP, 0);
  StatementContext statement() => getRuleContext<StatementContext>(0);
  ForLoopInitializerContext forLoopInitializer() => getRuleContext<ForLoopInitializerContext>(0);
  ExpressionContext expression() => getRuleContext<ExpressionContext>(0);
  ExpressionsContext expressions() => getRuleContext<ExpressionsContext>(0);
  ForStatementContext([ParserRuleContext parent, int invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_forStatement;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is ObjectiveCParserListener) listener.enterForStatement(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is ObjectiveCParserListener) listener.exitForStatement(this);
  }
}

class ForLoopInitializerContext extends ParserRuleContext {
  DeclarationSpecifiersContext declarationSpecifiers() => getRuleContext<DeclarationSpecifiersContext>(0);
  InitDeclaratorListContext initDeclaratorList() => getRuleContext<InitDeclaratorListContext>(0);
  ExpressionsContext expressions() => getRuleContext<ExpressionsContext>(0);
  ForLoopInitializerContext([ParserRuleContext parent, int invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_forLoopInitializer;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is ObjectiveCParserListener) listener.enterForLoopInitializer(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is ObjectiveCParserListener) listener.exitForLoopInitializer(this);
  }
}

class ForInStatementContext extends ParserRuleContext {
  TerminalNode FOR() => getToken(ObjectiveCParser.TOKEN_FOR, 0);
  TerminalNode LP() => getToken(ObjectiveCParser.TOKEN_LP, 0);
  TypeVariableDeclaratorContext typeVariableDeclarator() => getRuleContext<TypeVariableDeclaratorContext>(0);
  TerminalNode IN() => getToken(ObjectiveCParser.TOKEN_IN, 0);
  TerminalNode RP() => getToken(ObjectiveCParser.TOKEN_RP, 0);
  StatementContext statement() => getRuleContext<StatementContext>(0);
  ExpressionContext expression() => getRuleContext<ExpressionContext>(0);
  ForInStatementContext([ParserRuleContext parent, int invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_forInStatement;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is ObjectiveCParserListener) listener.enterForInStatement(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is ObjectiveCParserListener) listener.exitForInStatement(this);
  }
}

class JumpStatementContext extends ParserRuleContext {
  TerminalNode GOTO() => getToken(ObjectiveCParser.TOKEN_GOTO, 0);
  IdentifierContext identifier() => getRuleContext<IdentifierContext>(0);
  TerminalNode CONTINUE() => getToken(ObjectiveCParser.TOKEN_CONTINUE, 0);
  TerminalNode BREAK() => getToken(ObjectiveCParser.TOKEN_BREAK, 0);
  TerminalNode RETURN() => getToken(ObjectiveCParser.TOKEN_RETURN, 0);
  ExpressionContext expression() => getRuleContext<ExpressionContext>(0);
  JumpStatementContext([ParserRuleContext parent, int invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_jumpStatement;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is ObjectiveCParserListener) listener.enterJumpStatement(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is ObjectiveCParserListener) listener.exitJumpStatement(this);
  }
}

class ExpressionsContext extends ParserRuleContext {
  List<ExpressionContext> expressions() => getRuleContexts<ExpressionContext>();
  ExpressionContext expression(int i) => getRuleContext<ExpressionContext>(i);
  List<TerminalNode> COMMAs() => getTokens(ObjectiveCParser.TOKEN_COMMA);
  TerminalNode COMMA(int i) => getToken(ObjectiveCParser.TOKEN_COMMA, i);
  ExpressionsContext([ParserRuleContext parent, int invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_expressions;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is ObjectiveCParserListener) listener.enterExpressions(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is ObjectiveCParserListener) listener.exitExpressions(this);
  }
}

class ExpressionContext extends ParserRuleContext {
  ExpressionContext assignmentExpression;
  Token op;
  ExpressionContext trueExpression;
  ExpressionContext falseExpression;
  CastExpressionContext castExpression() => getRuleContext<CastExpressionContext>(0);
  TerminalNode LP() => getToken(ObjectiveCParser.TOKEN_LP, 0);
  CompoundStatementContext compoundStatement() => getRuleContext<CompoundStatementContext>(0);
  TerminalNode RP() => getToken(ObjectiveCParser.TOKEN_RP, 0);
  UnaryExpressionContext unaryExpression() => getRuleContext<UnaryExpressionContext>(0);
  AssignmentOperatorContext assignmentOperator() => getRuleContext<AssignmentOperatorContext>(0);
  List<ExpressionContext> expressions() => getRuleContexts<ExpressionContext>();
  ExpressionContext expression(int i) => getRuleContext<ExpressionContext>(i);
  TerminalNode MUL() => getToken(ObjectiveCParser.TOKEN_MUL, 0);
  TerminalNode DIV() => getToken(ObjectiveCParser.TOKEN_DIV, 0);
  TerminalNode MOD() => getToken(ObjectiveCParser.TOKEN_MOD, 0);
  TerminalNode ADD() => getToken(ObjectiveCParser.TOKEN_ADD, 0);
  TerminalNode SUB() => getToken(ObjectiveCParser.TOKEN_SUB, 0);
  List<TerminalNode> LTs() => getTokens(ObjectiveCParser.TOKEN_LT);
  TerminalNode LT(int i) => getToken(ObjectiveCParser.TOKEN_LT, i);
  List<TerminalNode> GTs() => getTokens(ObjectiveCParser.TOKEN_GT);
  TerminalNode GT(int i) => getToken(ObjectiveCParser.TOKEN_GT, i);
  TerminalNode LE() => getToken(ObjectiveCParser.TOKEN_LE, 0);
  TerminalNode GE() => getToken(ObjectiveCParser.TOKEN_GE, 0);
  TerminalNode NOTEQUAL() => getToken(ObjectiveCParser.TOKEN_NOTEQUAL, 0);
  TerminalNode EQUAL() => getToken(ObjectiveCParser.TOKEN_EQUAL, 0);
  TerminalNode BITAND() => getToken(ObjectiveCParser.TOKEN_BITAND, 0);
  TerminalNode BITXOR() => getToken(ObjectiveCParser.TOKEN_BITXOR, 0);
  TerminalNode BITOR() => getToken(ObjectiveCParser.TOKEN_BITOR, 0);
  TerminalNode AND() => getToken(ObjectiveCParser.TOKEN_AND, 0);
  TerminalNode OR() => getToken(ObjectiveCParser.TOKEN_OR, 0);
  TerminalNode QUESTION() => getToken(ObjectiveCParser.TOKEN_QUESTION, 0);
  TerminalNode COLON() => getToken(ObjectiveCParser.TOKEN_COLON, 0);
  ExpressionContext([ParserRuleContext parent, int invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_expression;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is ObjectiveCParserListener) listener.enterExpression(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is ObjectiveCParserListener) listener.exitExpression(this);
  }
}

class AssignmentOperatorContext extends ParserRuleContext {
  TerminalNode ASSIGNMENT() => getToken(ObjectiveCParser.TOKEN_ASSIGNMENT, 0);
  TerminalNode MUL_ASSIGN() => getToken(ObjectiveCParser.TOKEN_MUL_ASSIGN, 0);
  TerminalNode DIV_ASSIGN() => getToken(ObjectiveCParser.TOKEN_DIV_ASSIGN, 0);
  TerminalNode MOD_ASSIGN() => getToken(ObjectiveCParser.TOKEN_MOD_ASSIGN, 0);
  TerminalNode ADD_ASSIGN() => getToken(ObjectiveCParser.TOKEN_ADD_ASSIGN, 0);
  TerminalNode SUB_ASSIGN() => getToken(ObjectiveCParser.TOKEN_SUB_ASSIGN, 0);
  TerminalNode LSHIFT_ASSIGN() => getToken(ObjectiveCParser.TOKEN_LSHIFT_ASSIGN, 0);
  TerminalNode RSHIFT_ASSIGN() => getToken(ObjectiveCParser.TOKEN_RSHIFT_ASSIGN, 0);
  TerminalNode AND_ASSIGN() => getToken(ObjectiveCParser.TOKEN_AND_ASSIGN, 0);
  TerminalNode XOR_ASSIGN() => getToken(ObjectiveCParser.TOKEN_XOR_ASSIGN, 0);
  TerminalNode OR_ASSIGN() => getToken(ObjectiveCParser.TOKEN_OR_ASSIGN, 0);
  AssignmentOperatorContext([ParserRuleContext parent, int invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_assignmentOperator;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is ObjectiveCParserListener) listener.enterAssignmentOperator(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is ObjectiveCParserListener) listener.exitAssignmentOperator(this);
  }
}

class CastExpressionContext extends ParserRuleContext {
  UnaryExpressionContext unaryExpression() => getRuleContext<UnaryExpressionContext>(0);
  TerminalNode LP() => getToken(ObjectiveCParser.TOKEN_LP, 0);
  TypeNameContext typeName() => getRuleContext<TypeNameContext>(0);
  TerminalNode RP() => getToken(ObjectiveCParser.TOKEN_RP, 0);
  CastExpressionContext castExpression() => getRuleContext<CastExpressionContext>(0);
  InitializerContext initializer() => getRuleContext<InitializerContext>(0);
  CastExpressionContext([ParserRuleContext parent, int invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_castExpression;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is ObjectiveCParserListener) listener.enterCastExpression(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is ObjectiveCParserListener) listener.exitCastExpression(this);
  }
}

class InitializerContext extends ParserRuleContext {
  ExpressionContext expression() => getRuleContext<ExpressionContext>(0);
  ArrayInitializerContext arrayInitializer() => getRuleContext<ArrayInitializerContext>(0);
  StructInitializerContext structInitializer() => getRuleContext<StructInitializerContext>(0);
  InitializerContext([ParserRuleContext parent, int invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_initializer;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is ObjectiveCParserListener) listener.enterInitializer(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is ObjectiveCParserListener) listener.exitInitializer(this);
  }
}

class ConstantExpressionContext extends ParserRuleContext {
  IdentifierContext identifier() => getRuleContext<IdentifierContext>(0);
  ConstantContext constant() => getRuleContext<ConstantContext>(0);
  ConstantExpressionContext([ParserRuleContext parent, int invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_constantExpression;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is ObjectiveCParserListener) listener.enterConstantExpression(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is ObjectiveCParserListener) listener.exitConstantExpression(this);
  }
}

class UnaryExpressionContext extends ParserRuleContext {
  Token op;
  PostfixExpressionContext postfixExpression() => getRuleContext<PostfixExpressionContext>(0);
  TerminalNode SIZEOF() => getToken(ObjectiveCParser.TOKEN_SIZEOF, 0);
  UnaryExpressionContext unaryExpression() => getRuleContext<UnaryExpressionContext>(0);
  TerminalNode LP() => getToken(ObjectiveCParser.TOKEN_LP, 0);
  TypeSpecifierContext typeSpecifier() => getRuleContext<TypeSpecifierContext>(0);
  TerminalNode RP() => getToken(ObjectiveCParser.TOKEN_RP, 0);
  TerminalNode INC() => getToken(ObjectiveCParser.TOKEN_INC, 0);
  TerminalNode DEC() => getToken(ObjectiveCParser.TOKEN_DEC, 0);
  UnaryOperatorContext unaryOperator() => getRuleContext<UnaryOperatorContext>(0);
  CastExpressionContext castExpression() => getRuleContext<CastExpressionContext>(0);
  UnaryExpressionContext([ParserRuleContext parent, int invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_unaryExpression;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is ObjectiveCParserListener) listener.enterUnaryExpression(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is ObjectiveCParserListener) listener.exitUnaryExpression(this);
  }
}

class UnaryOperatorContext extends ParserRuleContext {
  TerminalNode BITAND() => getToken(ObjectiveCParser.TOKEN_BITAND, 0);
  TerminalNode MUL() => getToken(ObjectiveCParser.TOKEN_MUL, 0);
  TerminalNode ADD() => getToken(ObjectiveCParser.TOKEN_ADD, 0);
  TerminalNode SUB() => getToken(ObjectiveCParser.TOKEN_SUB, 0);
  TerminalNode TILDE() => getToken(ObjectiveCParser.TOKEN_TILDE, 0);
  TerminalNode BANG() => getToken(ObjectiveCParser.TOKEN_BANG, 0);
  UnaryOperatorContext([ParserRuleContext parent, int invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_unaryOperator;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is ObjectiveCParserListener) listener.enterUnaryOperator(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is ObjectiveCParserListener) listener.exitUnaryOperator(this);
  }
}

class PostfixExpressionContext extends ParserRuleContext {
  PrimaryExpressionContext primaryExpression() => getRuleContext<PrimaryExpressionContext>(0);
  List<PostfixContext> postfixs() => getRuleContexts<PostfixContext>();
  PostfixContext postfix(int i) => getRuleContext<PostfixContext>(i);
  PostfixExpressionContext postfixExpression() => getRuleContext<PostfixExpressionContext>(0);
  IdentifierContext identifier() => getRuleContext<IdentifierContext>(0);
  TerminalNode DOT() => getToken(ObjectiveCParser.TOKEN_DOT, 0);
  TerminalNode STRUCTACCESS() => getToken(ObjectiveCParser.TOKEN_STRUCTACCESS, 0);
  PostfixExpressionContext([ParserRuleContext parent, int invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_postfixExpression;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is ObjectiveCParserListener) listener.enterPostfixExpression(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is ObjectiveCParserListener) listener.exitPostfixExpression(this);
  }
}

class PostfixContext extends ParserRuleContext {
  Token _RP;
  List<Token> macroArguments = List<Token>();
  Token _tset3557;
  Token op;
  TerminalNode LBRACK() => getToken(ObjectiveCParser.TOKEN_LBRACK, 0);
  ExpressionContext expression() => getRuleContext<ExpressionContext>(0);
  TerminalNode RBRACK() => getToken(ObjectiveCParser.TOKEN_RBRACK, 0);
  TerminalNode LP() => getToken(ObjectiveCParser.TOKEN_LP, 0);
  List<TerminalNode> RPs() => getTokens(ObjectiveCParser.TOKEN_RP);
  TerminalNode RP(int i) => getToken(ObjectiveCParser.TOKEN_RP, i);
  ArgumentExpressionListContext argumentExpressionList() => getRuleContext<ArgumentExpressionListContext>(0);
  List<TerminalNode> COMMAs() => getTokens(ObjectiveCParser.TOKEN_COMMA);
  TerminalNode COMMA(int i) => getToken(ObjectiveCParser.TOKEN_COMMA, i);
  TerminalNode INC() => getToken(ObjectiveCParser.TOKEN_INC, 0);
  TerminalNode DEC() => getToken(ObjectiveCParser.TOKEN_DEC, 0);
  PostfixContext([ParserRuleContext parent, int invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_postfix;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is ObjectiveCParserListener) listener.enterPostfix(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is ObjectiveCParserListener) listener.exitPostfix(this);
  }
}

class ArgumentExpressionListContext extends ParserRuleContext {
  List<ArgumentExpressionContext> argumentExpressions() => getRuleContexts<ArgumentExpressionContext>();
  ArgumentExpressionContext argumentExpression(int i) => getRuleContext<ArgumentExpressionContext>(i);
  List<TerminalNode> COMMAs() => getTokens(ObjectiveCParser.TOKEN_COMMA);
  TerminalNode COMMA(int i) => getToken(ObjectiveCParser.TOKEN_COMMA, i);
  ArgumentExpressionListContext([ParserRuleContext parent, int invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_argumentExpressionList;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is ObjectiveCParserListener) listener.enterArgumentExpressionList(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is ObjectiveCParserListener) listener.exitArgumentExpressionList(this);
  }
}

class ArgumentExpressionContext extends ParserRuleContext {
  ExpressionContext expression() => getRuleContext<ExpressionContext>(0);
  TypeSpecifierContext typeSpecifier() => getRuleContext<TypeSpecifierContext>(0);
  ArgumentExpressionContext([ParserRuleContext parent, int invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_argumentExpression;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is ObjectiveCParserListener) listener.enterArgumentExpression(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is ObjectiveCParserListener) listener.exitArgumentExpression(this);
  }
}

class OsVersionContext extends ParserRuleContext {
  IdentifierContext os;
  Token min;
  Token max;
  IdentifierContext identifier() => getRuleContext<IdentifierContext>(0);
  TerminalNode LP() => getToken(ObjectiveCParser.TOKEN_LP, 0);
  TerminalNode RP() => getToken(ObjectiveCParser.TOKEN_RP, 0);
  List<TerminalNode> FLOATING_POINT_LITERALs() => getTokens(ObjectiveCParser.TOKEN_FLOATING_POINT_LITERAL);
  TerminalNode FLOATING_POINT_LITERAL(int i) => getToken(ObjectiveCParser.TOKEN_FLOATING_POINT_LITERAL, i);
  List<TerminalNode> VERSION_SEMATICs() => getTokens(ObjectiveCParser.TOKEN_VERSION_SEMATIC);
  TerminalNode VERSION_SEMATIC(int i) => getToken(ObjectiveCParser.TOKEN_VERSION_SEMATIC, i);
  List<TerminalNode> IDENTIFIERs() => getTokens(ObjectiveCParser.TOKEN_IDENTIFIER);
  TerminalNode IDENTIFIER(int i) => getToken(ObjectiveCParser.TOKEN_IDENTIFIER, i);
  TerminalNode COMMA() => getToken(ObjectiveCParser.TOKEN_COMMA, 0);
  OsVersionContext([ParserRuleContext parent, int invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_osVersion;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is ObjectiveCParserListener) listener.enterOsVersion(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is ObjectiveCParserListener) listener.exitOsVersion(this);
  }
}

class PrimaryExpressionContext extends ParserRuleContext {
  IdentifierContext identifier() => getRuleContext<IdentifierContext>(0);
  ConstantContext constant() => getRuleContext<ConstantContext>(0);
  StringLiteralContext stringLiteral() => getRuleContext<StringLiteralContext>(0);
  TerminalNode LP() => getToken(ObjectiveCParser.TOKEN_LP, 0);
  ExpressionContext expression() => getRuleContext<ExpressionContext>(0);
  TerminalNode RP() => getToken(ObjectiveCParser.TOKEN_RP, 0);
  MessageExpressionContext messageExpression() => getRuleContext<MessageExpressionContext>(0);
  SelectorExpressionContext selectorExpression() => getRuleContext<SelectorExpressionContext>(0);
  ProtocolExpressionContext protocolExpression() => getRuleContext<ProtocolExpressionContext>(0);
  EncodeExpressionContext encodeExpression() => getRuleContext<EncodeExpressionContext>(0);
  DictionaryExpressionContext dictionaryExpression() => getRuleContext<DictionaryExpressionContext>(0);
  ArrayExpressionContext arrayExpression() => getRuleContext<ArrayExpressionContext>(0);
  BoxExpressionContext boxExpression() => getRuleContext<BoxExpressionContext>(0);
  BlockExpressionContext blockExpression() => getRuleContext<BlockExpressionContext>(0);
  PrimaryExpressionContext([ParserRuleContext parent, int invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_primaryExpression;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is ObjectiveCParserListener) listener.enterPrimaryExpression(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is ObjectiveCParserListener) listener.exitPrimaryExpression(this);
  }
}

class ConstantContext extends ParserRuleContext {
  TerminalNode HEX_LITERAL() => getToken(ObjectiveCParser.TOKEN_HEX_LITERAL, 0);
  TerminalNode OCTAL_LITERAL() => getToken(ObjectiveCParser.TOKEN_OCTAL_LITERAL, 0);
  TerminalNode BINARY_LITERAL() => getToken(ObjectiveCParser.TOKEN_BINARY_LITERAL, 0);
  TerminalNode DECIMAL_LITERAL() => getToken(ObjectiveCParser.TOKEN_DECIMAL_LITERAL, 0);
  TerminalNode ADD() => getToken(ObjectiveCParser.TOKEN_ADD, 0);
  TerminalNode SUB() => getToken(ObjectiveCParser.TOKEN_SUB, 0);
  TerminalNode FLOATING_POINT_LITERAL() => getToken(ObjectiveCParser.TOKEN_FLOATING_POINT_LITERAL, 0);
  TerminalNode CHARACTER_LITERAL() => getToken(ObjectiveCParser.TOKEN_CHARACTER_LITERAL, 0);
  TerminalNode NIL() => getToken(ObjectiveCParser.TOKEN_NIL, 0);
  TerminalNode NULL() => getToken(ObjectiveCParser.TOKEN_NULL, 0);
  TerminalNode YES() => getToken(ObjectiveCParser.TOKEN_YES, 0);
  TerminalNode NO() => getToken(ObjectiveCParser.TOKEN_NO, 0);
  TerminalNode TRUE() => getToken(ObjectiveCParser.TOKEN_TRUE, 0);
  TerminalNode FALSE() => getToken(ObjectiveCParser.TOKEN_FALSE, 0);
  ConstantContext([ParserRuleContext parent, int invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_constant;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is ObjectiveCParserListener) listener.enterConstant(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is ObjectiveCParserListener) listener.exitConstant(this);
  }
}

class StringLiteralContext extends ParserRuleContext {
  List<TerminalNode> STRING_STARTs() => getTokens(ObjectiveCParser.TOKEN_STRING_START);
  TerminalNode STRING_START(int i) => getToken(ObjectiveCParser.TOKEN_STRING_START, i);
  List<TerminalNode> STRING_ENDs() => getTokens(ObjectiveCParser.TOKEN_STRING_END);
  TerminalNode STRING_END(int i) => getToken(ObjectiveCParser.TOKEN_STRING_END, i);
  List<TerminalNode> STRING_VALUEs() => getTokens(ObjectiveCParser.TOKEN_STRING_VALUE);
  TerminalNode STRING_VALUE(int i) => getToken(ObjectiveCParser.TOKEN_STRING_VALUE, i);
  List<TerminalNode> STRING_NEWLINEs() => getTokens(ObjectiveCParser.TOKEN_STRING_NEWLINE);
  TerminalNode STRING_NEWLINE(int i) => getToken(ObjectiveCParser.TOKEN_STRING_NEWLINE, i);
  StringLiteralContext([ParserRuleContext parent, int invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_stringLiteral;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is ObjectiveCParserListener) listener.enterStringLiteral(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is ObjectiveCParserListener) listener.exitStringLiteral(this);
  }
}

class IdentifierContext extends ParserRuleContext {
  TerminalNode IDENTIFIER() => getToken(ObjectiveCParser.TOKEN_IDENTIFIER, 0);
  TerminalNode BOOL() => getToken(ObjectiveCParser.TOKEN_BOOL, 0);
  TerminalNode Class() => getToken(ObjectiveCParser.TOKEN_Class, 0);
  TerminalNode BYCOPY() => getToken(ObjectiveCParser.TOKEN_BYCOPY, 0);
  TerminalNode BYREF() => getToken(ObjectiveCParser.TOKEN_BYREF, 0);
  TerminalNode ID() => getToken(ObjectiveCParser.TOKEN_ID, 0);
  TerminalNode IMP() => getToken(ObjectiveCParser.TOKEN_IMP, 0);
  TerminalNode IN() => getToken(ObjectiveCParser.TOKEN_IN, 0);
  TerminalNode INOUT() => getToken(ObjectiveCParser.TOKEN_INOUT, 0);
  TerminalNode ONEWAY() => getToken(ObjectiveCParser.TOKEN_ONEWAY, 0);
  TerminalNode OUT() => getToken(ObjectiveCParser.TOKEN_OUT, 0);
  TerminalNode PROTOCOL_() => getToken(ObjectiveCParser.TOKEN_PROTOCOL_, 0);
  TerminalNode SEL() => getToken(ObjectiveCParser.TOKEN_SEL, 0);
  TerminalNode SELF() => getToken(ObjectiveCParser.TOKEN_SELF, 0);
  TerminalNode SUPER() => getToken(ObjectiveCParser.TOKEN_SUPER, 0);
  TerminalNode ATOMIC() => getToken(ObjectiveCParser.TOKEN_ATOMIC, 0);
  TerminalNode NONATOMIC() => getToken(ObjectiveCParser.TOKEN_NONATOMIC, 0);
  TerminalNode RETAIN() => getToken(ObjectiveCParser.TOKEN_RETAIN, 0);
  TerminalNode AUTORELEASING_QUALIFIER() => getToken(ObjectiveCParser.TOKEN_AUTORELEASING_QUALIFIER, 0);
  TerminalNode BLOCK() => getToken(ObjectiveCParser.TOKEN_BLOCK, 0);
  TerminalNode BRIDGE_RETAINED() => getToken(ObjectiveCParser.TOKEN_BRIDGE_RETAINED, 0);
  TerminalNode BRIDGE_TRANSFER() => getToken(ObjectiveCParser.TOKEN_BRIDGE_TRANSFER, 0);
  TerminalNode COVARIANT() => getToken(ObjectiveCParser.TOKEN_COVARIANT, 0);
  TerminalNode CONTRAVARIANT() => getToken(ObjectiveCParser.TOKEN_CONTRAVARIANT, 0);
  TerminalNode DEPRECATED() => getToken(ObjectiveCParser.TOKEN_DEPRECATED, 0);
  TerminalNode KINDOF() => getToken(ObjectiveCParser.TOKEN_KINDOF, 0);
  TerminalNode UNUSED() => getToken(ObjectiveCParser.TOKEN_UNUSED, 0);
  TerminalNode NS_INLINE() => getToken(ObjectiveCParser.TOKEN_NS_INLINE, 0);
  TerminalNode NS_ENUM() => getToken(ObjectiveCParser.TOKEN_NS_ENUM, 0);
  TerminalNode NS_OPTIONS() => getToken(ObjectiveCParser.TOKEN_NS_OPTIONS, 0);
  TerminalNode NULL_UNSPECIFIED() => getToken(ObjectiveCParser.TOKEN_NULL_UNSPECIFIED, 0);
  TerminalNode NULLABLE() => getToken(ObjectiveCParser.TOKEN_NULLABLE, 0);
  TerminalNode NONNULL() => getToken(ObjectiveCParser.TOKEN_NONNULL, 0);
  TerminalNode NULL_RESETTABLE() => getToken(ObjectiveCParser.TOKEN_NULL_RESETTABLE, 0);
  TerminalNode ASSIGN() => getToken(ObjectiveCParser.TOKEN_ASSIGN, 0);
  TerminalNode COPY() => getToken(ObjectiveCParser.TOKEN_COPY, 0);
  TerminalNode GETTER() => getToken(ObjectiveCParser.TOKEN_GETTER, 0);
  TerminalNode SETTER() => getToken(ObjectiveCParser.TOKEN_SETTER, 0);
  TerminalNode STRONG() => getToken(ObjectiveCParser.TOKEN_STRONG, 0);
  TerminalNode READONLY() => getToken(ObjectiveCParser.TOKEN_READONLY, 0);
  TerminalNode READWRITE() => getToken(ObjectiveCParser.TOKEN_READWRITE, 0);
  TerminalNode WEAK() => getToken(ObjectiveCParser.TOKEN_WEAK, 0);
  TerminalNode UNSAFE_UNRETAINED() => getToken(ObjectiveCParser.TOKEN_UNSAFE_UNRETAINED, 0);
  TerminalNode IB_OUTLET() => getToken(ObjectiveCParser.TOKEN_IB_OUTLET, 0);
  TerminalNode IB_OUTLET_COLLECTION() => getToken(ObjectiveCParser.TOKEN_IB_OUTLET_COLLECTION, 0);
  TerminalNode IB_INSPECTABLE() => getToken(ObjectiveCParser.TOKEN_IB_INSPECTABLE, 0);
  TerminalNode IB_DESIGNABLE() => getToken(ObjectiveCParser.TOKEN_IB_DESIGNABLE, 0);
  IdentifierContext([ParserRuleContext parent, int invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_identifier;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is ObjectiveCParserListener) listener.enterIdentifier(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is ObjectiveCParserListener) listener.exitIdentifier(this);
  }
}

