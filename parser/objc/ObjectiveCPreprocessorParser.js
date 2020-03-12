// Generated from one-step-processing/ObjectiveCPreprocessorParser.g4 by ANTLR 4.8
// jshint ignore: start
var antlr4 = require('antlr4/index');
var ObjectiveCPreprocessorParserListener = require('./ObjectiveCPreprocessorParserListener').ObjectiveCPreprocessorParserListener;
var grammarFileName = "ObjectiveCPreprocessorParser.g4";


var serializedATN = ["\u0003\u608b\ua72a\u8133\ub9ed\u417c\u3be7\u7786\u5964",
    "\u0003\u00e0a\u0004\u0002\t\u0002\u0004\u0003\t\u0003\u0004\u0004\t",
    "\u0004\u0003\u0002\u0003\u0002\u0003\u0002\u0003\u0002\u0003\u0002\u0003",
    "\u0002\u0003\u0002\u0003\u0002\u0003\u0002\u0003\u0002\u0003\u0002\u0003",
    "\u0002\u0003\u0002\u0003\u0002\u0003\u0002\u0003\u0002\u0003\u0002\u0003",
    "\u0002\u0003\u0002\u0003\u0002\u0003\u0002\u0003\u0002\u0003\u0002\u0003",
    "\u0002\u0003\u0002\u0003\u0002\u0003\u0002\u0003\u0002\u0003\u0002\u0003",
    "\u0002\u0003\u0002\u0003\u0002\u0003\u0002\u0003\u0002\u0003\u0002\u0005",
    "\u0002,\n\u0002\u0005\u0002.\n\u0002\u0003\u0003\u0006\u00031\n\u0003",
    "\r\u0003\u000e\u00032\u0003\u0004\u0003\u0004\u0003\u0004\u0003\u0004",
    "\u0003\u0004\u0003\u0004\u0003\u0004\u0003\u0004\u0003\u0004\u0003\u0004",
    "\u0005\u0004?\n\u0004\u0003\u0004\u0003\u0004\u0003\u0004\u0003\u0004",
    "\u0003\u0004\u0003\u0004\u0003\u0004\u0003\u0004\u0003\u0004\u0003\u0004",
    "\u0003\u0004\u0005\u0004L\n\u0004\u0005\u0004N\n\u0004\u0003\u0004\u0003",
    "\u0004\u0003\u0004\u0003\u0004\u0003\u0004\u0003\u0004\u0003\u0004\u0003",
    "\u0004\u0003\u0004\u0003\u0004\u0003\u0004\u0003\u0004\u0007\u0004\\",
    "\n\u0004\f\u0004\u000e\u0004_\u000b\u0004\u0003\u0004\u0002\u0003\u0006",
    "\u0005\u0002\u0004\u0006\u0002\u0006\u0003\u0002\u00bc\u00bd\u0003\u0002",
    "\u00df\u00e0\u0003\u0002\u00cf\u00d0\u0003\u0002\u00d3\u00d6\u0002w",
    "\u0002-\u0003\u0002\u0002\u0002\u00040\u0003\u0002\u0002\u0002\u0006",
    "M\u0003\u0002\u0002\u0002\b\t\u0007\u00b8\u0002\u0002\t\n\t\u0002\u0002",
    "\u0002\n.\u0005\u0004\u0003\u0002\u000b\f\u0007\u00b8\u0002\u0002\f",
    "\r\u0007\u00c1\u0002\u0002\r.\u0005\u0006\u0004\u0002\u000e\u000f\u0007",
    "\u00b8\u0002\u0002\u000f\u0010\u0007\u00c2\u0002\u0002\u0010.\u0005",
    "\u0006\u0004\u0002\u0011\u0012\u0007\u00b8\u0002\u0002\u0012.\u0007",
    "\u00c3\u0002\u0002\u0013\u0014\u0007\u00b8\u0002\u0002\u0014.\u0007",
    "\u00c7\u0002\u0002\u0015\u0016\u0007\u00b8\u0002\u0002\u0016\u0017\u0007",
    "\u00c5\u0002\u0002\u0017.\u0007\u00d8\u0002\u0002\u0018\u0019\u0007",
    "\u00b8\u0002\u0002\u0019\u001a\u0007\u00c6\u0002\u0002\u001a.\u0007",
    "\u00d8\u0002\u0002\u001b\u001c\u0007\u00b8\u0002\u0002\u001c\u001d\u0007",
    "\u00c4\u0002\u0002\u001d.\u0007\u00d8\u0002\u0002\u001e\u001f\u0007",
    "\u00b8\u0002\u0002\u001f \u0007\u00be\u0002\u0002 .\u0005\u0004\u0003",
    "\u0002!\"\u0007\u00b8\u0002\u0002\"#\u0007\u00ca\u0002\u0002#.\u0005",
    "\u0004\u0003\u0002$%\u0007\u00b8\u0002\u0002%&\u0007\u00cb\u0002\u0002",
    "&.\u0005\u0004\u0003\u0002\'(\u0007\u00b8\u0002\u0002()\u0007\u00bf",
    "\u0002\u0002)+\u0007\u00d8\u0002\u0002*,\u0005\u0004\u0003\u0002+*\u0003",
    "\u0002\u0002\u0002+,\u0003\u0002\u0002\u0002,.\u0003\u0002\u0002\u0002",
    "-\b\u0003\u0002\u0002\u0002-\u000b\u0003\u0002\u0002\u0002-\u000e\u0003",
    "\u0002\u0002\u0002-\u0011\u0003\u0002\u0002\u0002-\u0013\u0003\u0002",
    "\u0002\u0002-\u0015\u0003\u0002\u0002\u0002-\u0018\u0003\u0002\u0002",
    "\u0002-\u001b\u0003\u0002\u0002\u0002-\u001e\u0003\u0002\u0002\u0002",
    "-!\u0003\u0002\u0002\u0002-$\u0003\u0002\u0002\u0002-\'\u0003\u0002",
    "\u0002\u0002.\u0003\u0003\u0002\u0002\u0002/1\t\u0003\u0002\u00020/",
    "\u0003\u0002\u0002\u000212\u0003\u0002\u0002\u000220\u0003\u0002\u0002",
    "\u000223\u0003\u0002\u0002\u00023\u0005\u0003\u0002\u0002\u000245\b",
    "\u0004\u0001\u00025N\u0007\u00c8\u0002\u00026N\u0007\u00c9\u0002\u0002",
    "7N\u0007\u00d9\u0002\u00028N\u0007\u00d7\u0002\u00029>\u0007\u00d8\u0002",
    "\u0002:;\u0007\u00cd\u0002\u0002;<\u0005\u0006\u0004\u0002<=\u0007\u00ce",
    "\u0002\u0002=?\u0003\u0002\u0002\u0002>:\u0003\u0002\u0002\u0002>?\u0003",
    "\u0002\u0002\u0002?N\u0003\u0002\u0002\u0002@A\u0007\u00cd\u0002\u0002",
    "AB\u0005\u0006\u0004\u0002BC\u0007\u00ce\u0002\u0002CN\u0003\u0002\u0002",
    "\u0002DE\u0007\u00cc\u0002\u0002EN\u0005\u0006\u0004\bFK\u0007\u00c0",
    "\u0002\u0002GL\u0007\u00d8\u0002\u0002HI\u0007\u00cd\u0002\u0002IJ\u0007",
    "\u00d8\u0002\u0002JL\u0007\u00ce\u0002\u0002KG\u0003\u0002\u0002\u0002",
    "KH\u0003\u0002\u0002\u0002LN\u0003\u0002\u0002\u0002M4\u0003\u0002\u0002",
    "\u0002M6\u0003\u0002\u0002\u0002M7\u0003\u0002\u0002\u0002M8\u0003\u0002",
    "\u0002\u0002M9\u0003\u0002\u0002\u0002M@\u0003\u0002\u0002\u0002MD\u0003",
    "\u0002\u0002\u0002MF\u0003\u0002\u0002\u0002N]\u0003\u0002\u0002\u0002",
    "OP\f\u0007\u0002\u0002PQ\t\u0004\u0002\u0002Q\\\u0005\u0006\u0004\b",
    "RS\f\u0006\u0002\u0002ST\u0007\u00d1\u0002\u0002T\\\u0005\u0006\u0004",
    "\u0007UV\f\u0005\u0002\u0002VW\u0007\u00d2\u0002\u0002W\\\u0005\u0006",
    "\u0004\u0006XY\f\u0004\u0002\u0002YZ\t\u0005\u0002\u0002Z\\\u0005\u0006",
    "\u0004\u0005[O\u0003\u0002\u0002\u0002[R\u0003\u0002\u0002\u0002[U\u0003",
    "\u0002\u0002\u0002[X\u0003\u0002\u0002\u0002\\_\u0003\u0002\u0002\u0002",
    "][\u0003\u0002\u0002\u0002]^\u0003\u0002\u0002\u0002^\u0007\u0003\u0002",
    "\u0002\u0002_]\u0003\u0002\u0002\u0002\n+-2>KM[]"].join("");


var atn = new antlr4.atn.ATNDeserializer().deserialize(serializedATN);

var decisionsToDFA = atn.decisionToState.map( function(ds, index) { return new antlr4.dfa.DFA(ds, index); });

var sharedContextCache = new antlr4.PredictionContextCache();

