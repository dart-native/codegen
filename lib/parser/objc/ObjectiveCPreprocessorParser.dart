// Generated from ObjectiveCPreprocessorParser.g4 by ANTLR 4.9
// ignore_for_file: unused_import, unused_local_variable, prefer_single_quotes
import 'package:antlr4/antlr4.dart';
import 'dart:io';

import 'ObjectiveCPreprocessorParserListener.dart';
import 'ObjectiveCPreprocessorParserBaseListener.dart';

const int RULE_directive = 0,
    RULE_directiveText = 1,
    RULE_preprocessorExpression = 2;

class ObjectiveCPreprocessorParser extends Parser {
  static final checkVersion =
      () => RuntimeMetaData.checkVersion('4.9', RuntimeMetaData.VERSION);
  static const int TOKEN_EOF = IntStream.EOF;

  static final List<DFA> _decisionToDFA = List.generate(
      _ATN.numberOfDecisions, (i) => DFA(_ATN.getDecisionState(i), i));
  static final PredictionContextCache _sharedContextCache =
      PredictionContextCache();
  static const int TOKEN_AUTO = 1,
      TOKEN_BREAK = 2,
      TOKEN_CASE = 3,
      TOKEN_CHAR = 4,
      TOKEN_CONST = 5,
      TOKEN_CONTINUE = 6,
      TOKEN_DEFAULT = 7,
      TOKEN_DO = 8,
      TOKEN_DOUBLE = 9,
      TOKEN_ELSE = 10,
      TOKEN_ENUM = 11,
      TOKEN_EXTERN = 12,
      TOKEN_FLOAT = 13,
      TOKEN_FOR = 14,
      TOKEN_GOTO = 15,
      TOKEN_IF = 16,
      TOKEN_INLINE = 17,
      TOKEN_INT = 18,
      TOKEN_LONG = 19,
      TOKEN_REGISTER = 20,
      TOKEN_RESTRICT = 21,
      TOKEN_RETURN = 22,
      TOKEN_SHORT = 23,
      TOKEN_SIGNED = 24,
      TOKEN_SIZEOF = 25,
      TOKEN_STATIC = 26,
      TOKEN_STRUCT = 27,
      TOKEN_SWITCH = 28,
      TOKEN_TYPEDEF = 29,
      TOKEN_UNION = 30,
      TOKEN_UNSIGNED = 31,
      TOKEN_VOID = 32,
      TOKEN_VOLATILE = 33,
      TOKEN_WHILE = 34,
      TOKEN_BOOL_ = 35,
      TOKEN_COMPLEX = 36,
      TOKEN_IMAGINERY = 37,
      TOKEN_TRUE = 38,
      TOKEN_FALSE = 39,
      TOKEN_BOOL = 40,
      TOKEN_Class = 41,
      TOKEN_BYCOPY = 42,
      TOKEN_BYREF = 43,
      TOKEN_ID = 44,
      TOKEN_IMP = 45,
      TOKEN_IN = 46,
      TOKEN_INOUT = 47,
      TOKEN_NIL = 48,
      TOKEN_NO = 49,
      TOKEN_NULL = 50,
      TOKEN_ONEWAY = 51,
      TOKEN_OUT = 52,
      TOKEN_PROTOCOL_ = 53,
      TOKEN_SEL = 54,
      TOKEN_SELF = 55,
      TOKEN_SUPER = 56,
      TOKEN_YES = 57,
      TOKEN_AUTORELEASEPOOL = 58,
      TOKEN_CATCH = 59,
      TOKEN_CLASS = 60,
      TOKEN_DYNAMIC = 61,
      TOKEN_ENCODE = 62,
      TOKEN_END = 63,
      TOKEN_FINALLY = 64,
      TOKEN_IMPLEMENTATION = 65,
      TOKEN_INTERFACE = 66,
      TOKEN_IMPORT = 67,
      TOKEN_PACKAGE = 68,
      TOKEN_PROTOCOL = 69,
      TOKEN_OPTIONAL = 70,
      TOKEN_PRIVATE = 71,
      TOKEN_PROPERTY = 72,
      TOKEN_PROTECTED = 73,
      TOKEN_PUBLIC = 74,
      TOKEN_REQUIRED = 75,
      TOKEN_SELECTOR = 76,
      TOKEN_SYNCHRONIZED = 77,
      TOKEN_SYNTHESIZE = 78,
      TOKEN_THROW = 79,
      TOKEN_TRY = 80,
      TOKEN_ATOMIC = 81,
      TOKEN_NONATOMIC = 82,
      TOKEN_RETAIN = 83,
      TOKEN_ATTRIBUTE = 84,
      TOKEN_AUTORELEASING_QUALIFIER = 85,
      TOKEN_BLOCK = 86,
      TOKEN_BRIDGE = 87,
      TOKEN_BRIDGE_RETAINED = 88,
      TOKEN_BRIDGE_TRANSFER = 89,
      TOKEN_COVARIANT = 90,
      TOKEN_CONTRAVARIANT = 91,
      TOKEN_DEPRECATED = 92,
      TOKEN_KINDOF = 93,
      TOKEN_STRONG_QUALIFIER = 94,
      TOKEN_TYPEOF = 95,
      TOKEN_UNSAFE_UNRETAINED_QUALIFIER = 96,
      TOKEN_UNUSED = 97,
      TOKEN_WEAK_QUALIFIER = 98,
      TOKEN_NULL_UNSPECIFIED = 99,
      TOKEN_NULLABLE = 100,
      TOKEN_NONNULL = 101,
      TOKEN_NULL_RESETTABLE = 102,
      TOKEN_NS_INLINE = 103,
      TOKEN_NS_ENUM = 104,
      TOKEN_NS_OPTIONS = 105,
      TOKEN_NS_CLOSED_ENUM = 106,
      TOKEN_NS_TYPED_EXTENSIBLE_ENUM = 107,
      TOKEN_NS_ERROR_ENUM = 108,
      TOKEN_ASSIGN = 109,
      TOKEN_COPY = 110,
      TOKEN_GETTER = 111,
      TOKEN_SETTER = 112,
      TOKEN_STRONG = 113,
      TOKEN_READONLY = 114,
      TOKEN_READWRITE = 115,
      TOKEN_WEAK = 116,
      TOKEN_UNSAFE_UNRETAINED = 117,
      TOKEN_IB_OUTLET = 118,
      TOKEN_IB_OUTLET_COLLECTION = 119,
      TOKEN_IB_INSPECTABLE = 120,
      TOKEN_IB_DESIGNABLE = 121,
      TOKEN_NS_ASSUME_NONNULL_BEGIN = 122,
      TOKEN_NS_ASSUME_NONNULL_END = 123,
      TOKEN_EXTERN_SUFFIX = 124,
      TOKEN_IOS_SUFFIX = 125,
      TOKEN_MAC_SUFFIX = 126,
      TOKEN_TVOS_PROHIBITED = 127,
      TOKEN_NS_NOESCAPE = 128,
      TOKEN_EXPORT_SUFFIX = 129,
      TOKEN_NS_RETURNS_RETAINED = 130,
      TOKEN_NS_RETURNS_NOT_RETAINED = 131,
      TOKEN_NS_RETURNS_INNER_POINTER = 132,
      TOKEN_CF_RETURNS_RETAINED = 133,
      TOKEN_CF_RETURNS_NOT_RETAINED = 134,
      TOKEN_CF_CONSUMED = 135,
      TOKEN_IDENTIFIER = 136,
      TOKEN_LP = 137,
      TOKEN_RP = 138,
      TOKEN_LBRACE = 139,
      TOKEN_RBRACE = 140,
      TOKEN_LBRACK = 141,
      TOKEN_RBRACK = 142,
      TOKEN_SEMI = 143,
      TOKEN_COMMA = 144,
      TOKEN_DOT = 145,
      TOKEN_STRUCTACCESS = 146,
      TOKEN_AT = 147,
      TOKEN_ASSIGNMENT = 148,
      TOKEN_GT = 149,
      TOKEN_LT = 150,
      TOKEN_BANG = 151,
      TOKEN_TILDE = 152,
      TOKEN_QUESTION = 153,
      TOKEN_COLON = 154,
      TOKEN_EQUAL = 155,
      TOKEN_LE = 156,
      TOKEN_GE = 157,
      TOKEN_NOTEQUAL = 158,
      TOKEN_AND = 159,
      TOKEN_OR = 160,
      TOKEN_INC = 161,
      TOKEN_DEC = 162,
      TOKEN_ADD = 163,
      TOKEN_SUB = 164,
      TOKEN_MUL = 165,
      TOKEN_DIV = 166,
      TOKEN_BITAND = 167,
      TOKEN_BITOR = 168,
      TOKEN_BITXOR = 169,
      TOKEN_MOD = 170,
      TOKEN_ADD_ASSIGN = 171,
      TOKEN_SUB_ASSIGN = 172,
      TOKEN_MUL_ASSIGN = 173,
      TOKEN_DIV_ASSIGN = 174,
      TOKEN_AND_ASSIGN = 175,
      TOKEN_OR_ASSIGN = 176,
      TOKEN_XOR_ASSIGN = 177,
      TOKEN_MOD_ASSIGN = 178,
      TOKEN_LSHIFT_ASSIGN = 179,
      TOKEN_RSHIFT_ASSIGN = 180,
      TOKEN_ELIPSIS = 181,
      TOKEN_CHARACTER_LITERAL = 182,
      TOKEN_STRING_START = 183,
      TOKEN_HEX_LITERAL = 184,
      TOKEN_OCTAL_LITERAL = 185,
      TOKEN_BINARY_LITERAL = 186,
      TOKEN_DECIMAL_LITERAL = 187,
      TOKEN_FLOATING_POINT_LITERAL = 188,
      TOKEN_VERSION_SEMATIC = 189,
      TOKEN_WS = 190,
      TOKEN_MULTI_COMMENT = 191,
      TOKEN_SINGLE_COMMENT = 192,
      TOKEN_BACKSLASH = 193,
      TOKEN_SHARP = 194,
      TOKEN_STRING_NEWLINE = 195,
      TOKEN_STRING_END = 196,
      TOKEN_STRING_VALUE = 197,
      TOKEN_DIRECTIVE_IMPORT = 198,
      TOKEN_DIRECTIVE_INCLUDE = 199,
      TOKEN_DIRECTIVE_PRAGMA = 200,
      TOKEN_DIRECTIVE_DEFINE = 201,
      TOKEN_DIRECTIVE_DEFINED = 202,
      TOKEN_DIRECTIVE_IF = 203,
      TOKEN_DIRECTIVE_ELIF = 204,
      TOKEN_DIRECTIVE_ELSE = 205,
      TOKEN_DIRECTIVE_UNDEF = 206,
      TOKEN_DIRECTIVE_IFDEF = 207,
      TOKEN_DIRECTIVE_IFNDEF = 208,
      TOKEN_DIRECTIVE_ENDIF = 209,
      TOKEN_DIRECTIVE_TRUE = 210,
      TOKEN_DIRECTIVE_FALSE = 211,
      TOKEN_DIRECTIVE_ERROR = 212,
      TOKEN_DIRECTIVE_WARNING = 213,
      TOKEN_DIRECTIVE_BANG = 214,
      TOKEN_DIRECTIVE_LP = 215,
      TOKEN_DIRECTIVE_RP = 216,
      TOKEN_DIRECTIVE_EQUAL = 217,
      TOKEN_DIRECTIVE_NOTEQUAL = 218,
      TOKEN_DIRECTIVE_AND = 219,
      TOKEN_DIRECTIVE_OR = 220,
      TOKEN_DIRECTIVE_LT = 221,
      TOKEN_DIRECTIVE_GT = 222,
      TOKEN_DIRECTIVE_LE = 223,
      TOKEN_DIRECTIVE_GE = 224,
      TOKEN_DIRECTIVE_ADD = 225,
      TOKEN_DIRECTIVE_SUB = 226,
      TOKEN_DIRECTIVE_MUL = 227,
      TOKEN_DIRECTIVE_DIV = 228,
      TOKEN_DIRECTIVE_BITAND = 229,
      TOKEN_DIRECTIVE_BITOR = 230,
      TOKEN_DIRECTIVE_BITXOR = 231,
      TOKEN_DIRECTIVE_MOD = 232,
      TOKEN_DIRECTIVE_DOT = 233,
      TOKEN_DIRECTIVE_STRING = 234,
      TOKEN_DIRECTIVE_ID = 235,
      TOKEN_DIRECTIVE_DECIMAL_LITERAL = 236,
      TOKEN_DIRECTIVE_FLOAT = 237,
      TOKEN_DIRECTIVE_NEWLINE = 238,
      TOKEN_DIRECTIVE_MULTI_COMMENT = 239,
      TOKEN_DIRECTIVE_SINGLE_COMMENT = 240,
      TOKEN_DIRECTIVE_BACKSLASH_NEWLINE = 241,
      TOKEN_DIRECTIVE_TEXT_NEWLINE = 242,
      TOKEN_DIRECTIVE_TEXT = 243;

