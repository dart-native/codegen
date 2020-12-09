// Generated from ObjectiveCPreprocessorParser.g4 by ANTLR 4.9
// ignore_for_file: unused_import, unused_local_variable, prefer_single_quotes
import 'package:antlr4/antlr4.dart';

import 'ObjectiveCPreprocessorParser.dart';

/// This abstract class defines a complete listener for a parse tree produced by
/// [ObjectiveCPreprocessorParser].
abstract class ObjectiveCPreprocessorParserListener extends ParseTreeListener {
  /// Enter a parse tree produced by the [preprocessorImport]
  /// labeled alternative in [file.parserName>.directive].
  /// [ctx] the parse tree
  void enterPreprocessorImport(PreprocessorImportContext ctx);
  /// Exit a parse tree produced by the [preprocessorImport]
  /// labeled alternative in [ObjectiveCPreprocessorParser.directive].
  /// [ctx] the parse tree
  void exitPreprocessorImport(PreprocessorImportContext ctx);

  /// Enter a parse tree produced by the [preprocessorConditional]
  /// labeled alternative in [file.parserName>.directive].
  /// [ctx] the parse tree
  void enterPreprocessorConditional(PreprocessorConditionalContext ctx);
  /// Exit a parse tree produced by the [preprocessorConditional]
  /// labeled alternative in [ObjectiveCPreprocessorParser.directive].
  /// [ctx] the parse tree
  void exitPreprocessorConditional(PreprocessorConditionalContext ctx);

  /// Enter a parse tree produced by the [preprocessorDef]
  /// labeled alternative in [file.parserName>.directive].
  /// [ctx] the parse tree
  void enterPreprocessorDef(PreprocessorDefContext ctx);
  /// Exit a parse tree produced by the [preprocessorDef]
  /// labeled alternative in [ObjectiveCPreprocessorParser.directive].
  /// [ctx] the parse tree
  void exitPreprocessorDef(PreprocessorDefContext ctx);

  /// Enter a parse tree produced by the [preprocessorPragma]
  /// labeled alternative in [file.parserName>.directive].
  /// [ctx] the parse tree
  void enterPreprocessorPragma(PreprocessorPragmaContext ctx);
  /// Exit a parse tree produced by the [preprocessorPragma]
  /// labeled alternative in [ObjectiveCPreprocessorParser.directive].
  /// [ctx] the parse tree
  void exitPreprocessorPragma(PreprocessorPragmaContext ctx);

  /// Enter a parse tree produced by the [preprocessorError]
  /// labeled alternative in [file.parserName>.directive].
  /// [ctx] the parse tree
  void enterPreprocessorError(PreprocessorErrorContext ctx);
  /// Exit a parse tree produced by the [preprocessorError]
  /// labeled alternative in [ObjectiveCPreprocessorParser.directive].
  /// [ctx] the parse tree
  void exitPreprocessorError(PreprocessorErrorContext ctx);

  /// Enter a parse tree produced by the [preprocessorWarning]
  /// labeled alternative in [file.parserName>.directive].
  /// [ctx] the parse tree
  void enterPreprocessorWarning(PreprocessorWarningContext ctx);
  /// Exit a parse tree produced by the [preprocessorWarning]
  /// labeled alternative in [ObjectiveCPreprocessorParser.directive].
  /// [ctx] the parse tree
  void exitPreprocessorWarning(PreprocessorWarningContext ctx);

  /// Enter a parse tree produced by the [preprocessorDefine]
  /// labeled alternative in [file.parserName>.directive].
  /// [ctx] the parse tree
  void enterPreprocessorDefine(PreprocessorDefineContext ctx);
  /// Exit a parse tree produced by the [preprocessorDefine]
  /// labeled alternative in [ObjectiveCPreprocessorParser.directive].
  /// [ctx] the parse tree
  void exitPreprocessorDefine(PreprocessorDefineContext ctx);

  /// Enter a parse tree produced by [ObjectiveCPreprocessorParser.directiveText].
  /// [ctx] the parse tree
  void enterDirectiveText(DirectiveTextContext ctx);
  /// Exit a parse tree produced by [ObjectiveCPreprocessorParser.directiveText].
  /// [ctx] the parse tree
  void exitDirectiveText(DirectiveTextContext ctx);

  /// Enter a parse tree produced by the [preprocessorParenthesis]
  /// labeled alternative in [file.parserName>.preprocessorExpression].
  /// [ctx] the parse tree
  void enterPreprocessorParenthesis(PreprocessorParenthesisContext ctx);
  /// Exit a parse tree produced by the [preprocessorParenthesis]
  /// labeled alternative in [ObjectiveCPreprocessorParser.preprocessorExpression].
  /// [ctx] the parse tree
  void exitPreprocessorParenthesis(PreprocessorParenthesisContext ctx);

  /// Enter a parse tree produced by the [preprocessorNot]
  /// labeled alternative in [file.parserName>.preprocessorExpression].
  /// [ctx] the parse tree
  void enterPreprocessorNot(PreprocessorNotContext ctx);
  /// Exit a parse tree produced by the [preprocessorNot]
  /// labeled alternative in [ObjectiveCPreprocessorParser.preprocessorExpression].
  /// [ctx] the parse tree
  void exitPreprocessorNot(PreprocessorNotContext ctx);

  /// Enter a parse tree produced by the [preprocessorBinary]
  /// labeled alternative in [file.parserName>.preprocessorExpression].
  /// [ctx] the parse tree
  void enterPreprocessorBinary(PreprocessorBinaryContext ctx);
  /// Exit a parse tree produced by the [preprocessorBinary]
  /// labeled alternative in [ObjectiveCPreprocessorParser.preprocessorExpression].
  /// [ctx] the parse tree
  void exitPreprocessorBinary(PreprocessorBinaryContext ctx);

  /// Enter a parse tree produced by the [preprocessorConstant]
  /// labeled alternative in [file.parserName>.preprocessorExpression].
  /// [ctx] the parse tree
  void enterPreprocessorConstant(PreprocessorConstantContext ctx);
  /// Exit a parse tree produced by the [preprocessorConstant]
  /// labeled alternative in [ObjectiveCPreprocessorParser.preprocessorExpression].
  /// [ctx] the parse tree
  void exitPreprocessorConstant(PreprocessorConstantContext ctx);

  /// Enter a parse tree produced by the [preprocessorConditionalSymbol]
  /// labeled alternative in [file.parserName>.preprocessorExpression].
  /// [ctx] the parse tree
  void enterPreprocessorConditionalSymbol(PreprocessorConditionalSymbolContext ctx);
  /// Exit a parse tree produced by the [preprocessorConditionalSymbol]
  /// labeled alternative in [ObjectiveCPreprocessorParser.preprocessorExpression].
  /// [ctx] the parse tree
  void exitPreprocessorConditionalSymbol(PreprocessorConditionalSymbolContext ctx);

  /// Enter a parse tree produced by the [preprocessorDefined]
  /// labeled alternative in [file.parserName>.preprocessorExpression].
  /// [ctx] the parse tree
  void enterPreprocessorDefined(PreprocessorDefinedContext ctx);
  /// Exit a parse tree produced by the [preprocessorDefined]
  /// labeled alternative in [ObjectiveCPreprocessorParser.preprocessorExpression].
  /// [ctx] the parse tree
  void exitPreprocessorDefined(PreprocessorDefinedContext ctx);
}