var literalNames = [ null, "'auto'", "'break'", "'case'", "'char'", "'const'", 
                     "'continue'", "'default'", "'do'", "'double'", null, 
                     "'enum'", "'extern'", "'float'", "'for'", "'goto'", 
                     null, "'inline'", "'int'", "'long'", "'register'", 
                     "'restrict'", "'return'", "'short'", "'signed'", "'sizeof'", 
                     "'static'", "'struct'", "'switch'", "'typedef'", "'union'", 
                     "'unsigned'", "'void'", "'volatile'", "'while'", "'_Bool'", 
                     "'_Complex'", "'_Imaginery'", "'true'", "'false'", 
                     "'BOOL'", "'Class'", "'bycopy'", "'byref'", "'id'", 
                     "'IMP'", "'in'", "'inout'", "'nil'", "'NO'", "'NULL'", 
                     "'oneway'", "'out'", "'Protocol'", "'SEL'", "'self'", 
                     "'super'", "'YES'", "'@autoreleasepool'", "'@catch'", 
                     "'@class'", "'@dynamic'", "'@encode'", "'@end'", "'@finally'", 
                     "'@implementation'", "'@interface'", "'@import'", "'@package'", 
                     "'@protocol'", "'@optional'", "'@private'", "'@property'", 
                     "'@protected'", "'@public'", "'@required'", "'@selector'", 
                     "'@synchronized'", "'@synthesize'", "'@throw'", "'@try'", 
                     "'atomic'", "'nonatomic'", "'retain'", "'__attribute__'", 
                     "'__autoreleasing'", "'__block'", "'__bridge'", "'__bridge_retained'", 
                     "'__bridge_transfer'", "'__covariant'", "'__contravariant'", 
                     "'__deprecated'", "'__kindof'", "'__strong'", null, 
                     "'__unsafe_unretained'", "'__unused'", "'__weak'", 
                     null, null, null, "'null_resettable'", "'NS_INLINE'", 
                     "'NS_ENUM'", "'NS_OPTIONS'", "'assign'", "'copy'", 
                     "'getter'", "'setter'", "'strong'", "'readonly'", "'readwrite'", 
                     "'weak'", "'unsafe_unretained'", "'IBOutlet'", "'IBOutletCollection'", 
                     "'IBInspectable'", "'IB_DESIGNABLE'", null, null, null, 
                     null, null, "'__TVOS_PROHIBITED'", null, null, null, 
                     "'{'", "'}'", "'['", "']'", "';'", "','", "'.'", "'->'", 
                     "'@'", "'='", null, null, null, "'~'", "'?'", "':'", 
                     null, null, null, null, null, null, "'++'", "'--'", 
                     "'+'", "'-'", "'*'", "'/'", "'&'", "'|'", "'^'", "'%'", 
                     "'+='", "'-='", "'*='", "'/='", "'&='", "'|='", "'^='", 
                     "'%='", "'<<='", "'>>='", "'...'", null, null, null, 
                     null, null, null, null, null, null, null, "'\\'", null, 
                     null, null, null, null, null, null, null, "'defined'", 
                     null, "'elif'", null, "'undef'", "'ifdef'", "'ifndef'", 
                     "'endif'" ];

var symbolicNames = [ null, "AUTO", "BREAK", "CASE", "CHAR", "CONST", "CONTINUE", 
                      "DEFAULT", "DO", "DOUBLE", "ELSE", "ENUM", "EXTERN", 
                      "FLOAT", "FOR", "GOTO", "IF", "INLINE", "INT", "LONG", 
                      "REGISTER", "RESTRICT", "RETURN", "SHORT", "SIGNED", 
                      "SIZEOF", "STATIC", "STRUCT", "SWITCH", "TYPEDEF", 
                      "UNION", "UNSIGNED", "VOID", "VOLATILE", "WHILE", 
                      "BOOL_", "COMPLEX", "IMAGINERY", "TRUE", "FALSE", 
                      "BOOL", "Class", "BYCOPY", "BYREF", "ID", "IMP", "IN", 
                      "INOUT", "NIL", "NO", "NULL", "ONEWAY", "OUT", "PROTOCOL_", 
                      "SEL", "SELF", "SUPER", "YES", "AUTORELEASEPOOL", 
                      "CATCH", "CLASS", "DYNAMIC", "ENCODE", "END", "FINALLY", 
                      "IMPLEMENTATION", "INTERFACE", "IMPORT", "PACKAGE", 
                      "PROTOCOL", "OPTIONAL", "PRIVATE", "PROPERTY", "PROTECTED", 
                      "PUBLIC", "REQUIRED", "SELECTOR", "SYNCHRONIZED", 
                      "SYNTHESIZE", "THROW", "TRY", "ATOMIC", "NONATOMIC", 
                      "RETAIN", "ATTRIBUTE", "AUTORELEASING_QUALIFIER", 
                      "BLOCK", "BRIDGE", "BRIDGE_RETAINED", "BRIDGE_TRANSFER", 
                      "COVARIANT", "CONTRAVARIANT", "DEPRECATED", "KINDOF", 
                      "STRONG_QUALIFIER", "TYPEOF", "UNSAFE_UNRETAINED_QUALIFIER", 
                      "UNUSED", "WEAK_QUALIFIER", "NULL_UNSPECIFIED", "NULLABLE", 
                      "NONNULL", "NULL_RESETTABLE", "NS_INLINE", "NS_ENUM", 
                      "NS_OPTIONS", "ASSIGN", "COPY", "GETTER", "SETTER", 
                      "STRONG", "READONLY", "READWRITE", "WEAK", "UNSAFE_UNRETAINED", 
                      "IB_OUTLET", "IB_OUTLET_COLLECTION", "IB_INSPECTABLE", 
                      "IB_DESIGNABLE", "NS_ASSUME_NONNULL_BEGIN", "NS_ASSUME_NONNULL_END", 
                      "EXTERN_SUFFIX", "IOS_SUFFIX", "MAC_SUFFIX", "TVOS_PROHIBITED", 
                      "IDENTIFIER", "LP", "RP", "LBRACE", "RBRACE", "LBRACK", 
                      "RBRACK", "SEMI", "COMMA", "DOT", "STRUCTACCESS", 
                      "AT", "ASSIGNMENT", "GT", "LT", "BANG", "TILDE", "QUESTION", 
                      "COLON", "EQUAL", "LE", "GE", "NOTEQUAL", "AND", "OR", 
                      "INC", "DEC", "ADD", "SUB", "MUL", "DIV", "BITAND", 
                      "BITOR", "BITXOR", "MOD", "ADD_ASSIGN", "SUB_ASSIGN", 
                      "MUL_ASSIGN", "DIV_ASSIGN", "AND_ASSIGN", "OR_ASSIGN", 
                      "XOR_ASSIGN", "MOD_ASSIGN", "LSHIFT_ASSIGN", "RSHIFT_ASSIGN", 
                      "ELIPSIS", "CHARACTER_LITERAL", "STRING_START", "HEX_LITERAL", 
                      "OCTAL_LITERAL", "BINARY_LITERAL", "DECIMAL_LITERAL", 
                      "FLOATING_POINT_LITERAL", "WS", "MULTI_COMMENT", "SINGLE_COMMENT", 
                      "BACKSLASH", "SHARP", "STRING_NEWLINE", "STRING_END", 
                      "STRING_VALUE", "DIRECTIVE_IMPORT", "DIRECTIVE_INCLUDE", 
                      "DIRECTIVE_PRAGMA", "DIRECTIVE_DEFINE", "DIRECTIVE_DEFINED", 
                      "DIRECTIVE_IF", "DIRECTIVE_ELIF", "DIRECTIVE_ELSE", 
                      "DIRECTIVE_UNDEF", "DIRECTIVE_IFDEF", "DIRECTIVE_IFNDEF", 
                      "DIRECTIVE_ENDIF", "DIRECTIVE_TRUE", "DIRECTIVE_FALSE", 
                      "DIRECTIVE_ERROR", "DIRECTIVE_WARNING", "DIRECTIVE_BANG", 
                      "DIRECTIVE_LP", "DIRECTIVE_RP", "DIRECTIVE_EQUAL", 
                      "DIRECTIVE_NOTEQUAL", "DIRECTIVE_AND", "DIRECTIVE_OR", 
                      "DIRECTIVE_LT", "DIRECTIVE_GT", "DIRECTIVE_LE", "DIRECTIVE_GE", 
                      "DIRECTIVE_STRING", "DIRECTIVE_ID", "DIRECTIVE_DECIMAL_LITERAL", 
                      "DIRECTIVE_FLOAT", "DIRECTIVE_NEWLINE", "DIRECTIVE_MULTI_COMMENT", 
                      "DIRECTIVE_SINGLE_COMMENT", "DIRECTIVE_BACKSLASH_NEWLINE", 
                      "DIRECTIVE_TEXT_NEWLINE", "DIRECTIVE_TEXT" ];

var ruleNames =  [ "directive", "directiveText", "preprocessorExpression" ];

function ObjectiveCPreprocessorParser (input) {
	antlr4.Parser.call(this, input);
    this._interp = new antlr4.atn.ParserATNSimulator(this, atn, decisionsToDFA, sharedContextCache);
    this.ruleNames = ruleNames;
    this.literalNames = literalNames;
    this.symbolicNames = symbolicNames;
    return this;
}

ObjectiveCPreprocessorParser.prototype = Object.create(antlr4.Parser.prototype);
ObjectiveCPreprocessorParser.prototype.constructor = ObjectiveCPreprocessorParser;

Object.defineProperty(ObjectiveCPreprocessorParser.prototype, "atn", {
	get : function() {
		return atn;
	}
});