  @override
  final List<String> ruleNames = [
    'directive',
    'directiveText',
    'preprocessorExpression'
  ];

  static final List<String> _LITERAL_NAMES = [
    null,
    "'auto'",
    "'break'",
    "'case'",
    "'char'",
    "'const'",
    "'continue'",
    "'default'",
    "'do'",
    "'double'",
    null,
    "'enum'",
    "'extern'",
    "'float'",
    "'for'",
    "'goto'",
    null,
    "'inline'",
    "'int'",
    "'long'",
    "'register'",
    "'restrict'",
    "'return'",
    "'short'",
    "'signed'",
    "'sizeof'",
    "'static'",
    "'struct'",
    "'switch'",
    "'typedef'",
    "'union'",
    "'unsigned'",
    "'void'",
    "'volatile'",
    "'while'",
    "'_Bool'",
    "'_Complex'",
    "'_Imaginery'",
    "'true'",
    "'false'",
    "'BOOL'",
    "'Class'",
    "'bycopy'",
    "'byref'",
    "'id'",
    "'IMP'",
    "'in'",
    "'inout'",
    "'nil'",
    "'NO'",
    "'NULL'",
    "'oneway'",
    "'out'",
    "'Protocol'",
    "'SEL'",
    "'self'",
    "'super'",
    "'YES'",
    "'@autoreleasepool'",
    "'@catch'",
    "'@class'",
    "'@dynamic'",
    "'@encode'",
    "'@end'",
    "'@finally'",
    "'@implementation'",
    "'@interface'",
    null,
    "'@package'",
    "'@protocol'",
    "'@optional'",
    "'@private'",
    "'@property'",
    "'@protected'",
    "'@public'",
    "'@required'",
    "'@selector'",
    "'@synchronized'",
    "'@synthesize'",
    "'@throw'",
    "'@try'",
    "'atomic'",
    "'nonatomic'",
    "'retain'",
    "'__attribute__'",
    "'__autoreleasing'",
    "'__block'",
    "'__bridge'",
    "'__bridge_retained'",
    "'__bridge_transfer'",
    "'__covariant'",
    "'__contravariant'",
    "'__deprecated'",
    "'__kindof'",
    "'__strong'",
    null,
    "'__unsafe_unretained'",
    "'__unused'",
    "'__weak'",
    null,
    null,
    null,
    "'null_resettable'",
    "'NS_INLINE'",
    "'NS_ENUM'",
    "'NS_OPTIONS'",
    "'NS_CLOSED_ENUM'",
    "'NS_TYPED_EXTENSIBLE_ENUM'",
    "'NS_ERROR_ENUM'",
    "'assign'",
    "'copy'",
    "'getter'",
    "'setter'",
    "'strong'",
    "'readonly'",
    "'readwrite'",
    "'weak'",
    "'unsafe_unretained'",
    "'IBOutlet'",
    "'IBOutletCollection'",
    "'IBInspectable'",
    "'IB_DESIGNABLE'",
    null,
    null,
    null,
    null,
    null,
    "'__TVOS_PROHIBITED'",
    "'NS_NOESCAPE'",
    null,
    "'NS_RETURNS_RETAINED'",
    "'NS_RETURNS_NOT_RETAINED'",
    "'NS_RETURNS_INNER_POINTER'",
    "'CF_RETURNS_RETAINED'",
    "'CF_RETURNS_NOT_RETAINED'",
    "'CF_CONSUMED'",
    null,
    null,
    null,
    "'{'",
    "'}'",
    "'['",
    "']'",
    "';'",
    "','",
    null,
    "'->'",
    "'@'",
    "'='",
    null,
    null,
    null,
    "'~'",
    "'?'",
    "':'",
    null,
    null,
    null,
    null,
    null,
    null,
    "'++'",
    "'--'",
    null,
    null,
    null,
    null,
    null,
    null,
    null,
    null,
    "'+='",
    "'-='",
    "'*='",
    "'/='",
    "'&='",
    "'|='",
    "'^='",
    "'%='",
    "'<<='",
    "'>>='",
    "'...'",
    null,
    null,
    null,
    null,
    null,
    null,
    null,
    null,
    null,
    null,
    null,
    "'\\'",
    null,
    null,
    null,
    null,
    null,
    null,
    null,
    null,
    "'defined'",
    null,
    "'elif'",
    null,
    "'undef'",
    "'ifdef'",
    "'ifndef'",
    "'endif'"
  ];
  static final List<String> _SYMBOLIC_NAMES = [
    null,
    "AUTO",
    "BREAK",
    "CASE",
    "CHAR",
    "CONST",
    "CONTINUE",
    "DEFAULT",
    "DO",
    "DOUBLE",
    "ELSE",
    "ENUM",
    "EXTERN",
    "FLOAT",
    "FOR",
    "GOTO",
    "IF",
    "INLINE",
    "INT",
    "LONG",
    "REGISTER",
    "RESTRICT",
    "RETURN",
    "SHORT",
    "SIGNED",
    "SIZEOF",
    "STATIC",
    "STRUCT",
    "SWITCH",
    "TYPEDEF",
    "UNION",
    "UNSIGNED",
    "VOID",
    "VOLATILE",
    "WHILE",
    "BOOL_",
    "COMPLEX",
    "IMAGINERY",
    "TRUE",
    "FALSE",
    "BOOL",
    "Class",
    "BYCOPY",
    "BYREF",
    "ID",
    "IMP",
    "IN",
    "INOUT",
    "NIL",
    "NO",
    "NULL",
    "ONEWAY",
    "OUT",
    "PROTOCOL_",
    "SEL",
    "SELF",
    "SUPER",
    "YES",
    "AUTORELEASEPOOL",
    "CATCH",
    "CLASS",
    "DYNAMIC",
    "ENCODE",
    "END",
    "FINALLY",
    "IMPLEMENTATION",
    "INTERFACE",
    "IMPORT",
    "PACKAGE",
    "PROTOCOL",
    "OPTIONAL",
    "PRIVATE",
    "PROPERTY",
    "PROTECTED",
    "PUBLIC",
    "REQUIRED",
    "SELECTOR",
    "SYNCHRONIZED",
    "SYNTHESIZE",
    "THROW",
    "TRY",
    "ATOMIC",
    "NONATOMIC",
    "RETAIN",
    "ATTRIBUTE",
    "AUTORELEASING_QUALIFIER",
    "BLOCK",
    "BRIDGE",
    "BRIDGE_RETAINED",
    "BRIDGE_TRANSFER",
    "COVARIANT",
    "CONTRAVARIANT",
    "DEPRECATED",
    "KINDOF",
    "STRONG_QUALIFIER",
    "TYPEOF",
    "UNSAFE_UNRETAINED_QUALIFIER",
    "UNUSED",
    "WEAK_QUALIFIER",
    "NULL_UNSPECIFIED",
    "NULLABLE",
    "NONNULL",
    "NULL_RESETTABLE",
    "NS_INLINE",
    "NS_ENUM",
    "NS_OPTIONS",
    "NS_CLOSED_ENUM",
    "NS_TYPED_EXTENSIBLE_ENUM",
    "NS_ERROR_ENUM",
    "ASSIGN",
    "COPY",
    "GETTER",
    "SETTER",
    "STRONG",
    "READONLY",
    "READWRITE",
    "WEAK",
    "UNSAFE_UNRETAINED",
    "IB_OUTLET",
    "IB_OUTLET_COLLECTION",
    "IB_INSPECTABLE",
    "IB_DESIGNABLE",
    "NS_ASSUME_NONNULL_BEGIN",
    "NS_ASSUME_NONNULL_END",
    "EXTERN_SUFFIX",
    "IOS_SUFFIX",
    "MAC_SUFFIX",
    "TVOS_PROHIBITED",
    "NS_NOESCAPE",
    "EXPORT_SUFFIX",
    "NS_RETURNS_RETAINED",
    "NS_RETURNS_NOT_RETAINED",
    "NS_RETURNS_INNER_POINTER",
    "CF_RETURNS_RETAINED",
    "CF_RETURNS_NOT_RETAINED",
    "CF_CONSUMED",
    "IDENTIFIER",
    "LP",
    "RP",
    "LBRACE",
    "RBRACE",
    "LBRACK",
    "RBRACK",
    "SEMI",
    "COMMA",
    "DOT",
    "STRUCTACCESS",
    "AT",
    "ASSIGNMENT",
    "GT",
    "LT",
    "BANG",
    "TILDE",
    "QUESTION",
    "COLON",
    "EQUAL",
    "LE",
    "GE",
    "NOTEQUAL",
    "AND",
    "OR",
    "INC",
    "DEC",
    "ADD",
    "SUB",
    "MUL",
    "DIV",
    "BITAND",
    "BITOR",
    "BITXOR",
    "MOD",
    "ADD_ASSIGN",
    "SUB_ASSIGN",
    "MUL_ASSIGN",
    "DIV_ASSIGN",
    "AND_ASSIGN",
    "OR_ASSIGN",
    "XOR_ASSIGN",
    "MOD_ASSIGN",
    "LSHIFT_ASSIGN",
    "RSHIFT_ASSIGN",
    "ELIPSIS",
    "CHARACTER_LITERAL",
    "STRING_START",
    "HEX_LITERAL",
    "OCTAL_LITERAL",
    "BINARY_LITERAL",
    "DECIMAL_LITERAL",
    "FLOATING_POINT_LITERAL",
    "VERSION_SEMATIC",
    "WS",
    "MULTI_COMMENT",
    "SINGLE_COMMENT",
    "BACKSLASH",
    "SHARP",
    "STRING_NEWLINE",
    "STRING_END",
    "STRING_VALUE",
    "DIRECTIVE_IMPORT",
    "DIRECTIVE_INCLUDE",
    "DIRECTIVE_PRAGMA",
    "DIRECTIVE_DEFINE",
    "DIRECTIVE_DEFINED",
    "DIRECTIVE_IF",
    "DIRECTIVE_ELIF",
    "DIRECTIVE_ELSE",
    "DIRECTIVE_UNDEF",
    "DIRECTIVE_IFDEF",
    "DIRECTIVE_IFNDEF",
    "DIRECTIVE_ENDIF",
    "DIRECTIVE_TRUE",
    "DIRECTIVE_FALSE",
    "DIRECTIVE_ERROR",
    "DIRECTIVE_WARNING",
    "DIRECTIVE_BANG",
    "DIRECTIVE_LP",
    "DIRECTIVE_RP",
    "DIRECTIVE_EQUAL",
    "DIRECTIVE_NOTEQUAL",
    "DIRECTIVE_AND",
    "DIRECTIVE_OR",
    "DIRECTIVE_LT",
    "DIRECTIVE_GT",
    "DIRECTIVE_LE",
    "DIRECTIVE_GE",
    "DIRECTIVE_ADD",
    "DIRECTIVE_SUB",
    "DIRECTIVE_MUL",
    "DIRECTIVE_DIV",
    "DIRECTIVE_BITAND",
    "DIRECTIVE_BITOR",
    "DIRECTIVE_BITXOR",
    "DIRECTIVE_MOD",
    "DIRECTIVE_DOT",
    "DIRECTIVE_STRING",
    "DIRECTIVE_ID",
    "DIRECTIVE_DECIMAL_LITERAL",
    "DIRECTIVE_FLOAT",
    "DIRECTIVE_NEWLINE",
    "DIRECTIVE_MULTI_COMMENT",
    "DIRECTIVE_SINGLE_COMMENT",
    "DIRECTIVE_BACKSLASH_NEWLINE",
    "DIRECTIVE_TEXT_NEWLINE",
    "DIRECTIVE_TEXT"
  ];
  static final Vocabulary VOCABULARY =
      VocabularyImpl(_LITERAL_NAMES, _SYMBOLIC_NAMES);