ObjectiveCPreprocessorParser.EOF = antlr4.Token.EOF;
ObjectiveCPreprocessorParser.AUTO = 1;
ObjectiveCPreprocessorParser.BREAK = 2;
ObjectiveCPreprocessorParser.CASE = 3;
ObjectiveCPreprocessorParser.CHAR = 4;
ObjectiveCPreprocessorParser.CONST = 5;
ObjectiveCPreprocessorParser.CONTINUE = 6;
ObjectiveCPreprocessorParser.DEFAULT = 7;
ObjectiveCPreprocessorParser.DO = 8;
ObjectiveCPreprocessorParser.DOUBLE = 9;
ObjectiveCPreprocessorParser.ELSE = 10;
ObjectiveCPreprocessorParser.ENUM = 11;
ObjectiveCPreprocessorParser.EXTERN = 12;
ObjectiveCPreprocessorParser.FLOAT = 13;
ObjectiveCPreprocessorParser.FOR = 14;
ObjectiveCPreprocessorParser.GOTO = 15;
ObjectiveCPreprocessorParser.IF = 16;
ObjectiveCPreprocessorParser.INLINE = 17;
ObjectiveCPreprocessorParser.INT = 18;
ObjectiveCPreprocessorParser.LONG = 19;
ObjectiveCPreprocessorParser.REGISTER = 20;
ObjectiveCPreprocessorParser.RESTRICT = 21;
ObjectiveCPreprocessorParser.RETURN = 22;
ObjectiveCPreprocessorParser.SHORT = 23;
ObjectiveCPreprocessorParser.SIGNED = 24;
ObjectiveCPreprocessorParser.SIZEOF = 25;
ObjectiveCPreprocessorParser.STATIC = 26;
ObjectiveCPreprocessorParser.STRUCT = 27;
ObjectiveCPreprocessorParser.SWITCH = 28;
ObjectiveCPreprocessorParser.TYPEDEF = 29;
ObjectiveCPreprocessorParser.UNION = 30;
ObjectiveCPreprocessorParser.UNSIGNED = 31;
ObjectiveCPreprocessorParser.VOID = 32;
ObjectiveCPreprocessorParser.VOLATILE = 33;
ObjectiveCPreprocessorParser.WHILE = 34;
ObjectiveCPreprocessorParser.BOOL_ = 35;
ObjectiveCPreprocessorParser.COMPLEX = 36;
ObjectiveCPreprocessorParser.IMAGINERY = 37;
ObjectiveCPreprocessorParser.TRUE = 38;
ObjectiveCPreprocessorParser.FALSE = 39;
ObjectiveCPreprocessorParser.BOOL = 40;
ObjectiveCPreprocessorParser.Class = 41;
ObjectiveCPreprocessorParser.BYCOPY = 42;
ObjectiveCPreprocessorParser.BYREF = 43;
ObjectiveCPreprocessorParser.ID = 44;
ObjectiveCPreprocessorParser.IMP = 45;
ObjectiveCPreprocessorParser.IN = 46;
ObjectiveCPreprocessorParser.INOUT = 47;
ObjectiveCPreprocessorParser.NIL = 48;
ObjectiveCPreprocessorParser.NO = 49;
ObjectiveCPreprocessorParser.NULL = 50;
ObjectiveCPreprocessorParser.ONEWAY = 51;
ObjectiveCPreprocessorParser.OUT = 52;
ObjectiveCPreprocessorParser.PROTOCOL_ = 53;
ObjectiveCPreprocessorParser.SEL = 54;
ObjectiveCPreprocessorParser.SELF = 55;
ObjectiveCPreprocessorParser.SUPER = 56;
ObjectiveCPreprocessorParser.YES = 57;
ObjectiveCPreprocessorParser.AUTORELEASEPOOL = 58;
ObjectiveCPreprocessorParser.CATCH = 59;
ObjectiveCPreprocessorParser.CLASS = 60;
ObjectiveCPreprocessorParser.DYNAMIC = 61;
ObjectiveCPreprocessorParser.ENCODE = 62;
ObjectiveCPreprocessorParser.END = 63;
ObjectiveCPreprocessorParser.FINALLY = 64;
ObjectiveCPreprocessorParser.IMPLEMENTATION = 65;
ObjectiveCPreprocessorParser.INTERFACE = 66;
ObjectiveCPreprocessorParser.IMPORT = 67;
ObjectiveCPreprocessorParser.PACKAGE = 68;
ObjectiveCPreprocessorParser.PROTOCOL = 69;
ObjectiveCPreprocessorParser.OPTIONAL = 70;
ObjectiveCPreprocessorParser.PRIVATE = 71;
ObjectiveCPreprocessorParser.PROPERTY = 72;
ObjectiveCPreprocessorParser.PROTECTED = 73;
ObjectiveCPreprocessorParser.PUBLIC = 74;
ObjectiveCPreprocessorParser.REQUIRED = 75;
ObjectiveCPreprocessorParser.SELECTOR = 76;
ObjectiveCPreprocessorParser.SYNCHRONIZED = 77;
ObjectiveCPreprocessorParser.SYNTHESIZE = 78;
ObjectiveCPreprocessorParser.THROW = 79;
ObjectiveCPreprocessorParser.TRY = 80;
ObjectiveCPreprocessorParser.ATOMIC = 81;
ObjectiveCPreprocessorParser.NONATOMIC = 82;
ObjectiveCPreprocessorParser.RETAIN = 83;
ObjectiveCPreprocessorParser.ATTRIBUTE = 84;
ObjectiveCPreprocessorParser.AUTORELEASING_QUALIFIER = 85;
ObjectiveCPreprocessorParser.BLOCK = 86;
ObjectiveCPreprocessorParser.BRIDGE = 87;
ObjectiveCPreprocessorParser.BRIDGE_RETAINED = 88;
ObjectiveCPreprocessorParser.BRIDGE_TRANSFER = 89;
ObjectiveCPreprocessorParser.COVARIANT = 90;
ObjectiveCPreprocessorParser.CONTRAVARIANT = 91;
ObjectiveCPreprocessorParser.DEPRECATED = 92;
ObjectiveCPreprocessorParser.KINDOF = 93;
ObjectiveCPreprocessorParser.STRONG_QUALIFIER = 94;
ObjectiveCPreprocessorParser.TYPEOF = 95;
ObjectiveCPreprocessorParser.UNSAFE_UNRETAINED_QUALIFIER = 96;
ObjectiveCPreprocessorParser.UNUSED = 97;
ObjectiveCPreprocessorParser.WEAK_QUALIFIER = 98;
ObjectiveCPreprocessorParser.NULL_UNSPECIFIED = 99;
ObjectiveCPreprocessorParser.NULLABLE = 100;
ObjectiveCPreprocessorParser.NONNULL = 101;
ObjectiveCPreprocessorParser.NULL_RESETTABLE = 102;
ObjectiveCPreprocessorParser.NS_INLINE = 103;
ObjectiveCPreprocessorParser.NS_ENUM = 104;
ObjectiveCPreprocessorParser.NS_OPTIONS = 105;
ObjectiveCPreprocessorParser.ASSIGN = 106;
ObjectiveCPreprocessorParser.COPY = 107;
ObjectiveCPreprocessorParser.GETTER = 108;
ObjectiveCPreprocessorParser.SETTER = 109;
ObjectiveCPreprocessorParser.STRONG = 110;
ObjectiveCPreprocessorParser.READONLY = 111;
ObjectiveCPreprocessorParser.READWRITE = 112;
ObjectiveCPreprocessorParser.WEAK = 113;
ObjectiveCPreprocessorParser.UNSAFE_UNRETAINED = 114;
ObjectiveCPreprocessorParser.IB_OUTLET = 115;
ObjectiveCPreprocessorParser.IB_OUTLET_COLLECTION = 116;
ObjectiveCPreprocessorParser.IB_INSPECTABLE = 117;
ObjectiveCPreprocessorParser.IB_DESIGNABLE = 118;
ObjectiveCPreprocessorParser.NS_ASSUME_NONNULL_BEGIN = 119;
ObjectiveCPreprocessorParser.NS_ASSUME_NONNULL_END = 120;
ObjectiveCPreprocessorParser.EXTERN_SUFFIX = 121;
ObjectiveCPreprocessorParser.IOS_SUFFIX = 122;
ObjectiveCPreprocessorParser.MAC_SUFFIX = 123;
ObjectiveCPreprocessorParser.TVOS_PROHIBITED = 124;
ObjectiveCPreprocessorParser.IDENTIFIER = 125;
ObjectiveCPreprocessorParser.LP = 126;
ObjectiveCPreprocessorParser.RP = 127;
ObjectiveCPreprocessorParser.LBRACE = 128;
ObjectiveCPreprocessorParser.RBRACE = 129;
ObjectiveCPreprocessorParser.LBRACK = 130;
ObjectiveCPreprocessorParser.RBRACK = 131;
ObjectiveCPreprocessorParser.SEMI = 132;
ObjectiveCPreprocessorParser.COMMA = 133;
ObjectiveCPreprocessorParser.DOT = 134;
ObjectiveCPreprocessorParser.STRUCTACCESS = 135;
ObjectiveCPreprocessorParser.AT = 136;
ObjectiveCPreprocessorParser.ASSIGNMENT = 137;
ObjectiveCPreprocessorParser.GT = 138;
ObjectiveCPreprocessorParser.LT = 139;
ObjectiveCPreprocessorParser.BANG = 140;
ObjectiveCPreprocessorParser.TILDE = 141;
ObjectiveCPreprocessorParser.QUESTION = 142;
ObjectiveCPreprocessorParser.COLON = 143;
ObjectiveCPreprocessorParser.EQUAL = 144;
ObjectiveCPreprocessorParser.LE = 145;
ObjectiveCPreprocessorParser.GE = 146;
ObjectiveCPreprocessorParser.NOTEQUAL = 147;
ObjectiveCPreprocessorParser.AND = 148;
ObjectiveCPreprocessorParser.OR = 149;
ObjectiveCPreprocessorParser.INC = 150;
ObjectiveCPreprocessorParser.DEC = 151;
ObjectiveCPreprocessorParser.ADD = 152;
ObjectiveCPreprocessorParser.SUB = 153;
ObjectiveCPreprocessorParser.MUL = 154;
ObjectiveCPreprocessorParser.DIV = 155;
ObjectiveCPreprocessorParser.BITAND = 156;
ObjectiveCPreprocessorParser.BITOR = 157;
ObjectiveCPreprocessorParser.BITXOR = 158;
ObjectiveCPreprocessorParser.MOD = 159;
ObjectiveCPreprocessorParser.ADD_ASSIGN = 160;
ObjectiveCPreprocessorParser.SUB_ASSIGN = 161;
ObjectiveCPreprocessorParser.MUL_ASSIGN = 162;
ObjectiveCPreprocessorParser.DIV_ASSIGN = 163;
ObjectiveCPreprocessorParser.AND_ASSIGN = 164;
ObjectiveCPreprocessorParser.OR_ASSIGN = 165;
ObjectiveCPreprocessorParser.XOR_ASSIGN = 166;
ObjectiveCPreprocessorParser.MOD_ASSIGN = 167;
ObjectiveCPreprocessorParser.LSHIFT_ASSIGN = 168;
ObjectiveCPreprocessorParser.RSHIFT_ASSIGN = 169;
ObjectiveCPreprocessorParser.ELIPSIS = 170;
ObjectiveCPreprocessorParser.CHARACTER_LITERAL = 171;
ObjectiveCPreprocessorParser.STRING_START = 172;
ObjectiveCPreprocessorParser.HEX_LITERAL = 173;
ObjectiveCPreprocessorParser.OCTAL_LITERAL = 174;
ObjectiveCPreprocessorParser.BINARY_LITERAL = 175;
ObjectiveCPreprocessorParser.DECIMAL_LITERAL = 176;
ObjectiveCPreprocessorParser.FLOATING_POINT_LITERAL = 177;
ObjectiveCPreprocessorParser.WS = 178;
ObjectiveCPreprocessorParser.MULTI_COMMENT = 179;
ObjectiveCPreprocessorParser.SINGLE_COMMENT = 180;
ObjectiveCPreprocessorParser.BACKSLASH = 181;
ObjectiveCPreprocessorParser.SHARP = 182;
ObjectiveCPreprocessorParser.STRING_NEWLINE = 183;
ObjectiveCPreprocessorParser.STRING_END = 184;
ObjectiveCPreprocessorParser.STRING_VALUE = 185;
ObjectiveCPreprocessorParser.DIRECTIVE_IMPORT = 186;
ObjectiveCPreprocessorParser.DIRECTIVE_INCLUDE = 187;
ObjectiveCPreprocessorParser.DIRECTIVE_PRAGMA = 188;
ObjectiveCPreprocessorParser.DIRECTIVE_DEFINE = 189;
ObjectiveCPreprocessorParser.DIRECTIVE_DEFINED = 190;
ObjectiveCPreprocessorParser.DIRECTIVE_IF = 191;
ObjectiveCPreprocessorParser.DIRECTIVE_ELIF = 192;
ObjectiveCPreprocessorParser.DIRECTIVE_ELSE = 193;
ObjectiveCPreprocessorParser.DIRECTIVE_UNDEF = 194;
ObjectiveCPreprocessorParser.DIRECTIVE_IFDEF = 195;
ObjectiveCPreprocessorParser.DIRECTIVE_IFNDEF = 196;
ObjectiveCPreprocessorParser.DIRECTIVE_ENDIF = 197;
ObjectiveCPreprocessorParser.DIRECTIVE_TRUE = 198;
ObjectiveCPreprocessorParser.DIRECTIVE_FALSE = 199;
ObjectiveCPreprocessorParser.DIRECTIVE_ERROR = 200;
ObjectiveCPreprocessorParser.DIRECTIVE_WARNING = 201;
ObjectiveCPreprocessorParser.DIRECTIVE_BANG = 202;
ObjectiveCPreprocessorParser.DIRECTIVE_LP = 203;
ObjectiveCPreprocessorParser.DIRECTIVE_RP = 204;
ObjectiveCPreprocessorParser.DIRECTIVE_EQUAL = 205;
ObjectiveCPreprocessorParser.DIRECTIVE_NOTEQUAL = 206;
ObjectiveCPreprocessorParser.DIRECTIVE_AND = 207;
ObjectiveCPreprocessorParser.DIRECTIVE_OR = 208;
ObjectiveCPreprocessorParser.DIRECTIVE_LT = 209;
ObjectiveCPreprocessorParser.DIRECTIVE_GT = 210;
ObjectiveCPreprocessorParser.DIRECTIVE_LE = 211;
ObjectiveCPreprocessorParser.DIRECTIVE_GE = 212;
ObjectiveCPreprocessorParser.DIRECTIVE_STRING = 213;
ObjectiveCPreprocessorParser.DIRECTIVE_ID = 214;
ObjectiveCPreprocessorParser.DIRECTIVE_DECIMAL_LITERAL = 215;
ObjectiveCPreprocessorParser.DIRECTIVE_FLOAT = 216;
ObjectiveCPreprocessorParser.DIRECTIVE_NEWLINE = 217;
ObjectiveCPreprocessorParser.DIRECTIVE_MULTI_COMMENT = 218;
ObjectiveCPreprocessorParser.DIRECTIVE_SINGLE_COMMENT = 219;
ObjectiveCPreprocessorParser.DIRECTIVE_BACKSLASH_NEWLINE = 220;
ObjectiveCPreprocessorParser.DIRECTIVE_TEXT_NEWLINE = 221;
ObjectiveCPreprocessorParser.DIRECTIVE_TEXT = 222;

ObjectiveCPreprocessorParser.RULE_directive = 0;
ObjectiveCPreprocessorParser.RULE_directiveText = 1;
ObjectiveCPreprocessorParser.RULE_preprocessorExpression = 2;


function DirectiveContext(parser, parent, invokingState) {
	if(parent===undefined) {
	    parent = null;
	}
	if(invokingState===undefined || invokingState===null) {
		invokingState = -1;
	}
	antlr4.ParserRuleContext.call(this, parent, invokingState);
    this.parser = parser;
    this.ruleIndex = ObjectiveCPreprocessorParser.RULE_directive;
    return this;
}

DirectiveContext.prototype = Object.create(antlr4.ParserRuleContext.prototype);
DirectiveContext.prototype.constructor = DirectiveContext;


 
DirectiveContext.prototype.copyFrom = function(ctx) {
    antlr4.ParserRuleContext.prototype.copyFrom.call(this, ctx);
};


function PreprocessorDefContext(parser, ctx) {
	DirectiveContext.call(this, parser);
    DirectiveContext.prototype.copyFrom.call(this, ctx);
    return this;
}

PreprocessorDefContext.prototype = Object.create(DirectiveContext.prototype);
PreprocessorDefContext.prototype.constructor = PreprocessorDefContext;

ObjectiveCPreprocessorParser.PreprocessorDefContext = PreprocessorDefContext;

PreprocessorDefContext.prototype.SHARP = function() {
    return this.getToken(ObjectiveCPreprocessorParser.SHARP, 0);
};

PreprocessorDefContext.prototype.DIRECTIVE_IFDEF = function() {
    return this.getToken(ObjectiveCPreprocessorParser.DIRECTIVE_IFDEF, 0);
};

PreprocessorDefContext.prototype.DIRECTIVE_ID = function() {
    return this.getToken(ObjectiveCPreprocessorParser.DIRECTIVE_ID, 0);
};

PreprocessorDefContext.prototype.DIRECTIVE_IFNDEF = function() {
    return this.getToken(ObjectiveCPreprocessorParser.DIRECTIVE_IFNDEF, 0);
};

PreprocessorDefContext.prototype.DIRECTIVE_UNDEF = function() {
    return this.getToken(ObjectiveCPreprocessorParser.DIRECTIVE_UNDEF, 0);
};
PreprocessorDefContext.prototype.enterRule = function(listener) {
    if(listener instanceof ObjectiveCPreprocessorParserListener ) {
        listener.enterPreprocessorDef(this);
	}
};

PreprocessorDefContext.prototype.exitRule = function(listener) {
    if(listener instanceof ObjectiveCPreprocessorParserListener ) {
        listener.exitPreprocessorDef(this);
	}
};


function PreprocessorErrorContext(parser, ctx) {
	DirectiveContext.call(this, parser);
    DirectiveContext.prototype.copyFrom.call(this, ctx);
    return this;
}

PreprocessorErrorContext.prototype = Object.create(DirectiveContext.prototype);
PreprocessorErrorContext.prototype.constructor = PreprocessorErrorContext;

ObjectiveCPreprocessorParser.PreprocessorErrorContext = PreprocessorErrorContext;

PreprocessorErrorContext.prototype.SHARP = function() {
    return this.getToken(ObjectiveCPreprocessorParser.SHARP, 0);
};

PreprocessorErrorContext.prototype.DIRECTIVE_ERROR = function() {
    return this.getToken(ObjectiveCPreprocessorParser.DIRECTIVE_ERROR, 0);
};

PreprocessorErrorContext.prototype.directiveText = function() {
    return this.getTypedRuleContext(DirectiveTextContext,0);
};
PreprocessorErrorContext.prototype.enterRule = function(listener) {
    if(listener instanceof ObjectiveCPreprocessorParserListener ) {
        listener.enterPreprocessorError(this);
	}
};

PreprocessorErrorContext.prototype.exitRule = function(listener) {
    if(listener instanceof ObjectiveCPreprocessorParserListener ) {
        listener.exitPreprocessorError(this);
	}
};


function PreprocessorConditionalContext(parser, ctx) {
	DirectiveContext.call(this, parser);
    DirectiveContext.prototype.copyFrom.call(this, ctx);
    return this;
}