  @override
  Vocabulary get vocabulary {
    return VOCABULARY;
  }

  @override
  String get grammarFileName => 'ObjectiveCPreprocessorParser.g4';

  @override
  String get serializedATN => _serializedATN;

  @override
  ATN getATN() {
    return _ATN;
  }

  ObjectiveCPreprocessorParser(TokenStream input) : super(input) {
    interpreter =
        ParserATNSimulator(this, _ATN, _decisionToDFA, _sharedContextCache);
  }

  DirectiveContext directive() {
    dynamic _localctx = DirectiveContext(context, state);
    enterRule(_localctx, 0, RULE_directive);
    int _la;
    try {
      state = 43;
      errorHandler.sync(this);
      switch (interpreter.adaptivePredict(tokenStream, 1, context)) {
        case 1:
          _localctx = PreprocessorImportContext(_localctx);
          enterOuterAlt(_localctx, 1);
          state = 6;
          match(TOKEN_SHARP);
          state = 7;
          _la = tokenStream.LA(1);
          if (!(_la == TOKEN_DIRECTIVE_IMPORT ||
              _la == TOKEN_DIRECTIVE_INCLUDE)) {
            errorHandler.recoverInline(this);
          } else {
            if (tokenStream.LA(1) == IntStream.EOF) matchedEOF = true;
            errorHandler.reportMatch(this);
            consume();
          }
          state = 8;
          directiveText();
          break;
        case 2:
          _localctx = PreprocessorConditionalContext(_localctx);
          enterOuterAlt(_localctx, 2);
          state = 9;
          match(TOKEN_SHARP);
          state = 10;
          match(TOKEN_DIRECTIVE_IF);
          state = 11;
          preprocessorExpression(0);
          break;
        case 3:
          _localctx = PreprocessorConditionalContext(_localctx);
          enterOuterAlt(_localctx, 3);
          state = 12;
          match(TOKEN_SHARP);
          state = 13;
          match(TOKEN_DIRECTIVE_ELIF);
          state = 14;
          preprocessorExpression(0);
          break;
        case 4:
          _localctx = PreprocessorConditionalContext(_localctx);
          enterOuterAlt(_localctx, 4);
          state = 15;
          match(TOKEN_SHARP);
          state = 16;
          match(TOKEN_DIRECTIVE_ELSE);
          break;
        case 5:
          _localctx = PreprocessorConditionalContext(_localctx);
          enterOuterAlt(_localctx, 5);
          state = 17;
          match(TOKEN_SHARP);
          state = 18;
          match(TOKEN_DIRECTIVE_ENDIF);
          break;
        case 6:
          _localctx = PreprocessorDefContext(_localctx);
          enterOuterAlt(_localctx, 6);
          state = 19;
          match(TOKEN_SHARP);
          state = 20;
          match(TOKEN_DIRECTIVE_IFDEF);
          state = 21;
          match(TOKEN_DIRECTIVE_ID);
          break;
        case 7:
          _localctx = PreprocessorDefContext(_localctx);
          enterOuterAlt(_localctx, 7);
          state = 22;
          match(TOKEN_SHARP);
          state = 23;
          match(TOKEN_DIRECTIVE_IFNDEF);
          state = 24;
          match(TOKEN_DIRECTIVE_ID);
          break;
        case 8:
          _localctx = PreprocessorDefContext(_localctx);
          enterOuterAlt(_localctx, 8);
          state = 25;
          match(TOKEN_SHARP);
          state = 26;
          match(TOKEN_DIRECTIVE_UNDEF);
          state = 27;
          match(TOKEN_DIRECTIVE_ID);
          break;
        case 9:
          _localctx = PreprocessorPragmaContext(_localctx);
          enterOuterAlt(_localctx, 9);
          state = 28;
          match(TOKEN_SHARP);
          state = 29;
          match(TOKEN_DIRECTIVE_PRAGMA);
          state = 30;
          directiveText();
          break;
        case 10:
          _localctx = PreprocessorErrorContext(_localctx);
          enterOuterAlt(_localctx, 10);
          state = 31;
          match(TOKEN_SHARP);
          state = 32;
          match(TOKEN_DIRECTIVE_ERROR);
          state = 33;
          directiveText();
          break;
        case 11:
          _localctx = PreprocessorWarningContext(_localctx);
          enterOuterAlt(_localctx, 11);
          state = 34;
          match(TOKEN_SHARP);
          state = 35;
          match(TOKEN_DIRECTIVE_WARNING);
          state = 36;
          directiveText();
          break;
        case 12:
          _localctx = PreprocessorDefineContext(_localctx);
          enterOuterAlt(_localctx, 12);
          state = 37;
          match(TOKEN_SHARP);
          state = 38;
          match(TOKEN_DIRECTIVE_DEFINE);
          state = 39;
          match(TOKEN_DIRECTIVE_ID);
          state = 41;
          errorHandler.sync(this);
          _la = tokenStream.LA(1);
          if (_la == TOKEN_DIRECTIVE_TEXT_NEWLINE ||
              _la == TOKEN_DIRECTIVE_TEXT) {
            state = 40;
            directiveText();
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

  DirectiveTextContext directiveText() {
    dynamic _localctx = DirectiveTextContext(context, state);
    enterRule(_localctx, 2, RULE_directiveText);
    int _la;
    try {
      enterOuterAlt(_localctx, 1);
      state = 46;
      errorHandler.sync(this);
      _la = tokenStream.LA(1);
      do {
        state = 45;
        _la = tokenStream.LA(1);
        if (!(_la == TOKEN_DIRECTIVE_TEXT_NEWLINE ||
            _la == TOKEN_DIRECTIVE_TEXT)) {
          errorHandler.recoverInline(this);
        } else {
          if (tokenStream.LA(1) == IntStream.EOF) matchedEOF = true;
          errorHandler.reportMatch(this);
          consume();
        }
        state = 48;
        errorHandler.sync(this);
        _la = tokenStream.LA(1);
      } while (
          _la == TOKEN_DIRECTIVE_TEXT_NEWLINE || _la == TOKEN_DIRECTIVE_TEXT);
    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return _localctx;
  }

  PreprocessorExpressionContext preprocessorExpression([int _p = 0]) {
    final _parentctx = context;
    final _parentState = state;
    dynamic _localctx = PreprocessorExpressionContext(context, _parentState);
    var _prevctx = _localctx;
    var _startState = 4;
    enterRecursionRule(_localctx, 4, RULE_preprocessorExpression, _p);
    int _la;
    try {
      int _alt;
      enterOuterAlt(_localctx, 1);
      state = 75;
      errorHandler.sync(this);
      switch (tokenStream.LA(1)) {
        case TOKEN_DIRECTIVE_TRUE:
          _localctx = PreprocessorConstantContext(_localctx);
          context = _localctx;
          _prevctx = _localctx;

          state = 51;
          match(TOKEN_DIRECTIVE_TRUE);
          break;
        case TOKEN_DIRECTIVE_FALSE:
          _localctx = PreprocessorConstantContext(_localctx);
          context = _localctx;
          _prevctx = _localctx;
          state = 52;
          match(TOKEN_DIRECTIVE_FALSE);
          break;
        case TOKEN_DIRECTIVE_DECIMAL_LITERAL:
          _localctx = PreprocessorConstantContext(_localctx);
          context = _localctx;
          _prevctx = _localctx;
          state = 53;
          match(TOKEN_DIRECTIVE_DECIMAL_LITERAL);
          break;
        case TOKEN_DIRECTIVE_STRING:
          _localctx = PreprocessorConstantContext(_localctx);
          context = _localctx;
          _prevctx = _localctx;
          state = 54;
          match(TOKEN_DIRECTIVE_STRING);
          break;
        case TOKEN_DIRECTIVE_ID:
          _localctx = PreprocessorConditionalSymbolContext(_localctx);
          context = _localctx;
          _prevctx = _localctx;
          state = 55;
          match(TOKEN_DIRECTIVE_ID);
          state = 60;
          errorHandler.sync(this);
          switch (interpreter.adaptivePredict(tokenStream, 3, context)) {
            case 1:
              state = 56;
              match(TOKEN_DIRECTIVE_LP);
              state = 57;
              preprocessorExpression(0);
              state = 58;
              match(TOKEN_DIRECTIVE_RP);
              break;
          }
          break;
        case TOKEN_DIRECTIVE_LP:
          _localctx = PreprocessorParenthesisContext(_localctx);
          context = _localctx;
          _prevctx = _localctx;
          state = 62;
          match(TOKEN_DIRECTIVE_LP);
          state = 63;
          preprocessorExpression(0);
          state = 64;
          match(TOKEN_DIRECTIVE_RP);
          break;
        case TOKEN_DIRECTIVE_BANG:
          _localctx = PreprocessorNotContext(_localctx);
          context = _localctx;
          _prevctx = _localctx;
          state = 66;
          match(TOKEN_DIRECTIVE_BANG);
          state = 67;
          preprocessorExpression(6);
          break;
        case TOKEN_DIRECTIVE_DEFINED:
          _localctx = PreprocessorDefinedContext(_localctx);
          context = _localctx;
          _prevctx = _localctx;
          state = 68;
          match(TOKEN_DIRECTIVE_DEFINED);
          state = 73;
          errorHandler.sync(this);
          switch (tokenStream.LA(1)) {
            case TOKEN_DIRECTIVE_ID:
              state = 69;
              match(TOKEN_DIRECTIVE_ID);
              break;
            case TOKEN_DIRECTIVE_LP:
              state = 70;
              match(TOKEN_DIRECTIVE_LP);
              state = 71;
              match(TOKEN_DIRECTIVE_ID);
              state = 72;
              match(TOKEN_DIRECTIVE_RP);
              break;
            default:
              throw NoViableAltException(this);
          }
          break;
        default:
          throw NoViableAltException(this);
      }
      context.stop = tokenStream.LT(-1);
      state = 91;
      errorHandler.sync(this);
      _alt = interpreter.adaptivePredict(tokenStream, 7, context);
      while (_alt != 2 && _alt != ATN.INVALID_ALT_NUMBER) {
        if (_alt == 1) {
          if (parseListeners != null) triggerExitRuleEvent();
          _prevctx = _localctx;
          state = 89;
          errorHandler.sync(this);
          switch (interpreter.adaptivePredict(tokenStream, 6, context)) {
            case 1:
              _localctx = PreprocessorBinaryContext(
                  new PreprocessorExpressionContext(_parentctx, _parentState));
              pushNewRecursionContext(
                  _localctx, _startState, RULE_preprocessorExpression);
              state = 77;
              if (!(precpred(context, 5))) {
                throw FailedPredicateException(this, "precpred(context, 5)");
              }
              state = 78;
              _localctx.op = tokenStream.LT(1);
              _la = tokenStream.LA(1);
              if (!(_la == TOKEN_DIRECTIVE_EQUAL ||
                  _la == TOKEN_DIRECTIVE_NOTEQUAL)) {
                _localctx.op = errorHandler.recoverInline(this);
              } else {
                if (tokenStream.LA(1) == IntStream.EOF) matchedEOF = true;
                errorHandler.reportMatch(this);
                consume();
              }
              state = 79;
              preprocessorExpression(6);
              break;
            case 2:
              _localctx = PreprocessorBinaryContext(
                  new PreprocessorExpressionContext(_parentctx, _parentState));
              pushNewRecursionContext(
                  _localctx, _startState, RULE_preprocessorExpression);
              state = 80;
              if (!(precpred(context, 4))) {
                throw FailedPredicateException(this, "precpred(context, 4)");
              }
              state = 81;
              _localctx.op = match(TOKEN_DIRECTIVE_AND);
              state = 82;
              preprocessorExpression(5);
              break;
            case 3:
              _localctx = PreprocessorBinaryContext(
                  new PreprocessorExpressionContext(_parentctx, _parentState));
              pushNewRecursionContext(
                  _localctx, _startState, RULE_preprocessorExpression);
              state = 83;
              if (!(precpred(context, 3))) {
                throw FailedPredicateException(this, "precpred(context, 3)");
              }
              state = 84;
              _localctx.op = match(TOKEN_DIRECTIVE_OR);
              state = 85;
              preprocessorExpression(4);
              break;
            case 4:
              _localctx = PreprocessorBinaryContext(
                  new PreprocessorExpressionContext(_parentctx, _parentState));
              pushNewRecursionContext(
                  _localctx, _startState, RULE_preprocessorExpression);
              state = 86;
              if (!(precpred(context, 2))) {
                throw FailedPredicateException(this, "precpred(context, 2)");
              }
              state = 87;
              _localctx.op = tokenStream.LT(1);
              _la = tokenStream.LA(1);
              if (!(((((_la - 221)) & ~0x3f) == 0 &&
                  ((BigInt.one << (_la - 221)) &
                          ((BigInt.one << (TOKEN_DIRECTIVE_LT - 221)) |
                              (BigInt.one << (TOKEN_DIRECTIVE_GT - 221)) |
                              (BigInt.one << (TOKEN_DIRECTIVE_LE - 221)) |
                              (BigInt.one << (TOKEN_DIRECTIVE_GE - 221)))) !=
                      BigInt.zero))) {
                _localctx.op = errorHandler.recoverInline(this);
              } else {
                if (tokenStream.LA(1) == IntStream.EOF) matchedEOF = true;
                errorHandler.reportMatch(this);
                consume();
              }
              state = 88;
              preprocessorExpression(3);
              break;
          }
        }
        state = 93;
        errorHandler.sync(this);
        _alt = interpreter.adaptivePredict(tokenStream, 7, context);
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

  @override
  bool sempred(RuleContext _localctx, int ruleIndex, int predIndex) {
    switch (ruleIndex) {
      case 2:
        return _preprocessorExpression_sempred(_localctx, predIndex);
    }
    return true;
  }

  bool _preprocessorExpression_sempred(
      PreprocessorExpressionContext _localctx, int predIndex) {
    switch (predIndex) {
      case 0:
        return precpred(context, 5);
      case 1:
        return precpred(context, 4);
      case 2:
        return precpred(context, 3);
      case 3:
        return precpred(context, 2);
    }
    return true;
  }

  static const String _serializedATN = '\u{3}\u{608B}\u{A72A}\u{8133}\u{B9ED}'
      '\u{417C}\u{3BE7}\u{7786}\u{5964}\u{3}\u{F5}\u{61}\u{4}\u{2}\u{9}\u{2}'
      '\u{4}\u{3}\u{9}\u{3}\u{4}\u{4}\u{9}\u{4}\u{3}\u{2}\u{3}\u{2}\u{3}\u{2}'
      '\u{3}\u{2}\u{3}\u{2}\u{3}\u{2}\u{3}\u{2}\u{3}\u{2}\u{3}\u{2}\u{3}\u{2}'
      '\u{3}\u{2}\u{3}\u{2}\u{3}\u{2}\u{3}\u{2}\u{3}\u{2}\u{3}\u{2}\u{3}\u{2}'
      '\u{3}\u{2}\u{3}\u{2}\u{3}\u{2}\u{3}\u{2}\u{3}\u{2}\u{3}\u{2}\u{3}\u{2}'
      '\u{3}\u{2}\u{3}\u{2}\u{3}\u{2}\u{3}\u{2}\u{3}\u{2}\u{3}\u{2}\u{3}\u{2}'
      '\u{3}\u{2}\u{3}\u{2}\u{3}\u{2}\u{3}\u{2}\u{5}\u{2}\u{2C}\u{A}\u{2}\u{5}'
      '\u{2}\u{2E}\u{A}\u{2}\u{3}\u{3}\u{6}\u{3}\u{31}\u{A}\u{3}\u{D}\u{3}\u{E}'
      '\u{3}\u{32}\u{3}\u{4}\u{3}\u{4}\u{3}\u{4}\u{3}\u{4}\u{3}\u{4}\u{3}\u{4}'
      '\u{3}\u{4}\u{3}\u{4}\u{3}\u{4}\u{3}\u{4}\u{5}\u{4}\u{3F}\u{A}\u{4}\u{3}'
      '\u{4}\u{3}\u{4}\u{3}\u{4}\u{3}\u{4}\u{3}\u{4}\u{3}\u{4}\u{3}\u{4}\u{3}'
      '\u{4}\u{3}\u{4}\u{3}\u{4}\u{3}\u{4}\u{5}\u{4}\u{4C}\u{A}\u{4}\u{5}\u{4}'
      '\u{4E}\u{A}\u{4}\u{3}\u{4}\u{3}\u{4}\u{3}\u{4}\u{3}\u{4}\u{3}\u{4}\u{3}'
      '\u{4}\u{3}\u{4}\u{3}\u{4}\u{3}\u{4}\u{3}\u{4}\u{3}\u{4}\u{3}\u{4}\u{7}'
      '\u{4}\u{5C}\u{A}\u{4}\u{C}\u{4}\u{E}\u{4}\u{5F}\u{B}\u{4}\u{3}\u{4}\u{2}'
      '\u{3}\u{6}\u{5}\u{2}\u{4}\u{6}\u{2}\u{6}\u{3}\u{2}\u{C8}\u{C9}\u{3}\u{2}'
      '\u{F4}\u{F5}\u{3}\u{2}\u{DB}\u{DC}\u{3}\u{2}\u{DF}\u{E2}\u{2}\u{77}\u{2}'
      '\u{2D}\u{3}\u{2}\u{2}\u{2}\u{4}\u{30}\u{3}\u{2}\u{2}\u{2}\u{6}\u{4D}'
      '\u{3}\u{2}\u{2}\u{2}\u{8}\u{9}\u{7}\u{C4}\u{2}\u{2}\u{9}\u{A}\u{9}\u{2}'
      '\u{2}\u{2}\u{A}\u{2E}\u{5}\u{4}\u{3}\u{2}\u{B}\u{C}\u{7}\u{C4}\u{2}\u{2}'
      '\u{C}\u{D}\u{7}\u{CD}\u{2}\u{2}\u{D}\u{2E}\u{5}\u{6}\u{4}\u{2}\u{E}\u{F}'
      '\u{7}\u{C4}\u{2}\u{2}\u{F}\u{10}\u{7}\u{CE}\u{2}\u{2}\u{10}\u{2E}\u{5}'
      '\u{6}\u{4}\u{2}\u{11}\u{12}\u{7}\u{C4}\u{2}\u{2}\u{12}\u{2E}\u{7}\u{CF}'
      '\u{2}\u{2}\u{13}\u{14}\u{7}\u{C4}\u{2}\u{2}\u{14}\u{2E}\u{7}\u{D3}\u{2}'
      '\u{2}\u{15}\u{16}\u{7}\u{C4}\u{2}\u{2}\u{16}\u{17}\u{7}\u{D1}\u{2}\u{2}'
      '\u{17}\u{2E}\u{7}\u{ED}\u{2}\u{2}\u{18}\u{19}\u{7}\u{C4}\u{2}\u{2}\u{19}'
      '\u{1A}\u{7}\u{D2}\u{2}\u{2}\u{1A}\u{2E}\u{7}\u{ED}\u{2}\u{2}\u{1B}\u{1C}'
      '\u{7}\u{C4}\u{2}\u{2}\u{1C}\u{1D}\u{7}\u{D0}\u{2}\u{2}\u{1D}\u{2E}\u{7}'
      '\u{ED}\u{2}\u{2}\u{1E}\u{1F}\u{7}\u{C4}\u{2}\u{2}\u{1F}\u{20}\u{7}\u{CA}'
      '\u{2}\u{2}\u{20}\u{2E}\u{5}\u{4}\u{3}\u{2}\u{21}\u{22}\u{7}\u{C4}\u{2}'
      '\u{2}\u{22}\u{23}\u{7}\u{D6}\u{2}\u{2}\u{23}\u{2E}\u{5}\u{4}\u{3}\u{2}'
      '\u{24}\u{25}\u{7}\u{C4}\u{2}\u{2}\u{25}\u{26}\u{7}\u{D7}\u{2}\u{2}\u{26}'
      '\u{2E}\u{5}\u{4}\u{3}\u{2}\u{27}\u{28}\u{7}\u{C4}\u{2}\u{2}\u{28}\u{29}'
      '\u{7}\u{CB}\u{2}\u{2}\u{29}\u{2B}\u{7}\u{ED}\u{2}\u{2}\u{2A}\u{2C}\u{5}'
      '\u{4}\u{3}\u{2}\u{2B}\u{2A}\u{3}\u{2}\u{2}\u{2}\u{2B}\u{2C}\u{3}\u{2}'
      '\u{2}\u{2}\u{2C}\u{2E}\u{3}\u{2}\u{2}\u{2}\u{2D}\u{8}\u{3}\u{2}\u{2}'
      '\u{2}\u{2D}\u{B}\u{3}\u{2}\u{2}\u{2}\u{2D}\u{E}\u{3}\u{2}\u{2}\u{2}\u{2D}'
      '\u{11}\u{3}\u{2}\u{2}\u{2}\u{2D}\u{13}\u{3}\u{2}\u{2}\u{2}\u{2D}\u{15}'
      '\u{3}\u{2}\u{2}\u{2}\u{2D}\u{18}\u{3}\u{2}\u{2}\u{2}\u{2D}\u{1B}\u{3}'
      '\u{2}\u{2}\u{2}\u{2D}\u{1E}\u{3}\u{2}\u{2}\u{2}\u{2D}\u{21}\u{3}\u{2}'
      '\u{2}\u{2}\u{2D}\u{24}\u{3}\u{2}\u{2}\u{2}\u{2D}\u{27}\u{3}\u{2}\u{2}'
      '\u{2}\u{2E}\u{3}\u{3}\u{2}\u{2}\u{2}\u{2F}\u{31}\u{9}\u{3}\u{2}\u{2}'
      '\u{30}\u{2F}\u{3}\u{2}\u{2}\u{2}\u{31}\u{32}\u{3}\u{2}\u{2}\u{2}\u{32}'
      '\u{30}\u{3}\u{2}\u{2}\u{2}\u{32}\u{33}\u{3}\u{2}\u{2}\u{2}\u{33}\u{5}'
      '\u{3}\u{2}\u{2}\u{2}\u{34}\u{35}\u{8}\u{4}\u{1}\u{2}\u{35}\u{4E}\u{7}'
      '\u{D4}\u{2}\u{2}\u{36}\u{4E}\u{7}\u{D5}\u{2}\u{2}\u{37}\u{4E}\u{7}\u{EE}'
      '\u{2}\u{2}\u{38}\u{4E}\u{7}\u{EC}\u{2}\u{2}\u{39}\u{3E}\u{7}\u{ED}\u{2}'
      '\u{2}\u{3A}\u{3B}\u{7}\u{D9}\u{2}\u{2}\u{3B}\u{3C}\u{5}\u{6}\u{4}\u{2}'
      '\u{3C}\u{3D}\u{7}\u{DA}\u{2}\u{2}\u{3D}\u{3F}\u{3}\u{2}\u{2}\u{2}\u{3E}'
      '\u{3A}\u{3}\u{2}\u{2}\u{2}\u{3E}\u{3F}\u{3}\u{2}\u{2}\u{2}\u{3F}\u{4E}'
      '\u{3}\u{2}\u{2}\u{2}\u{40}\u{41}\u{7}\u{D9}\u{2}\u{2}\u{41}\u{42}\u{5}'
      '\u{6}\u{4}\u{2}\u{42}\u{43}\u{7}\u{DA}\u{2}\u{2}\u{43}\u{4E}\u{3}\u{2}'
      '\u{2}\u{2}\u{44}\u{45}\u{7}\u{D8}\u{2}\u{2}\u{45}\u{4E}\u{5}\u{6}\u{4}'
      '\u{8}\u{46}\u{4B}\u{7}\u{CC}\u{2}\u{2}\u{47}\u{4C}\u{7}\u{ED}\u{2}\u{2}'
      '\u{48}\u{49}\u{7}\u{D9}\u{2}\u{2}\u{49}\u{4A}\u{7}\u{ED}\u{2}\u{2}\u{4A}'
      '\u{4C}\u{7}\u{DA}\u{2}\u{2}\u{4B}\u{47}\u{3}\u{2}\u{2}\u{2}\u{4B}\u{48}'
      '\u{3}\u{2}\u{2}\u{2}\u{4C}\u{4E}\u{3}\u{2}\u{2}\u{2}\u{4D}\u{34}\u{3}'
      '\u{2}\u{2}\u{2}\u{4D}\u{36}\u{3}\u{2}\u{2}\u{2}\u{4D}\u{37}\u{3}\u{2}'
      '\u{2}\u{2}\u{4D}\u{38}\u{3}\u{2}\u{2}\u{2}\u{4D}\u{39}\u{3}\u{2}\u{2}'
      '\u{2}\u{4D}\u{40}\u{3}\u{2}\u{2}\u{2}\u{4D}\u{44}\u{3}\u{2}\u{2}\u{2}'
      '\u{4D}\u{46}\u{3}\u{2}\u{2}\u{2}\u{4E}\u{5D}\u{3}\u{2}\u{2}\u{2}\u{4F}'
      '\u{50}\u{C}\u{7}\u{2}\u{2}\u{50}\u{51}\u{9}\u{4}\u{2}\u{2}\u{51}\u{5C}'
      '\u{5}\u{6}\u{4}\u{8}\u{52}\u{53}\u{C}\u{6}\u{2}\u{2}\u{53}\u{54}\u{7}'
      '\u{DD}\u{2}\u{2}\u{54}\u{5C}\u{5}\u{6}\u{4}\u{7}\u{55}\u{56}\u{C}\u{5}'
      '\u{2}\u{2}\u{56}\u{57}\u{7}\u{DE}\u{2}\u{2}\u{57}\u{5C}\u{5}\u{6}\u{4}'
      '\u{6}\u{58}\u{59}\u{C}\u{4}\u{2}\u{2}\u{59}\u{5A}\u{9}\u{5}\u{2}\u{2}'
      '\u{5A}\u{5C}\u{5}\u{6}\u{4}\u{5}\u{5B}\u{4F}\u{3}\u{2}\u{2}\u{2}\u{5B}'
      '\u{52}\u{3}\u{2}\u{2}\u{2}\u{5B}\u{55}\u{3}\u{2}\u{2}\u{2}\u{5B}\u{58}'
      '\u{3}\u{2}\u{2}\u{2}\u{5C}\u{5F}\u{3}\u{2}\u{2}\u{2}\u{5D}\u{5B}\u{3}'
      '\u{2}\u{2}\u{2}\u{5D}\u{5E}\u{3}\u{2}\u{2}\u{2}\u{5E}\u{7}\u{3}\u{2}'
      '\u{2}\u{2}\u{5F}\u{5D}\u{3}\u{2}\u{2}\u{2}\u{A}\u{2B}\u{2D}\u{32}\u{3E}'
      '\u{4B}\u{4D}\u{5B}\u{5D}';
  static final ATN _ATN =
      ATNDeserializer().deserialize(_serializedATN.codeUnits);
}

class DirectiveContext extends ParserRuleContext {
  DirectiveContext([ParserRuleContext parent, int invokingState])
      : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_directive;

  @override
  void copyFrom(ParserRuleContext ctx) {
    super.copyFrom(ctx);
  }
}

class DirectiveTextContext extends ParserRuleContext {
  List<TerminalNode> DIRECTIVE_TEXTs() =>
      getTokens(ObjectiveCPreprocessorParser.TOKEN_DIRECTIVE_TEXT);
  TerminalNode DIRECTIVE_TEXT(int i) =>
      getToken(ObjectiveCPreprocessorParser.TOKEN_DIRECTIVE_TEXT, i);
  List<TerminalNode> DIRECTIVE_TEXT_NEWLINEs() =>
      getTokens(ObjectiveCPreprocessorParser.TOKEN_DIRECTIVE_TEXT_NEWLINE);
  TerminalNode DIRECTIVE_TEXT_NEWLINE(int i) =>
      getToken(ObjectiveCPreprocessorParser.TOKEN_DIRECTIVE_TEXT_NEWLINE, i);
  DirectiveTextContext([ParserRuleContext parent, int invokingState])
      : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_directiveText;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is ObjectiveCPreprocessorParserListener)
      listener.enterDirectiveText(this);
  }

  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is ObjectiveCPreprocessorParserListener)
      listener.exitDirectiveText(this);
  }
}

class PreprocessorExpressionContext extends ParserRuleContext {
  PreprocessorExpressionContext([ParserRuleContext parent, int invokingState])
      : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_preprocessorExpression;

  @override
  void copyFrom(ParserRuleContext ctx) {
    super.copyFrom(ctx);
  }
}

class PreprocessorDefContext extends DirectiveContext {
  TerminalNode SHARP() => getToken(ObjectiveCPreprocessorParser.TOKEN_SHARP, 0);
  TerminalNode DIRECTIVE_IFDEF() =>
      getToken(ObjectiveCPreprocessorParser.TOKEN_DIRECTIVE_IFDEF, 0);
  TerminalNode DIRECTIVE_ID() =>
      getToken(ObjectiveCPreprocessorParser.TOKEN_DIRECTIVE_ID, 0);
  TerminalNode DIRECTIVE_IFNDEF() =>
      getToken(ObjectiveCPreprocessorParser.TOKEN_DIRECTIVE_IFNDEF, 0);
  TerminalNode DIRECTIVE_UNDEF() =>
      getToken(ObjectiveCPreprocessorParser.TOKEN_DIRECTIVE_UNDEF, 0);
  PreprocessorDefContext(DirectiveContext ctx) {
    copyFrom(ctx);
  }
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is ObjectiveCPreprocessorParserListener)
      listener.enterPreprocessorDef(this);
  }

  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is ObjectiveCPreprocessorParserListener)
      listener.exitPreprocessorDef(this);
  }
}

class PreprocessorErrorContext extends DirectiveContext {
  TerminalNode SHARP() => getToken(ObjectiveCPreprocessorParser.TOKEN_SHARP, 0);
  TerminalNode DIRECTIVE_ERROR() =>
      getToken(ObjectiveCPreprocessorParser.TOKEN_DIRECTIVE_ERROR, 0);
  DirectiveTextContext directiveText() =>
      getRuleContext<DirectiveTextContext>(0);
  PreprocessorErrorContext(DirectiveContext ctx) {
    copyFrom(ctx);
  }
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is ObjectiveCPreprocessorParserListener)
      listener.enterPreprocessorError(this);
  }

  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is ObjectiveCPreprocessorParserListener)
      listener.exitPreprocessorError(this);
  }
}

class PreprocessorConditionalContext extends DirectiveContext {
  TerminalNode SHARP() => getToken(ObjectiveCPreprocessorParser.TOKEN_SHARP, 0);
  TerminalNode DIRECTIVE_IF() =>
      getToken(ObjectiveCPreprocessorParser.TOKEN_DIRECTIVE_IF, 0);
  PreprocessorExpressionContext preprocessorExpression() =>
      getRuleContext<PreprocessorExpressionContext>(0);
  TerminalNode DIRECTIVE_ELIF() =>
      getToken(ObjectiveCPreprocessorParser.TOKEN_DIRECTIVE_ELIF, 0);
  TerminalNode DIRECTIVE_ELSE() =>
      getToken(ObjectiveCPreprocessorParser.TOKEN_DIRECTIVE_ELSE, 0);
  TerminalNode DIRECTIVE_ENDIF() =>
      getToken(ObjectiveCPreprocessorParser.TOKEN_DIRECTIVE_ENDIF, 0);
  PreprocessorConditionalContext(DirectiveContext ctx) {
    copyFrom(ctx);
  }
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is ObjectiveCPreprocessorParserListener)
      listener.enterPreprocessorConditional(this);
  }

  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is ObjectiveCPreprocessorParserListener)
      listener.exitPreprocessorConditional(this);
  }
}