PreprocessorConditionalContext.prototype = Object.create(DirectiveContext.prototype);
PreprocessorConditionalContext.prototype.constructor = PreprocessorConditionalContext;

ObjectiveCPreprocessorParser.PreprocessorConditionalContext = PreprocessorConditionalContext;

PreprocessorConditionalContext.prototype.SHARP = function() {
    return this.getToken(ObjectiveCPreprocessorParser.SHARP, 0);
};

PreprocessorConditionalContext.prototype.DIRECTIVE_IF = function() {
    return this.getToken(ObjectiveCPreprocessorParser.DIRECTIVE_IF, 0);
};

PreprocessorConditionalContext.prototype.preprocessorExpression = function() {
    return this.getTypedRuleContext(PreprocessorExpressionContext,0);
};

PreprocessorConditionalContext.prototype.DIRECTIVE_ELIF = function() {
    return this.getToken(ObjectiveCPreprocessorParser.DIRECTIVE_ELIF, 0);
};

PreprocessorConditionalContext.prototype.DIRECTIVE_ELSE = function() {
    return this.getToken(ObjectiveCPreprocessorParser.DIRECTIVE_ELSE, 0);
};

PreprocessorConditionalContext.prototype.DIRECTIVE_ENDIF = function() {
    return this.getToken(ObjectiveCPreprocessorParser.DIRECTIVE_ENDIF, 0);
};
PreprocessorConditionalContext.prototype.enterRule = function(listener) {
    if(listener instanceof ObjectiveCPreprocessorParserListener ) {
        listener.enterPreprocessorConditional(this);
	}
};

PreprocessorConditionalContext.prototype.exitRule = function(listener) {
    if(listener instanceof ObjectiveCPreprocessorParserListener ) {
        listener.exitPreprocessorConditional(this);
	}
};


function PreprocessorImportContext(parser, ctx) {
	DirectiveContext.call(this, parser);
    DirectiveContext.prototype.copyFrom.call(this, ctx);
    return this;
}

PreprocessorImportContext.prototype = Object.create(DirectiveContext.prototype);
PreprocessorImportContext.prototype.constructor = PreprocessorImportContext;

ObjectiveCPreprocessorParser.PreprocessorImportContext = PreprocessorImportContext;

PreprocessorImportContext.prototype.SHARP = function() {
    return this.getToken(ObjectiveCPreprocessorParser.SHARP, 0);
};

PreprocessorImportContext.prototype.directiveText = function() {
    return this.getTypedRuleContext(DirectiveTextContext,0);
};

PreprocessorImportContext.prototype.DIRECTIVE_IMPORT = function() {
    return this.getToken(ObjectiveCPreprocessorParser.DIRECTIVE_IMPORT, 0);
};

PreprocessorImportContext.prototype.DIRECTIVE_INCLUDE = function() {
    return this.getToken(ObjectiveCPreprocessorParser.DIRECTIVE_INCLUDE, 0);
};
PreprocessorImportContext.prototype.enterRule = function(listener) {
    if(listener instanceof ObjectiveCPreprocessorParserListener ) {
        listener.enterPreprocessorImport(this);
	}
};

PreprocessorImportContext.prototype.exitRule = function(listener) {
    if(listener instanceof ObjectiveCPreprocessorParserListener ) {
        listener.exitPreprocessorImport(this);
	}
};


function PreprocessorPragmaContext(parser, ctx) {
	DirectiveContext.call(this, parser);
    DirectiveContext.prototype.copyFrom.call(this, ctx);
    return this;
}

PreprocessorPragmaContext.prototype = Object.create(DirectiveContext.prototype);
PreprocessorPragmaContext.prototype.constructor = PreprocessorPragmaContext;

ObjectiveCPreprocessorParser.PreprocessorPragmaContext = PreprocessorPragmaContext;

PreprocessorPragmaContext.prototype.SHARP = function() {
    return this.getToken(ObjectiveCPreprocessorParser.SHARP, 0);
};

PreprocessorPragmaContext.prototype.DIRECTIVE_PRAGMA = function() {
    return this.getToken(ObjectiveCPreprocessorParser.DIRECTIVE_PRAGMA, 0);
};

PreprocessorPragmaContext.prototype.directiveText = function() {
    return this.getTypedRuleContext(DirectiveTextContext,0);
};
PreprocessorPragmaContext.prototype.enterRule = function(listener) {
    if(listener instanceof ObjectiveCPreprocessorParserListener ) {
        listener.enterPreprocessorPragma(this);
	}
};

PreprocessorPragmaContext.prototype.exitRule = function(listener) {
    if(listener instanceof ObjectiveCPreprocessorParserListener ) {
        listener.exitPreprocessorPragma(this);
	}
};


function PreprocessorDefineContext(parser, ctx) {
	DirectiveContext.call(this, parser);
    DirectiveContext.prototype.copyFrom.call(this, ctx);
    return this;
}

PreprocessorDefineContext.prototype = Object.create(DirectiveContext.prototype);
PreprocessorDefineContext.prototype.constructor = PreprocessorDefineContext;

ObjectiveCPreprocessorParser.PreprocessorDefineContext = PreprocessorDefineContext;

PreprocessorDefineContext.prototype.SHARP = function() {
    return this.getToken(ObjectiveCPreprocessorParser.SHARP, 0);
};

PreprocessorDefineContext.prototype.DIRECTIVE_DEFINE = function() {
    return this.getToken(ObjectiveCPreprocessorParser.DIRECTIVE_DEFINE, 0);
};

PreprocessorDefineContext.prototype.DIRECTIVE_ID = function() {
    return this.getToken(ObjectiveCPreprocessorParser.DIRECTIVE_ID, 0);
};

PreprocessorDefineContext.prototype.directiveText = function() {
    return this.getTypedRuleContext(DirectiveTextContext,0);
};
PreprocessorDefineContext.prototype.enterRule = function(listener) {
    if(listener instanceof ObjectiveCPreprocessorParserListener ) {
        listener.enterPreprocessorDefine(this);
	}
};

PreprocessorDefineContext.prototype.exitRule = function(listener) {
    if(listener instanceof ObjectiveCPreprocessorParserListener ) {
        listener.exitPreprocessorDefine(this);
	}
};


function PreprocessorWarningContext(parser, ctx) {
	DirectiveContext.call(this, parser);
    DirectiveContext.prototype.copyFrom.call(this, ctx);
    return this;
}

PreprocessorWarningContext.prototype = Object.create(DirectiveContext.prototype);
PreprocessorWarningContext.prototype.constructor = PreprocessorWarningContext;

ObjectiveCPreprocessorParser.PreprocessorWarningContext = PreprocessorWarningContext;

PreprocessorWarningContext.prototype.SHARP = function() {
    return this.getToken(ObjectiveCPreprocessorParser.SHARP, 0);
};

PreprocessorWarningContext.prototype.DIRECTIVE_WARNING = function() {
    return this.getToken(ObjectiveCPreprocessorParser.DIRECTIVE_WARNING, 0);
};

PreprocessorWarningContext.prototype.directiveText = function() {
    return this.getTypedRuleContext(DirectiveTextContext,0);
};
PreprocessorWarningContext.prototype.enterRule = function(listener) {
    if(listener instanceof ObjectiveCPreprocessorParserListener ) {
        listener.enterPreprocessorWarning(this);
	}
};

PreprocessorWarningContext.prototype.exitRule = function(listener) {
    if(listener instanceof ObjectiveCPreprocessorParserListener ) {
        listener.exitPreprocessorWarning(this);
	}
};



ObjectiveCPreprocessorParser.DirectiveContext = DirectiveContext;

ObjectiveCPreprocessorParser.prototype.directive = function() {

    var localctx = new DirectiveContext(this, this._ctx, this.state);
    this.enterRule(localctx, 0, ObjectiveCPreprocessorParser.RULE_directive);
    var _la = 0; // Token type
    try {
        this.state = 43;
        this._errHandler.sync(this);
        var la_ = this._interp.adaptivePredict(this._input,1,this._ctx);
        switch(la_) {
        case 1:
            localctx = new PreprocessorImportContext(this, localctx);
            this.enterOuterAlt(localctx, 1);
            this.state = 6;
            this.match(ObjectiveCPreprocessorParser.SHARP);
            this.state = 7;
            _la = this._input.LA(1);
            if(!(_la===ObjectiveCPreprocessorParser.DIRECTIVE_IMPORT || _la===ObjectiveCPreprocessorParser.DIRECTIVE_INCLUDE)) {
            this._errHandler.recoverInline(this);
            }
            else {
            	this._errHandler.reportMatch(this);
                this.consume();
            }
            this.state = 8;
            this.directiveText();
            break;

        case 2:
            localctx = new PreprocessorConditionalContext(this, localctx);
            this.enterOuterAlt(localctx, 2);
            this.state = 9;
            this.match(ObjectiveCPreprocessorParser.SHARP);
            this.state = 10;
            this.match(ObjectiveCPreprocessorParser.DIRECTIVE_IF);
            this.state = 11;
            this.preprocessorExpression(0);
            break;

        case 3:
            localctx = new PreprocessorConditionalContext(this, localctx);
            this.enterOuterAlt(localctx, 3);
            this.state = 12;
            this.match(ObjectiveCPreprocessorParser.SHARP);
            this.state = 13;
            this.match(ObjectiveCPreprocessorParser.DIRECTIVE_ELIF);
            this.state = 14;
            this.preprocessorExpression(0);
            break;

        case 4:
            localctx = new PreprocessorConditionalContext(this, localctx);
            this.enterOuterAlt(localctx, 4);
            this.state = 15;
            this.match(ObjectiveCPreprocessorParser.SHARP);
            this.state = 16;
            this.match(ObjectiveCPreprocessorParser.DIRECTIVE_ELSE);
            break;

        case 5:
            localctx = new PreprocessorConditionalContext(this, localctx);
            this.enterOuterAlt(localctx, 5);
            this.state = 17;
            this.match(ObjectiveCPreprocessorParser.SHARP);
            this.state = 18;
            this.match(ObjectiveCPreprocessorParser.DIRECTIVE_ENDIF);
            break;

        case 6:
            localctx = new PreprocessorDefContext(this, localctx);
            this.enterOuterAlt(localctx, 6);
            this.state = 19;
            this.match(ObjectiveCPreprocessorParser.SHARP);
            this.state = 20;
            this.match(ObjectiveCPreprocessorParser.DIRECTIVE_IFDEF);
            this.state = 21;
            this.match(ObjectiveCPreprocessorParser.DIRECTIVE_ID);
            break;

        case 7:
            localctx = new PreprocessorDefContext(this, localctx);
            this.enterOuterAlt(localctx, 7);
            this.state = 22;
            this.match(ObjectiveCPreprocessorParser.SHARP);
            this.state = 23;
            this.match(ObjectiveCPreprocessorParser.DIRECTIVE_IFNDEF);
            this.state = 24;
            this.match(ObjectiveCPreprocessorParser.DIRECTIVE_ID);
            break;

        case 8:
            localctx = new PreprocessorDefContext(this, localctx);
            this.enterOuterAlt(localctx, 8);
            this.state = 25;
            this.match(ObjectiveCPreprocessorParser.SHARP);
            this.state = 26;
            this.match(ObjectiveCPreprocessorParser.DIRECTIVE_UNDEF);
            this.state = 27;
            this.match(ObjectiveCPreprocessorParser.DIRECTIVE_ID);
            break;

        case 9:
            localctx = new PreprocessorPragmaContext(this, localctx);
            this.enterOuterAlt(localctx, 9);
            this.state = 28;
            this.match(ObjectiveCPreprocessorParser.SHARP);
            this.state = 29;
            this.match(ObjectiveCPreprocessorParser.DIRECTIVE_PRAGMA);
            this.state = 30;
            this.directiveText();
            break;

        case 10:
            localctx = new PreprocessorErrorContext(this, localctx);
            this.enterOuterAlt(localctx, 10);
            this.state = 31;
            this.match(ObjectiveCPreprocessorParser.SHARP);
            this.state = 32;
            this.match(ObjectiveCPreprocessorParser.DIRECTIVE_ERROR);
            this.state = 33;
            this.directiveText();
            break;

        case 11:
            localctx = new PreprocessorWarningContext(this, localctx);
            this.enterOuterAlt(localctx, 11);
            this.state = 34;
            this.match(ObjectiveCPreprocessorParser.SHARP);
            this.state = 35;
            this.match(ObjectiveCPreprocessorParser.DIRECTIVE_WARNING);
            this.state = 36;
            this.directiveText();
            break;

        case 12:
            localctx = new PreprocessorDefineContext(this, localctx);
            this.enterOuterAlt(localctx, 12);
            this.state = 37;
            this.match(ObjectiveCPreprocessorParser.SHARP);
            this.state = 38;
            this.match(ObjectiveCPreprocessorParser.DIRECTIVE_DEFINE);
            this.state = 39;
            this.match(ObjectiveCPreprocessorParser.DIRECTIVE_ID);
            this.state = 41;
            this._errHandler.sync(this);
            _la = this._input.LA(1);
            if(_la===ObjectiveCPreprocessorParser.DIRECTIVE_TEXT_NEWLINE || _la===ObjectiveCPreprocessorParser.DIRECTIVE_TEXT) {
                this.state = 40;
                this.directiveText();
            }

            break;

        }
    } catch (re) {
    	if(re instanceof antlr4.error.RecognitionException) {
	        localctx.exception = re;
	        this._errHandler.reportError(this, re);
	        this._errHandler.recover(this, re);
	    } else {
	    	throw re;
	    }
    } finally {
        this.exitRule();
    }
    return localctx;
};


function DirectiveTextContext(parser, parent, invokingState) {
	if(parent===undefined) {
	    parent = null;
	}
	if(invokingState===undefined || invokingState===null) {
		invokingState = -1;
	}
	antlr4.ParserRuleContext.call(this, parent, invokingState);
    this.parser = parser;
    this.ruleIndex = ObjectiveCPreprocessorParser.RULE_directiveText;
    return this;
}

DirectiveTextContext.prototype = Object.create(antlr4.ParserRuleContext.prototype);
DirectiveTextContext.prototype.constructor = DirectiveTextContext;

DirectiveTextContext.prototype.DIRECTIVE_TEXT = function(i) {
	if(i===undefined) {
		i = null;
	}
    if(i===null) {
        return this.getTokens(ObjectiveCPreprocessorParser.DIRECTIVE_TEXT);
    } else {
        return this.getToken(ObjectiveCPreprocessorParser.DIRECTIVE_TEXT, i);
    }
};


DirectiveTextContext.prototype.DIRECTIVE_TEXT_NEWLINE = function(i) {
	if(i===undefined) {
		i = null;
	}
    if(i===null) {
        return this.getTokens(ObjectiveCPreprocessorParser.DIRECTIVE_TEXT_NEWLINE);
    } else {
        return this.getToken(ObjectiveCPreprocessorParser.DIRECTIVE_TEXT_NEWLINE, i);
    }
};


DirectiveTextContext.prototype.enterRule = function(listener) {
    if(listener instanceof ObjectiveCPreprocessorParserListener ) {
        listener.enterDirectiveText(this);
	}
};

DirectiveTextContext.prototype.exitRule = function(listener) {
    if(listener instanceof ObjectiveCPreprocessorParserListener ) {
        listener.exitDirectiveText(this);
	}
};




ObjectiveCPreprocessorParser.DirectiveTextContext = DirectiveTextContext;

ObjectiveCPreprocessorParser.prototype.directiveText = function() {

    var localctx = new DirectiveTextContext(this, this._ctx, this.state);
    this.enterRule(localctx, 2, ObjectiveCPreprocessorParser.RULE_directiveText);
    var _la = 0; // Token type
    try {
        this.enterOuterAlt(localctx, 1);
        this.state = 46; 
        this._errHandler.sync(this);
        _la = this._input.LA(1);
        do {
            this.state = 45;
            _la = this._input.LA(1);
            if(!(_la===ObjectiveCPreprocessorParser.DIRECTIVE_TEXT_NEWLINE || _la===ObjectiveCPreprocessorParser.DIRECTIVE_TEXT)) {
            this._errHandler.recoverInline(this);
            }
            else {
            	this._errHandler.reportMatch(this);
                this.consume();
            }
            this.state = 48; 
            this._errHandler.sync(this);
            _la = this._input.LA(1);
        } while(_la===ObjectiveCPreprocessorParser.DIRECTIVE_TEXT_NEWLINE || _la===ObjectiveCPreprocessorParser.DIRECTIVE_TEXT);
    } catch (re) {
    	if(re instanceof antlr4.error.RecognitionException) {
	        localctx.exception = re;
	        this._errHandler.reportError(this, re);
	        this._errHandler.recover(this, re);
	    } else {
	    	throw re;
	    }
    } finally {
        this.exitRule();
    }
    return localctx;
};


function PreprocessorExpressionContext(parser, parent, invokingState) {
	if(parent===undefined) {
	    parent = null;
	}
	if(invokingState===undefined || invokingState===null) {
		invokingState = -1;
	}
	antlr4.ParserRuleContext.call(this, parent, invokingState);
    this.parser = parser;
    this.ruleIndex = ObjectiveCPreprocessorParser.RULE_preprocessorExpression;
    return this;
}

PreprocessorExpressionContext.prototype = Object.create(antlr4.ParserRuleContext.prototype);
PreprocessorExpressionContext.prototype.constructor = PreprocessorExpressionContext;


 
PreprocessorExpressionContext.prototype.copyFrom = function(ctx) {
    antlr4.ParserRuleContext.prototype.copyFrom.call(this, ctx);
};

function PreprocessorParenthesisContext(parser, ctx) {
	PreprocessorExpressionContext.call(this, parser);
    PreprocessorExpressionContext.prototype.copyFrom.call(this, ctx);
    return this;
}

PreprocessorParenthesisContext.prototype = Object.create(PreprocessorExpressionContext.prototype);
PreprocessorParenthesisContext.prototype.constructor = PreprocessorParenthesisContext;

ObjectiveCPreprocessorParser.PreprocessorParenthesisContext = PreprocessorParenthesisContext;

PreprocessorParenthesisContext.prototype.DIRECTIVE_LP = function() {
    return this.getToken(ObjectiveCPreprocessorParser.DIRECTIVE_LP, 0);
};

PreprocessorParenthesisContext.prototype.preprocessorExpression = function() {
    return this.getTypedRuleContext(PreprocessorExpressionContext,0);
};

PreprocessorParenthesisContext.prototype.DIRECTIVE_RP = function() {
    return this.getToken(ObjectiveCPreprocessorParser.DIRECTIVE_RP, 0);
};
PreprocessorParenthesisContext.prototype.enterRule = function(listener) {
    if(listener instanceof ObjectiveCPreprocessorParserListener ) {
        listener.enterPreprocessorParenthesis(this);
	}
};

PreprocessorParenthesisContext.prototype.exitRule = function(listener) {
    if(listener instanceof ObjectiveCPreprocessorParserListener ) {
        listener.exitPreprocessorParenthesis(this);
	}
};


function PreprocessorNotContext(parser, ctx) {
	PreprocessorExpressionContext.call(this, parser);
    PreprocessorExpressionContext.prototype.copyFrom.call(this, ctx);
    return this;
}