class PreprocessorImportContext extends DirectiveContext {
  TerminalNode SHARP() => getToken(ObjectiveCPreprocessorParser.TOKEN_SHARP, 0);
  DirectiveTextContext directiveText() =>
      getRuleContext<DirectiveTextContext>(0);
  TerminalNode DIRECTIVE_IMPORT() =>
      getToken(ObjectiveCPreprocessorParser.TOKEN_DIRECTIVE_IMPORT, 0);
  TerminalNode DIRECTIVE_INCLUDE() =>
      getToken(ObjectiveCPreprocessorParser.TOKEN_DIRECTIVE_INCLUDE, 0);
  PreprocessorImportContext(DirectiveContext ctx) {
    copyFrom(ctx);
  }
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is ObjectiveCPreprocessorParserListener)
      listener.enterPreprocessorImport(this);
  }

  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is ObjectiveCPreprocessorParserListener)
      listener.exitPreprocessorImport(this);
  }
}

class PreprocessorPragmaContext extends DirectiveContext {
  TerminalNode SHARP() => getToken(ObjectiveCPreprocessorParser.TOKEN_SHARP, 0);
  TerminalNode DIRECTIVE_PRAGMA() =>
      getToken(ObjectiveCPreprocessorParser.TOKEN_DIRECTIVE_PRAGMA, 0);
  DirectiveTextContext directiveText() =>
      getRuleContext<DirectiveTextContext>(0);
  PreprocessorPragmaContext(DirectiveContext ctx) {
    copyFrom(ctx);
  }
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is ObjectiveCPreprocessorParserListener)
      listener.enterPreprocessorPragma(this);
  }

  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is ObjectiveCPreprocessorParserListener)
      listener.exitPreprocessorPragma(this);
  }
}

class PreprocessorDefineContext extends DirectiveContext {
  TerminalNode SHARP() => getToken(ObjectiveCPreprocessorParser.TOKEN_SHARP, 0);
  TerminalNode DIRECTIVE_DEFINE() =>
      getToken(ObjectiveCPreprocessorParser.TOKEN_DIRECTIVE_DEFINE, 0);
  TerminalNode DIRECTIVE_ID() =>
      getToken(ObjectiveCPreprocessorParser.TOKEN_DIRECTIVE_ID, 0);
  DirectiveTextContext directiveText() =>
      getRuleContext<DirectiveTextContext>(0);
  PreprocessorDefineContext(DirectiveContext ctx) {
    copyFrom(ctx);
  }
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is ObjectiveCPreprocessorParserListener)
      listener.enterPreprocessorDefine(this);
  }

  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is ObjectiveCPreprocessorParserListener)
      listener.exitPreprocessorDefine(this);
  }
}

class PreprocessorWarningContext extends DirectiveContext {
  TerminalNode SHARP() => getToken(ObjectiveCPreprocessorParser.TOKEN_SHARP, 0);
  TerminalNode DIRECTIVE_WARNING() =>
      getToken(ObjectiveCPreprocessorParser.TOKEN_DIRECTIVE_WARNING, 0);
  DirectiveTextContext directiveText() =>
      getRuleContext<DirectiveTextContext>(0);
  PreprocessorWarningContext(DirectiveContext ctx) {
    copyFrom(ctx);
  }
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is ObjectiveCPreprocessorParserListener)
      listener.enterPreprocessorWarning(this);
  }

  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is ObjectiveCPreprocessorParserListener)
      listener.exitPreprocessorWarning(this);
  }
}