PreprocessorNotContext.prototype = Object.create(PreprocessorExpressionContext.prototype);
PreprocessorNotContext.prototype.constructor = PreprocessorNotContext;

ObjectiveCPreprocessorParser.PreprocessorNotContext = PreprocessorNotContext;

PreprocessorNotContext.prototype.DIRECTIVE_BANG = function() {
    return this.getToken(ObjectiveCPreprocessorParser.DIRECTIVE_BANG, 0);
};

PreprocessorNotContext.prototype.preprocessorExpression = function() {
    return this.getTypedRuleContext(PreprocessorExpressionContext,0);
};
PreprocessorNotContext.prototype.enterRule = function(listener) {
    if(listener instanceof ObjectiveCPreprocessorParserListener ) {
        listener.enterPreprocessorNot(this);
	}
};

PreprocessorNotContext.prototype.exitRule = function(listener) {
    if(listener instanceof ObjectiveCPreprocessorParserListener ) {
        listener.exitPreprocessorNot(this);
	}
};


function PreprocessorBinaryContext(parser, ctx) {
	PreprocessorExpressionContext.call(this, parser);
    this.op = null; // Token;
    PreprocessorExpressionContext.prototype.copyFrom.call(this, ctx);
    return this;
}

PreprocessorBinaryContext.prototype = Object.create(PreprocessorExpressionContext.prototype);
PreprocessorBinaryContext.prototype.constructor = PreprocessorBinaryContext;

ObjectiveCPreprocessorParser.PreprocessorBinaryContext = PreprocessorBinaryContext;

PreprocessorBinaryContext.prototype.preprocessorExpression = function(i) {
    if(i===undefined) {
        i = null;
    }
    if(i===null) {
        return this.getTypedRuleContexts(PreprocessorExpressionContext);
    } else {
        return this.getTypedRuleContext(PreprocessorExpressionContext,i);
    }
};

PreprocessorBinaryContext.prototype.DIRECTIVE_EQUAL = function() {
    return this.getToken(ObjectiveCPreprocessorParser.DIRECTIVE_EQUAL, 0);
};

PreprocessorBinaryContext.prototype.DIRECTIVE_NOTEQUAL = function() {
    return this.getToken(ObjectiveCPreprocessorParser.DIRECTIVE_NOTEQUAL, 0);
};

PreprocessorBinaryContext.prototype.DIRECTIVE_AND = function() {
    return this.getToken(ObjectiveCPreprocessorParser.DIRECTIVE_AND, 0);
};

PreprocessorBinaryContext.prototype.DIRECTIVE_OR = function() {
    return this.getToken(ObjectiveCPreprocessorParser.DIRECTIVE_OR, 0);
};

PreprocessorBinaryContext.prototype.DIRECTIVE_LT = function() {
    return this.getToken(ObjectiveCPreprocessorParser.DIRECTIVE_LT, 0);
};

PreprocessorBinaryContext.prototype.DIRECTIVE_GT = function() {
    return this.getToken(ObjectiveCPreprocessorParser.DIRECTIVE_GT, 0);
};

PreprocessorBinaryContext.prototype.DIRECTIVE_LE = function() {
    return this.getToken(ObjectiveCPreprocessorParser.DIRECTIVE_LE, 0);
};

PreprocessorBinaryContext.prototype.DIRECTIVE_GE = function() {
    return this.getToken(ObjectiveCPreprocessorParser.DIRECTIVE_GE, 0);
};
PreprocessorBinaryContext.prototype.enterRule = function(listener) {
    if(listener instanceof ObjectiveCPreprocessorParserListener ) {
        listener.enterPreprocessorBinary(this);
	}
};

PreprocessorBinaryContext.prototype.exitRule = function(listener) {
    if(listener instanceof ObjectiveCPreprocessorParserListener ) {
        listener.exitPreprocessorBinary(this);
	}
};


function PreprocessorConstantContext(parser, ctx) {
	PreprocessorExpressionContext.call(this, parser);
    PreprocessorExpressionContext.prototype.copyFrom.call(this, ctx);
    return this;
}

PreprocessorConstantContext.prototype = Object.create(PreprocessorExpressionContext.prototype);
PreprocessorConstantContext.prototype.constructor = PreprocessorConstantContext;

ObjectiveCPreprocessorParser.PreprocessorConstantContext = PreprocessorConstantContext;

PreprocessorConstantContext.prototype.DIRECTIVE_TRUE = function() {
    return this.getToken(ObjectiveCPreprocessorParser.DIRECTIVE_TRUE, 0);
};

PreprocessorConstantContext.prototype.DIRECTIVE_FALSE = function() {
    return this.getToken(ObjectiveCPreprocessorParser.DIRECTIVE_FALSE, 0);
};

PreprocessorConstantContext.prototype.DIRECTIVE_DECIMAL_LITERAL = function() {
    return this.getToken(ObjectiveCPreprocessorParser.DIRECTIVE_DECIMAL_LITERAL, 0);
};

PreprocessorConstantContext.prototype.DIRECTIVE_STRING = function() {
    return this.getToken(ObjectiveCPreprocessorParser.DIRECTIVE_STRING, 0);
};
PreprocessorConstantContext.prototype.enterRule = function(listener) {
    if(listener instanceof ObjectiveCPreprocessorParserListener ) {
        listener.enterPreprocessorConstant(this);
	}
};

PreprocessorConstantContext.prototype.exitRule = function(listener) {
    if(listener instanceof ObjectiveCPreprocessorParserListener ) {
        listener.exitPreprocessorConstant(this);
	}
};


function PreprocessorConditionalSymbolContext(parser, ctx) {
	PreprocessorExpressionContext.call(this, parser);
    PreprocessorExpressionContext.prototype.copyFrom.call(this, ctx);
    return this;
}

PreprocessorConditionalSymbolContext.prototype = Object.create(PreprocessorExpressionContext.prototype);
PreprocessorConditionalSymbolContext.prototype.constructor = PreprocessorConditionalSymbolContext;

ObjectiveCPreprocessorParser.PreprocessorConditionalSymbolContext = PreprocessorConditionalSymbolContext;

PreprocessorConditionalSymbolContext.prototype.DIRECTIVE_ID = function() {
    return this.getToken(ObjectiveCPreprocessorParser.DIRECTIVE_ID, 0);
};

PreprocessorConditionalSymbolContext.prototype.DIRECTIVE_LP = function() {
    return this.getToken(ObjectiveCPreprocessorParser.DIRECTIVE_LP, 0);
};

PreprocessorConditionalSymbolContext.prototype.preprocessorExpression = function() {
    return this.getTypedRuleContext(PreprocessorExpressionContext,0);
};

PreprocessorConditionalSymbolContext.prototype.DIRECTIVE_RP = function() {
    return this.getToken(ObjectiveCPreprocessorParser.DIRECTIVE_RP, 0);
};
PreprocessorConditionalSymbolContext.prototype.enterRule = function(listener) {
    if(listener instanceof ObjectiveCPreprocessorParserListener ) {
        listener.enterPreprocessorConditionalSymbol(this);
	}
};

PreprocessorConditionalSymbolContext.prototype.exitRule = function(listener) {
    if(listener instanceof ObjectiveCPreprocessorParserListener ) {
        listener.exitPreprocessorConditionalSymbol(this);
	}
};


function PreprocessorDefinedContext(parser, ctx) {
	PreprocessorExpressionContext.call(this, parser);
    PreprocessorExpressionContext.prototype.copyFrom.call(this, ctx);
    return this;
}

PreprocessorDefinedContext.prototype = Object.create(PreprocessorExpressionContext.prototype);
PreprocessorDefinedContext.prototype.constructor = PreprocessorDefinedContext;

ObjectiveCPreprocessorParser.PreprocessorDefinedContext = PreprocessorDefinedContext;

PreprocessorDefinedContext.prototype.DIRECTIVE_DEFINED = function() {
    return this.getToken(ObjectiveCPreprocessorParser.DIRECTIVE_DEFINED, 0);
};

PreprocessorDefinedContext.prototype.DIRECTIVE_ID = function() {
    return this.getToken(ObjectiveCPreprocessorParser.DIRECTIVE_ID, 0);
};

PreprocessorDefinedContext.prototype.DIRECTIVE_LP = function() {
    return this.getToken(ObjectiveCPreprocessorParser.DIRECTIVE_LP, 0);
};

PreprocessorDefinedContext.prototype.DIRECTIVE_RP = function() {
    return this.getToken(ObjectiveCPreprocessorParser.DIRECTIVE_RP, 0);
};
PreprocessorDefinedContext.prototype.enterRule = function(listener) {
    if(listener instanceof ObjectiveCPreprocessorParserListener ) {
        listener.enterPreprocessorDefined(this);
	}
};

PreprocessorDefinedContext.prototype.exitRule = function(listener) {
    if(listener instanceof ObjectiveCPreprocessorParserListener ) {
        listener.exitPreprocessorDefined(this);
	}
};