class PreprocessorParenthesisContext extends PreprocessorExpressionContext {
  TerminalNode DIRECTIVE_LP() =>
      getToken(ObjectiveCPreprocessorParser.TOKEN_DIRECTIVE_LP, 0);
  PreprocessorExpressionContext preprocessorExpression() =>
      getRuleContext<PreprocessorExpressionContext>(0);
  TerminalNode DIRECTIVE_RP() =>
      getToken(ObjectiveCPreprocessorParser.TOKEN_DIRECTIVE_RP, 0);
  PreprocessorParenthesisContext(PreprocessorExpressionContext ctx) {
    copyFrom(ctx);
  }
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is ObjectiveCPreprocessorParserListener)
      listener.enterPreprocessorParenthesis(this);
  }

  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is ObjectiveCPreprocessorParserListener)
      listener.exitPreprocessorParenthesis(this);
  }
}

class PreprocessorNotContext extends PreprocessorExpressionContext {
  TerminalNode DIRECTIVE_BANG() =>
      getToken(ObjectiveCPreprocessorParser.TOKEN_DIRECTIVE_BANG, 0);
  PreprocessorExpressionContext preprocessorExpression() =>
      getRuleContext<PreprocessorExpressionContext>(0);
  PreprocessorNotContext(PreprocessorExpressionContext ctx) {
    copyFrom(ctx);
  }
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is ObjectiveCPreprocessorParserListener)
      listener.enterPreprocessorNot(this);
  }

  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is ObjectiveCPreprocessorParserListener)
      listener.exitPreprocessorNot(this);
  }
}

class PreprocessorBinaryContext extends PreprocessorExpressionContext {
  Token op;
  List<PreprocessorExpressionContext> preprocessorExpressions() =>
      getRuleContexts<PreprocessorExpressionContext>();
  PreprocessorExpressionContext preprocessorExpression(int i) =>
      getRuleContext<PreprocessorExpressionContext>(i);
  TerminalNode DIRECTIVE_EQUAL() =>
      getToken(ObjectiveCPreprocessorParser.TOKEN_DIRECTIVE_EQUAL, 0);
  TerminalNode DIRECTIVE_NOTEQUAL() =>
      getToken(ObjectiveCPreprocessorParser.TOKEN_DIRECTIVE_NOTEQUAL, 0);
  TerminalNode DIRECTIVE_AND() =>
      getToken(ObjectiveCPreprocessorParser.TOKEN_DIRECTIVE_AND, 0);
  TerminalNode DIRECTIVE_OR() =>
      getToken(ObjectiveCPreprocessorParser.TOKEN_DIRECTIVE_OR, 0);
  TerminalNode DIRECTIVE_LT() =>
      getToken(ObjectiveCPreprocessorParser.TOKEN_DIRECTIVE_LT, 0);
  TerminalNode DIRECTIVE_GT() =>
      getToken(ObjectiveCPreprocessorParser.TOKEN_DIRECTIVE_GT, 0);
  TerminalNode DIRECTIVE_LE() =>
      getToken(ObjectiveCPreprocessorParser.TOKEN_DIRECTIVE_LE, 0);
  TerminalNode DIRECTIVE_GE() =>
      getToken(ObjectiveCPreprocessorParser.TOKEN_DIRECTIVE_GE, 0);
  PreprocessorBinaryContext(PreprocessorExpressionContext ctx) {
    copyFrom(ctx);
  }
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is ObjectiveCPreprocessorParserListener)
      listener.enterPreprocessorBinary(this);
  }

  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is ObjectiveCPreprocessorParserListener)
      listener.exitPreprocessorBinary(this);
  }
}

class PreprocessorConstantContext extends PreprocessorExpressionContext {
  TerminalNode DIRECTIVE_TRUE() =>
      getToken(ObjectiveCPreprocessorParser.TOKEN_DIRECTIVE_TRUE, 0);
  TerminalNode DIRECTIVE_FALSE() =>
      getToken(ObjectiveCPreprocessorParser.TOKEN_DIRECTIVE_FALSE, 0);
  TerminalNode DIRECTIVE_DECIMAL_LITERAL() =>
      getToken(ObjectiveCPreprocessorParser.TOKEN_DIRECTIVE_DECIMAL_LITERAL, 0);
  TerminalNode DIRECTIVE_STRING() =>
      getToken(ObjectiveCPreprocessorParser.TOKEN_DIRECTIVE_STRING, 0);
  PreprocessorConstantContext(PreprocessorExpressionContext ctx) {
    copyFrom(ctx);
  }
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is ObjectiveCPreprocessorParserListener)
      listener.enterPreprocessorConstant(this);
  }

  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is ObjectiveCPreprocessorParserListener)
      listener.exitPreprocessorConstant(this);
  }
}

class PreprocessorConditionalSymbolContext
    extends PreprocessorExpressionContext {
  TerminalNode DIRECTIVE_ID() =>
      getToken(ObjectiveCPreprocessorParser.TOKEN_DIRECTIVE_ID, 0);
  TerminalNode DIRECTIVE_LP() =>
      getToken(ObjectiveCPreprocessorParser.TOKEN_DIRECTIVE_LP, 0);
  PreprocessorExpressionContext preprocessorExpression() =>
      getRuleContext<PreprocessorExpressionContext>(0);
  TerminalNode DIRECTIVE_RP() =>
      getToken(ObjectiveCPreprocessorParser.TOKEN_DIRECTIVE_RP, 0);
  PreprocessorConditionalSymbolContext(PreprocessorExpressionContext ctx) {
    copyFrom(ctx);
  }
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is ObjectiveCPreprocessorParserListener)
      listener.enterPreprocessorConditionalSymbol(this);
  }

  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is ObjectiveCPreprocessorParserListener)
      listener.exitPreprocessorConditionalSymbol(this);
  }
}

class PreprocessorDefinedContext extends PreprocessorExpressionContext {
  TerminalNode DIRECTIVE_DEFINED() =>
      getToken(ObjectiveCPreprocessorParser.TOKEN_DIRECTIVE_DEFINED, 0);
  TerminalNode DIRECTIVE_ID() =>
      getToken(ObjectiveCPreprocessorParser.TOKEN_DIRECTIVE_ID, 0);
  TerminalNode DIRECTIVE_LP() =>
      getToken(ObjectiveCPreprocessorParser.TOKEN_DIRECTIVE_LP, 0);
  TerminalNode DIRECTIVE_RP() =>
      getToken(ObjectiveCPreprocessorParser.TOKEN_DIRECTIVE_RP, 0);
  PreprocessorDefinedContext(PreprocessorExpressionContext ctx) {
    copyFrom(ctx);
  }
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is ObjectiveCPreprocessorParserListener)
      listener.enterPreprocessorDefined(this);
  }

  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is ObjectiveCPreprocessorParserListener)
      listener.exitPreprocessorDefined(this);
  }
}