ObjectiveCPreprocessorParser.prototype.preprocessorExpression = function(_p) {
	if(_p===undefined) {
	    _p = 0;
	}
    var _parentctx = this._ctx;
    var _parentState = this.state;
    var localctx = new PreprocessorExpressionContext(this, this._ctx, _parentState);
    var _prevctx = localctx;
    var _startState = 4;
    this.enterRecursionRule(localctx, 4, ObjectiveCPreprocessorParser.RULE_preprocessorExpression, _p);
    var _la = 0; // Token type
    try {
        this.enterOuterAlt(localctx, 1);
        this.state = 75;
        this._errHandler.sync(this);
        switch(this._input.LA(1)) {
        case ObjectiveCPreprocessorParser.DIRECTIVE_TRUE:
            localctx = new PreprocessorConstantContext(this, localctx);
            this._ctx = localctx;
            _prevctx = localctx;

            this.state = 51;
            this.match(ObjectiveCPreprocessorParser.DIRECTIVE_TRUE);
            break;
        case ObjectiveCPreprocessorParser.DIRECTIVE_FALSE:
            localctx = new PreprocessorConstantContext(this, localctx);
            this._ctx = localctx;
            _prevctx = localctx;
            this.state = 52;
            this.match(ObjectiveCPreprocessorParser.DIRECTIVE_FALSE);
            break;
        case ObjectiveCPreprocessorParser.DIRECTIVE_DECIMAL_LITERAL:
            localctx = new PreprocessorConstantContext(this, localctx);
            this._ctx = localctx;
            _prevctx = localctx;
            this.state = 53;
            this.match(ObjectiveCPreprocessorParser.DIRECTIVE_DECIMAL_LITERAL);
            break;
        case ObjectiveCPreprocessorParser.DIRECTIVE_STRING:
            localctx = new PreprocessorConstantContext(this, localctx);
            this._ctx = localctx;
            _prevctx = localctx;
            this.state = 54;
            this.match(ObjectiveCPreprocessorParser.DIRECTIVE_STRING);
            break;
        case ObjectiveCPreprocessorParser.DIRECTIVE_ID:
            localctx = new PreprocessorConditionalSymbolContext(this, localctx);
            this._ctx = localctx;
            _prevctx = localctx;
            this.state = 55;
            this.match(ObjectiveCPreprocessorParser.DIRECTIVE_ID);
            this.state = 60;
            this._errHandler.sync(this);
            var la_ = this._interp.adaptivePredict(this._input,3,this._ctx);
            if(la_===1) {
                this.state = 56;
                this.match(ObjectiveCPreprocessorParser.DIRECTIVE_LP);
                this.state = 57;
                this.preprocessorExpression(0);
                this.state = 58;
                this.match(ObjectiveCPreprocessorParser.DIRECTIVE_RP);

            }
            break;
        case ObjectiveCPreprocessorParser.DIRECTIVE_LP:
            localctx = new PreprocessorParenthesisContext(this, localctx);
            this._ctx = localctx;
            _prevctx = localctx;
            this.state = 62;
            this.match(ObjectiveCPreprocessorParser.DIRECTIVE_LP);
            this.state = 63;
            this.preprocessorExpression(0);
            this.state = 64;
            this.match(ObjectiveCPreprocessorParser.DIRECTIVE_RP);
            break;
        case ObjectiveCPreprocessorParser.DIRECTIVE_BANG:
            localctx = new PreprocessorNotContext(this, localctx);
            this._ctx = localctx;
            _prevctx = localctx;
            this.state = 66;
            this.match(ObjectiveCPreprocessorParser.DIRECTIVE_BANG);
            this.state = 67;
            this.preprocessorExpression(6);
            break;
        case ObjectiveCPreprocessorParser.DIRECTIVE_DEFINED:
            localctx = new PreprocessorDefinedContext(this, localctx);
            this._ctx = localctx;
            _prevctx = localctx;
            this.state = 68;
            this.match(ObjectiveCPreprocessorParser.DIRECTIVE_DEFINED);
            this.state = 73;
            this._errHandler.sync(this);
            switch(this._input.LA(1)) {
            case ObjectiveCPreprocessorParser.DIRECTIVE_ID:
                this.state = 69;
                this.match(ObjectiveCPreprocessorParser.DIRECTIVE_ID);
                break;
            case ObjectiveCPreprocessorParser.DIRECTIVE_LP:
                this.state = 70;
                this.match(ObjectiveCPreprocessorParser.DIRECTIVE_LP);
                this.state = 71;
                this.match(ObjectiveCPreprocessorParser.DIRECTIVE_ID);
                this.state = 72;
                this.match(ObjectiveCPreprocessorParser.DIRECTIVE_RP);
                break;
            default:
                throw new antlr4.error.NoViableAltException(this);
            }
            break;
        default:
            throw new antlr4.error.NoViableAltException(this);
        }
        this._ctx.stop = this._input.LT(-1);
        this.state = 91;
        this._errHandler.sync(this);
        var _alt = this._interp.adaptivePredict(this._input,7,this._ctx)
        while(_alt!=2 && _alt!=antlr4.atn.ATN.INVALID_ALT_NUMBER) {
            if(_alt===1) {
                if(this._parseListeners!==null) {
                    this.triggerExitRuleEvent();
                }
                _prevctx = localctx;
                this.state = 89;
                this._errHandler.sync(this);
                var la_ = this._interp.adaptivePredict(this._input,6,this._ctx);
                switch(la_) {
                case 1:
                    localctx = new PreprocessorBinaryContext(this, new PreprocessorExpressionContext(this, _parentctx, _parentState));
                    this.pushNewRecursionContext(localctx, _startState, ObjectiveCPreprocessorParser.RULE_preprocessorExpression);
                    this.state = 77;
                    if (!( this.precpred(this._ctx, 5))) {
                        throw new antlr4.error.FailedPredicateException(this, "this.precpred(this._ctx, 5)");
                    }
                    this.state = 78;
                    localctx.op = this._input.LT(1);
                    _la = this._input.LA(1);
                    if(!(_la===ObjectiveCPreprocessorParser.DIRECTIVE_EQUAL || _la===ObjectiveCPreprocessorParser.DIRECTIVE_NOTEQUAL)) {
                        localctx.op = this._errHandler.recoverInline(this);
                    }
                    else {
                    	this._errHandler.reportMatch(this);
                        this.consume();
                    }
                    this.state = 79;
                    this.preprocessorExpression(6);
                    break;

                case 2:
                    localctx = new PreprocessorBinaryContext(this, new PreprocessorExpressionContext(this, _parentctx, _parentState));
                    this.pushNewRecursionContext(localctx, _startState, ObjectiveCPreprocessorParser.RULE_preprocessorExpression);
                    this.state = 80;
                    if (!( this.precpred(this._ctx, 4))) {
                        throw new antlr4.error.FailedPredicateException(this, "this.precpred(this._ctx, 4)");
                    }
                    this.state = 81;
                    localctx.op = this.match(ObjectiveCPreprocessorParser.DIRECTIVE_AND);
                    this.state = 82;
                    this.preprocessorExpression(5);
                    break;

                case 3:
                    localctx = new PreprocessorBinaryContext(this, new PreprocessorExpressionContext(this, _parentctx, _parentState));
                    this.pushNewRecursionContext(localctx, _startState, ObjectiveCPreprocessorParser.RULE_preprocessorExpression);
                    this.state = 83;
                    if (!( this.precpred(this._ctx, 3))) {
                        throw new antlr4.error.FailedPredicateException(this, "this.precpred(this._ctx, 3)");
                    }
                    this.state = 84;
                    localctx.op = this.match(ObjectiveCPreprocessorParser.DIRECTIVE_OR);
                    this.state = 85;
                    this.preprocessorExpression(4);
                    break;

                case 4:
                    localctx = new PreprocessorBinaryContext(this, new PreprocessorExpressionContext(this, _parentctx, _parentState));
                    this.pushNewRecursionContext(localctx, _startState, ObjectiveCPreprocessorParser.RULE_preprocessorExpression);
                    this.state = 86;
                    if (!( this.precpred(this._ctx, 2))) {
                        throw new antlr4.error.FailedPredicateException(this, "this.precpred(this._ctx, 2)");
                    }
                    this.state = 87;
                    localctx.op = this._input.LT(1);
                    _la = this._input.LA(1);
                    if(!(((((_la - 209)) & ~0x1f) == 0 && ((1 << (_la - 209)) & ((1 << (ObjectiveCPreprocessorParser.DIRECTIVE_LT - 209)) | (1 << (ObjectiveCPreprocessorParser.DIRECTIVE_GT - 209)) | (1 << (ObjectiveCPreprocessorParser.DIRECTIVE_LE - 209)) | (1 << (ObjectiveCPreprocessorParser.DIRECTIVE_GE - 209)))) !== 0))) {
                        localctx.op = this._errHandler.recoverInline(this);
                    }
                    else {
                    	this._errHandler.reportMatch(this);
                        this.consume();
                    }
                    this.state = 88;
                    this.preprocessorExpression(3);
                    break;

                } 
            }
            this.state = 93;
            this._errHandler.sync(this);
            _alt = this._interp.adaptivePredict(this._input,7,this._ctx);
        }

    } catch( error) {
        if(error instanceof antlr4.error.RecognitionException) {
	        localctx.exception = error;
	        this._errHandler.reportError(this, error);
	        this._errHandler.recover(this, error);
	    } else {
	    	throw error;
	    }
    } finally {
        this.unrollRecursionContexts(_parentctx)
    }
    return localctx;
};


ObjectiveCPreprocessorParser.prototype.sempred = function(localctx, ruleIndex, predIndex) {
	switch(ruleIndex) {
	case 2:
			return this.preprocessorExpression_sempred(localctx, predIndex);
    default:
        throw "No predicate with index:" + ruleIndex;
   }
};

ObjectiveCPreprocessorParser.prototype.preprocessorExpression_sempred = function(localctx, predIndex) {
	switch(predIndex) {
		case 0:
			return this.precpred(this._ctx, 5);
		case 1:
			return this.precpred(this._ctx, 4);
		case 2:
			return this.precpred(this._ctx, 3);
		case 3:
			return this.precpred(this._ctx, 2);
		default:
			throw "No predicate with index:" + predIndex;
	}
};


exports.ObjectiveCPreprocessorParser = ObjectiveCPreprocessorParser;
