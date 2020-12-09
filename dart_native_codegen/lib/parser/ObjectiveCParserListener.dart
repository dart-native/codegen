// Generated from ObjectiveCParser.g4 by ANTLR 4.9
// ignore_for_file: unused_import, unused_local_variable, prefer_single_quotes
import 'package:antlr4/antlr4.dart';

import 'ObjectiveCParser.dart';

/// This abstract class defines a complete listener for a parse tree produced by
/// [ObjectiveCParser].
abstract class ObjectiveCParserListener extends ParseTreeListener {
  /// Enter a parse tree produced by [ObjectiveCParser.translationUnit].
  /// [ctx] the parse tree
  void enterTranslationUnit(TranslationUnitContext ctx);
  /// Exit a parse tree produced by [ObjectiveCParser.translationUnit].
  /// [ctx] the parse tree
  void exitTranslationUnit(TranslationUnitContext ctx);

  /// Enter a parse tree produced by [ObjectiveCParser.topLevelDeclaration].
  /// [ctx] the parse tree
  void enterTopLevelDeclaration(TopLevelDeclarationContext ctx);
  /// Exit a parse tree produced by [ObjectiveCParser.topLevelDeclaration].
  /// [ctx] the parse tree
  void exitTopLevelDeclaration(TopLevelDeclarationContext ctx);

  /// Enter a parse tree produced by [ObjectiveCParser.importDeclaration].
  /// [ctx] the parse tree
  void enterImportDeclaration(ImportDeclarationContext ctx);
  /// Exit a parse tree produced by [ObjectiveCParser.importDeclaration].
  /// [ctx] the parse tree
  void exitImportDeclaration(ImportDeclarationContext ctx);

  /// Enter a parse tree produced by [ObjectiveCParser.classInterface].
  /// [ctx] the parse tree
  void enterClassInterface(ClassInterfaceContext ctx);
  /// Exit a parse tree produced by [ObjectiveCParser.classInterface].
  /// [ctx] the parse tree
  void exitClassInterface(ClassInterfaceContext ctx);

  /// Enter a parse tree produced by [ObjectiveCParser.categoryInterface].
  /// [ctx] the parse tree
  void enterCategoryInterface(CategoryInterfaceContext ctx);
  /// Exit a parse tree produced by [ObjectiveCParser.categoryInterface].
  /// [ctx] the parse tree
  void exitCategoryInterface(CategoryInterfaceContext ctx);

  /// Enter a parse tree produced by [ObjectiveCParser.classImplementation].
  /// [ctx] the parse tree
  void enterClassImplementation(ClassImplementationContext ctx);
  /// Exit a parse tree produced by [ObjectiveCParser.classImplementation].
  /// [ctx] the parse tree
  void exitClassImplementation(ClassImplementationContext ctx);

  /// Enter a parse tree produced by [ObjectiveCParser.categoryImplementation].
  /// [ctx] the parse tree
  void enterCategoryImplementation(CategoryImplementationContext ctx);
  /// Exit a parse tree produced by [ObjectiveCParser.categoryImplementation].
  /// [ctx] the parse tree
  void exitCategoryImplementation(CategoryImplementationContext ctx);

  /// Enter a parse tree produced by [ObjectiveCParser.genericTypeSpecifier].
  /// [ctx] the parse tree
  void enterGenericTypeSpecifier(GenericTypeSpecifierContext ctx);
  /// Exit a parse tree produced by [ObjectiveCParser.genericTypeSpecifier].
  /// [ctx] the parse tree
  void exitGenericTypeSpecifier(GenericTypeSpecifierContext ctx);

  /// Enter a parse tree produced by [ObjectiveCParser.protocolDeclaration].
  /// [ctx] the parse tree
  void enterProtocolDeclaration(ProtocolDeclarationContext ctx);
  /// Exit a parse tree produced by [ObjectiveCParser.protocolDeclaration].
  /// [ctx] the parse tree
  void exitProtocolDeclaration(ProtocolDeclarationContext ctx);

  /// Enter a parse tree produced by [ObjectiveCParser.protocolDeclarationSection].
  /// [ctx] the parse tree
  void enterProtocolDeclarationSection(ProtocolDeclarationSectionContext ctx);
  /// Exit a parse tree produced by [ObjectiveCParser.protocolDeclarationSection].
  /// [ctx] the parse tree
  void exitProtocolDeclarationSection(ProtocolDeclarationSectionContext ctx);

  /// Enter a parse tree produced by [ObjectiveCParser.protocolDeclarationList].
  /// [ctx] the parse tree
  void enterProtocolDeclarationList(ProtocolDeclarationListContext ctx);
  /// Exit a parse tree produced by [ObjectiveCParser.protocolDeclarationList].
  /// [ctx] the parse tree
  void exitProtocolDeclarationList(ProtocolDeclarationListContext ctx);

  /// Enter a parse tree produced by [ObjectiveCParser.classDeclaration].
  /// [ctx] the parse tree
  void enterClassDeclaration(ClassDeclarationContext ctx);
  /// Exit a parse tree produced by [ObjectiveCParser.classDeclaration].
  /// [ctx] the parse tree
  void exitClassDeclaration(ClassDeclarationContext ctx);

  /// Enter a parse tree produced by [ObjectiveCParser.classDeclarationList].
  /// [ctx] the parse tree
  void enterClassDeclarationList(ClassDeclarationListContext ctx);
  /// Exit a parse tree produced by [ObjectiveCParser.classDeclarationList].
  /// [ctx] the parse tree
  void exitClassDeclarationList(ClassDeclarationListContext ctx);

  /// Enter a parse tree produced by [ObjectiveCParser.protocolList].
  /// [ctx] the parse tree
  void enterProtocolList(ProtocolListContext ctx);
  /// Exit a parse tree produced by [ObjectiveCParser.protocolList].
  /// [ctx] the parse tree
  void exitProtocolList(ProtocolListContext ctx);

  /// Enter a parse tree produced by [ObjectiveCParser.propertyDeclaration].
  /// [ctx] the parse tree
  void enterPropertyDeclaration(PropertyDeclarationContext ctx);
  /// Exit a parse tree produced by [ObjectiveCParser.propertyDeclaration].
  /// [ctx] the parse tree
  void exitPropertyDeclaration(PropertyDeclarationContext ctx);

  /// Enter a parse tree produced by [ObjectiveCParser.propertyAttributesList].
  /// [ctx] the parse tree
  void enterPropertyAttributesList(PropertyAttributesListContext ctx);
  /// Exit a parse tree produced by [ObjectiveCParser.propertyAttributesList].
  /// [ctx] the parse tree
  void exitPropertyAttributesList(PropertyAttributesListContext ctx);

  /// Enter a parse tree produced by [ObjectiveCParser.propertyAttribute].
  /// [ctx] the parse tree
  void enterPropertyAttribute(PropertyAttributeContext ctx);
  /// Exit a parse tree produced by [ObjectiveCParser.propertyAttribute].
  /// [ctx] the parse tree
  void exitPropertyAttribute(PropertyAttributeContext ctx);

  /// Enter a parse tree produced by [ObjectiveCParser.protocolName].
  /// [ctx] the parse tree
  void enterProtocolName(ProtocolNameContext ctx);
  /// Exit a parse tree produced by [ObjectiveCParser.protocolName].
  /// [ctx] the parse tree
  void exitProtocolName(ProtocolNameContext ctx);

  /// Enter a parse tree produced by [ObjectiveCParser.instanceVariables].
  /// [ctx] the parse tree
  void enterInstanceVariables(InstanceVariablesContext ctx);
  /// Exit a parse tree produced by [ObjectiveCParser.instanceVariables].
  /// [ctx] the parse tree
  void exitInstanceVariables(InstanceVariablesContext ctx);

  /// Enter a parse tree produced by [ObjectiveCParser.visibilitySection].
  /// [ctx] the parse tree
  void enterVisibilitySection(VisibilitySectionContext ctx);
  /// Exit a parse tree produced by [ObjectiveCParser.visibilitySection].
  /// [ctx] the parse tree
  void exitVisibilitySection(VisibilitySectionContext ctx);

  /// Enter a parse tree produced by [ObjectiveCParser.accessModifier].
  /// [ctx] the parse tree
  void enterAccessModifier(AccessModifierContext ctx);
  /// Exit a parse tree produced by [ObjectiveCParser.accessModifier].
  /// [ctx] the parse tree
  void exitAccessModifier(AccessModifierContext ctx);

  /// Enter a parse tree produced by [ObjectiveCParser.interfaceDeclarationList].
  /// [ctx] the parse tree
  void enterInterfaceDeclarationList(InterfaceDeclarationListContext ctx);
  /// Exit a parse tree produced by [ObjectiveCParser.interfaceDeclarationList].
  /// [ctx] the parse tree
  void exitInterfaceDeclarationList(InterfaceDeclarationListContext ctx);

  /// Enter a parse tree produced by [ObjectiveCParser.classMethodDeclaration].
  /// [ctx] the parse tree
  void enterClassMethodDeclaration(ClassMethodDeclarationContext ctx);
  /// Exit a parse tree produced by [ObjectiveCParser.classMethodDeclaration].
  /// [ctx] the parse tree
  void exitClassMethodDeclaration(ClassMethodDeclarationContext ctx);

  /// Enter a parse tree produced by [ObjectiveCParser.instanceMethodDeclaration].
  /// [ctx] the parse tree
  void enterInstanceMethodDeclaration(InstanceMethodDeclarationContext ctx);
  /// Exit a parse tree produced by [ObjectiveCParser.instanceMethodDeclaration].
  /// [ctx] the parse tree
  void exitInstanceMethodDeclaration(InstanceMethodDeclarationContext ctx);

  /// Enter a parse tree produced by [ObjectiveCParser.methodDeclaration].
  /// [ctx] the parse tree
  void enterMethodDeclaration(MethodDeclarationContext ctx);
  /// Exit a parse tree produced by [ObjectiveCParser.methodDeclaration].
  /// [ctx] the parse tree
  void exitMethodDeclaration(MethodDeclarationContext ctx);

  /// Enter a parse tree produced by [ObjectiveCParser.implementationDefinitionList].
  /// [ctx] the parse tree
  void enterImplementationDefinitionList(ImplementationDefinitionListContext ctx);
  /// Exit a parse tree produced by [ObjectiveCParser.implementationDefinitionList].
  /// [ctx] the parse tree
  void exitImplementationDefinitionList(ImplementationDefinitionListContext ctx);

  /// Enter a parse tree produced by [ObjectiveCParser.classMethodDefinition].
  /// [ctx] the parse tree
  void enterClassMethodDefinition(ClassMethodDefinitionContext ctx);
  /// Exit a parse tree produced by [ObjectiveCParser.classMethodDefinition].
  /// [ctx] the parse tree
  void exitClassMethodDefinition(ClassMethodDefinitionContext ctx);

  /// Enter a parse tree produced by [ObjectiveCParser.instanceMethodDefinition].
  /// [ctx] the parse tree
  void enterInstanceMethodDefinition(InstanceMethodDefinitionContext ctx);
  /// Exit a parse tree produced by [ObjectiveCParser.instanceMethodDefinition].
  /// [ctx] the parse tree
  void exitInstanceMethodDefinition(InstanceMethodDefinitionContext ctx);

  /// Enter a parse tree produced by [ObjectiveCParser.methodDefinition].
  /// [ctx] the parse tree
  void enterMethodDefinition(MethodDefinitionContext ctx);
  /// Exit a parse tree produced by [ObjectiveCParser.methodDefinition].
  /// [ctx] the parse tree
  void exitMethodDefinition(MethodDefinitionContext ctx);

  /// Enter a parse tree produced by [ObjectiveCParser.methodSelector].
  /// [ctx] the parse tree
  void enterMethodSelector(MethodSelectorContext ctx);
  /// Exit a parse tree produced by [ObjectiveCParser.methodSelector].
  /// [ctx] the parse tree
  void exitMethodSelector(MethodSelectorContext ctx);

  /// Enter a parse tree produced by [ObjectiveCParser.keywordDeclarator].
  /// [ctx] the parse tree
  void enterKeywordDeclarator(KeywordDeclaratorContext ctx);
  /// Exit a parse tree produced by [ObjectiveCParser.keywordDeclarator].
  /// [ctx] the parse tree
  void exitKeywordDeclarator(KeywordDeclaratorContext ctx);

  /// Enter a parse tree produced by [ObjectiveCParser.selector].
  /// [ctx] the parse tree
  void enterSelector(SelectorContext ctx);
  /// Exit a parse tree produced by [ObjectiveCParser.selector].
  /// [ctx] the parse tree
  void exitSelector(SelectorContext ctx);

  /// Enter a parse tree produced by [ObjectiveCParser.methodType].
  /// [ctx] the parse tree
  void enterMethodType(MethodTypeContext ctx);
  /// Exit a parse tree produced by [ObjectiveCParser.methodType].
  /// [ctx] the parse tree
  void exitMethodType(MethodTypeContext ctx);

  /// Enter a parse tree produced by [ObjectiveCParser.propertyImplementation].
  /// [ctx] the parse tree
  void enterPropertyImplementation(PropertyImplementationContext ctx);
  /// Exit a parse tree produced by [ObjectiveCParser.propertyImplementation].
  /// [ctx] the parse tree
  void exitPropertyImplementation(PropertyImplementationContext ctx);

  /// Enter a parse tree produced by [ObjectiveCParser.propertySynthesizeList].
  /// [ctx] the parse tree
  void enterPropertySynthesizeList(PropertySynthesizeListContext ctx);
  /// Exit a parse tree produced by [ObjectiveCParser.propertySynthesizeList].
  /// [ctx] the parse tree
  void exitPropertySynthesizeList(PropertySynthesizeListContext ctx);

  /// Enter a parse tree produced by [ObjectiveCParser.propertySynthesizeItem].
  /// [ctx] the parse tree
  void enterPropertySynthesizeItem(PropertySynthesizeItemContext ctx);
  /// Exit a parse tree produced by [ObjectiveCParser.propertySynthesizeItem].
  /// [ctx] the parse tree
  void exitPropertySynthesizeItem(PropertySynthesizeItemContext ctx);

  /// Enter a parse tree produced by [ObjectiveCParser.blockType].
  /// [ctx] the parse tree
  void enterBlockType(BlockTypeContext ctx);
  /// Exit a parse tree produced by [ObjectiveCParser.blockType].
  /// [ctx] the parse tree
  void exitBlockType(BlockTypeContext ctx);

  /// Enter a parse tree produced by [ObjectiveCParser.genericsSpecifier].
  /// [ctx] the parse tree
  void enterGenericsSpecifier(GenericsSpecifierContext ctx);
  /// Exit a parse tree produced by [ObjectiveCParser.genericsSpecifier].
  /// [ctx] the parse tree
  void exitGenericsSpecifier(GenericsSpecifierContext ctx);

  /// Enter a parse tree produced by [ObjectiveCParser.typeSpecifierWithPrefixes].
  /// [ctx] the parse tree
  void enterTypeSpecifierWithPrefixes(TypeSpecifierWithPrefixesContext ctx);
  /// Exit a parse tree produced by [ObjectiveCParser.typeSpecifierWithPrefixes].
  /// [ctx] the parse tree
  void exitTypeSpecifierWithPrefixes(TypeSpecifierWithPrefixesContext ctx);

  /// Enter a parse tree produced by [ObjectiveCParser.dictionaryExpression].
  /// [ctx] the parse tree
  void enterDictionaryExpression(DictionaryExpressionContext ctx);
  /// Exit a parse tree produced by [ObjectiveCParser.dictionaryExpression].
  /// [ctx] the parse tree
  void exitDictionaryExpression(DictionaryExpressionContext ctx);

  /// Enter a parse tree produced by [ObjectiveCParser.dictionaryPair].
  /// [ctx] the parse tree
  void enterDictionaryPair(DictionaryPairContext ctx);
  /// Exit a parse tree produced by [ObjectiveCParser.dictionaryPair].
  /// [ctx] the parse tree
  void exitDictionaryPair(DictionaryPairContext ctx);

  /// Enter a parse tree produced by [ObjectiveCParser.arrayExpression].
  /// [ctx] the parse tree
  void enterArrayExpression(ArrayExpressionContext ctx);
  /// Exit a parse tree produced by [ObjectiveCParser.arrayExpression].
  /// [ctx] the parse tree
  void exitArrayExpression(ArrayExpressionContext ctx);

  /// Enter a parse tree produced by [ObjectiveCParser.boxExpression].
  /// [ctx] the parse tree
  void enterBoxExpression(BoxExpressionContext ctx);
  /// Exit a parse tree produced by [ObjectiveCParser.boxExpression].
  /// [ctx] the parse tree
  void exitBoxExpression(BoxExpressionContext ctx);

  /// Enter a parse tree produced by [ObjectiveCParser.blockParameters].
  /// [ctx] the parse tree
  void enterBlockParameters(BlockParametersContext ctx);
  /// Exit a parse tree produced by [ObjectiveCParser.blockParameters].
  /// [ctx] the parse tree
  void exitBlockParameters(BlockParametersContext ctx);

  /// Enter a parse tree produced by [ObjectiveCParser.typeVariableDeclaratorOrName].
  /// [ctx] the parse tree
  void enterTypeVariableDeclaratorOrName(TypeVariableDeclaratorOrNameContext ctx);
  /// Exit a parse tree produced by [ObjectiveCParser.typeVariableDeclaratorOrName].
  /// [ctx] the parse tree
  void exitTypeVariableDeclaratorOrName(TypeVariableDeclaratorOrNameContext ctx);

  /// Enter a parse tree produced by [ObjectiveCParser.blockExpression].
  /// [ctx] the parse tree
  void enterBlockExpression(BlockExpressionContext ctx);
  /// Exit a parse tree produced by [ObjectiveCParser.blockExpression].
  /// [ctx] the parse tree
  void exitBlockExpression(BlockExpressionContext ctx);

  /// Enter a parse tree produced by [ObjectiveCParser.messageExpression].
  /// [ctx] the parse tree
  void enterMessageExpression(MessageExpressionContext ctx);
  /// Exit a parse tree produced by [ObjectiveCParser.messageExpression].
  /// [ctx] the parse tree
  void exitMessageExpression(MessageExpressionContext ctx);

  /// Enter a parse tree produced by [ObjectiveCParser.receiver].
  /// [ctx] the parse tree
  void enterReceiver(ReceiverContext ctx);
  /// Exit a parse tree produced by [ObjectiveCParser.receiver].
  /// [ctx] the parse tree
  void exitReceiver(ReceiverContext ctx);

  /// Enter a parse tree produced by [ObjectiveCParser.messageSelector].
  /// [ctx] the parse tree
  void enterMessageSelector(MessageSelectorContext ctx);
  /// Exit a parse tree produced by [ObjectiveCParser.messageSelector].
  /// [ctx] the parse tree
  void exitMessageSelector(MessageSelectorContext ctx);

  /// Enter a parse tree produced by [ObjectiveCParser.keywordArgument].
  /// [ctx] the parse tree
  void enterKeywordArgument(KeywordArgumentContext ctx);
  /// Exit a parse tree produced by [ObjectiveCParser.keywordArgument].
  /// [ctx] the parse tree
  void exitKeywordArgument(KeywordArgumentContext ctx);

  /// Enter a parse tree produced by [ObjectiveCParser.keywordArgumentType].
  /// [ctx] the parse tree
  void enterKeywordArgumentType(KeywordArgumentTypeContext ctx);
  /// Exit a parse tree produced by [ObjectiveCParser.keywordArgumentType].
  /// [ctx] the parse tree
  void exitKeywordArgumentType(KeywordArgumentTypeContext ctx);

  /// Enter a parse tree produced by [ObjectiveCParser.selectorExpression].
  /// [ctx] the parse tree
  void enterSelectorExpression(SelectorExpressionContext ctx);
  /// Exit a parse tree produced by [ObjectiveCParser.selectorExpression].
  /// [ctx] the parse tree
  void exitSelectorExpression(SelectorExpressionContext ctx);

  /// Enter a parse tree produced by [ObjectiveCParser.selectorName].
  /// [ctx] the parse tree
  void enterSelectorName(SelectorNameContext ctx);
  /// Exit a parse tree produced by [ObjectiveCParser.selectorName].
  /// [ctx] the parse tree
  void exitSelectorName(SelectorNameContext ctx);

  /// Enter a parse tree produced by [ObjectiveCParser.protocolExpression].
  /// [ctx] the parse tree
  void enterProtocolExpression(ProtocolExpressionContext ctx);
  /// Exit a parse tree produced by [ObjectiveCParser.protocolExpression].
  /// [ctx] the parse tree
  void exitProtocolExpression(ProtocolExpressionContext ctx);

  /// Enter a parse tree produced by [ObjectiveCParser.encodeExpression].
  /// [ctx] the parse tree
  void enterEncodeExpression(EncodeExpressionContext ctx);
  /// Exit a parse tree produced by [ObjectiveCParser.encodeExpression].
  /// [ctx] the parse tree
  void exitEncodeExpression(EncodeExpressionContext ctx);

  /// Enter a parse tree produced by [ObjectiveCParser.typeVariableDeclarator].
  /// [ctx] the parse tree
  void enterTypeVariableDeclarator(TypeVariableDeclaratorContext ctx);
  /// Exit a parse tree produced by [ObjectiveCParser.typeVariableDeclarator].
  /// [ctx] the parse tree
  void exitTypeVariableDeclarator(TypeVariableDeclaratorContext ctx);

  /// Enter a parse tree produced by [ObjectiveCParser.throwStatement].
  /// [ctx] the parse tree
  void enterThrowStatement(ThrowStatementContext ctx);
  /// Exit a parse tree produced by [ObjectiveCParser.throwStatement].
  /// [ctx] the parse tree
  void exitThrowStatement(ThrowStatementContext ctx);

  /// Enter a parse tree produced by [ObjectiveCParser.tryBlock].
  /// [ctx] the parse tree
  void enterTryBlock(TryBlockContext ctx);
  /// Exit a parse tree produced by [ObjectiveCParser.tryBlock].
  /// [ctx] the parse tree
  void exitTryBlock(TryBlockContext ctx);

  /// Enter a parse tree produced by [ObjectiveCParser.catchStatement].
  /// [ctx] the parse tree
  void enterCatchStatement(CatchStatementContext ctx);
  /// Exit a parse tree produced by [ObjectiveCParser.catchStatement].
  /// [ctx] the parse tree
  void exitCatchStatement(CatchStatementContext ctx);

  /// Enter a parse tree produced by [ObjectiveCParser.synchronizedStatement].
  /// [ctx] the parse tree
  void enterSynchronizedStatement(SynchronizedStatementContext ctx);
  /// Exit a parse tree produced by [ObjectiveCParser.synchronizedStatement].
  /// [ctx] the parse tree
  void exitSynchronizedStatement(SynchronizedStatementContext ctx);

  /// Enter a parse tree produced by [ObjectiveCParser.autoreleaseStatement].
  /// [ctx] the parse tree
  void enterAutoreleaseStatement(AutoreleaseStatementContext ctx);
  /// Exit a parse tree produced by [ObjectiveCParser.autoreleaseStatement].
  /// [ctx] the parse tree
  void exitAutoreleaseStatement(AutoreleaseStatementContext ctx);

  /// Enter a parse tree produced by [ObjectiveCParser.functionDeclaration].
  /// [ctx] the parse tree
  void enterFunctionDeclaration(FunctionDeclarationContext ctx);
  /// Exit a parse tree produced by [ObjectiveCParser.functionDeclaration].
  /// [ctx] the parse tree
  void exitFunctionDeclaration(FunctionDeclarationContext ctx);

  /// Enter a parse tree produced by [ObjectiveCParser.functionDefinition].
  /// [ctx] the parse tree
  void enterFunctionDefinition(FunctionDefinitionContext ctx);
  /// Exit a parse tree produced by [ObjectiveCParser.functionDefinition].
  /// [ctx] the parse tree
  void exitFunctionDefinition(FunctionDefinitionContext ctx);

  /// Enter a parse tree produced by [ObjectiveCParser.functionSignature].
  /// [ctx] the parse tree
  void enterFunctionSignature(FunctionSignatureContext ctx);
  /// Exit a parse tree produced by [ObjectiveCParser.functionSignature].
  /// [ctx] the parse tree
  void exitFunctionSignature(FunctionSignatureContext ctx);

  /// Enter a parse tree produced by [ObjectiveCParser.functionPointer].
  /// [ctx] the parse tree
  void enterFunctionPointer(FunctionPointerContext ctx);
  /// Exit a parse tree produced by [ObjectiveCParser.functionPointer].
  /// [ctx] the parse tree
  void exitFunctionPointer(FunctionPointerContext ctx);

  /// Enter a parse tree produced by [ObjectiveCParser.attribute].
  /// [ctx] the parse tree
  void enterAttribute(AttributeContext ctx);
  /// Exit a parse tree produced by [ObjectiveCParser.attribute].
  /// [ctx] the parse tree
  void exitAttribute(AttributeContext ctx);

  /// Enter a parse tree produced by [ObjectiveCParser.attributeName].
  /// [ctx] the parse tree
  void enterAttributeName(AttributeNameContext ctx);
  /// Exit a parse tree produced by [ObjectiveCParser.attributeName].
  /// [ctx] the parse tree
  void exitAttributeName(AttributeNameContext ctx);

  /// Enter a parse tree produced by [ObjectiveCParser.attributeParameters].
  /// [ctx] the parse tree
  void enterAttributeParameters(AttributeParametersContext ctx);
  /// Exit a parse tree produced by [ObjectiveCParser.attributeParameters].
  /// [ctx] the parse tree
  void exitAttributeParameters(AttributeParametersContext ctx);

  /// Enter a parse tree produced by [ObjectiveCParser.attributeParameterList].
  /// [ctx] the parse tree
  void enterAttributeParameterList(AttributeParameterListContext ctx);
  /// Exit a parse tree produced by [ObjectiveCParser.attributeParameterList].
  /// [ctx] the parse tree
  void exitAttributeParameterList(AttributeParameterListContext ctx);

  /// Enter a parse tree produced by [ObjectiveCParser.attributeParameter].
  /// [ctx] the parse tree
  void enterAttributeParameter(AttributeParameterContext ctx);
  /// Exit a parse tree produced by [ObjectiveCParser.attributeParameter].
  /// [ctx] the parse tree
  void exitAttributeParameter(AttributeParameterContext ctx);

  /// Enter a parse tree produced by [ObjectiveCParser.attributeParameterAssignment].
  /// [ctx] the parse tree
  void enterAttributeParameterAssignment(AttributeParameterAssignmentContext ctx);
  /// Exit a parse tree produced by [ObjectiveCParser.attributeParameterAssignment].
  /// [ctx] the parse tree
  void exitAttributeParameterAssignment(AttributeParameterAssignmentContext ctx);

  /// Enter a parse tree produced by [ObjectiveCParser.declaration].
  /// [ctx] the parse tree
  void enterDeclaration(DeclarationContext ctx);
  /// Exit a parse tree produced by [ObjectiveCParser.declaration].
  /// [ctx] the parse tree
  void exitDeclaration(DeclarationContext ctx);

  /// Enter a parse tree produced by [ObjectiveCParser.functionCallExpression].
  /// [ctx] the parse tree
  void enterFunctionCallExpression(FunctionCallExpressionContext ctx);
  /// Exit a parse tree produced by [ObjectiveCParser.functionCallExpression].
  /// [ctx] the parse tree
  void exitFunctionCallExpression(FunctionCallExpressionContext ctx);

  /// Enter a parse tree produced by [ObjectiveCParser.enumDeclaration].
  /// [ctx] the parse tree
  void enterEnumDeclaration(EnumDeclarationContext ctx);
  /// Exit a parse tree produced by [ObjectiveCParser.enumDeclaration].
  /// [ctx] the parse tree
  void exitEnumDeclaration(EnumDeclarationContext ctx);

  /// Enter a parse tree produced by [ObjectiveCParser.varDeclaration].
  /// [ctx] the parse tree
  void enterVarDeclaration(VarDeclarationContext ctx);
  /// Exit a parse tree produced by [ObjectiveCParser.varDeclaration].
  /// [ctx] the parse tree
  void exitVarDeclaration(VarDeclarationContext ctx);

  /// Enter a parse tree produced by [ObjectiveCParser.typedefDeclaration].
  /// [ctx] the parse tree
  void enterTypedefDeclaration(TypedefDeclarationContext ctx);
  /// Exit a parse tree produced by [ObjectiveCParser.typedefDeclaration].
  /// [ctx] the parse tree
  void exitTypedefDeclaration(TypedefDeclarationContext ctx);

  /// Enter a parse tree produced by [ObjectiveCParser.typeDeclaratorList].
  /// [ctx] the parse tree
  void enterTypeDeclaratorList(TypeDeclaratorListContext ctx);
  /// Exit a parse tree produced by [ObjectiveCParser.typeDeclaratorList].
  /// [ctx] the parse tree
  void exitTypeDeclaratorList(TypeDeclaratorListContext ctx);

  /// Enter a parse tree produced by [ObjectiveCParser.typeDeclarator].
  /// [ctx] the parse tree
  void enterTypeDeclarator(TypeDeclaratorContext ctx);
  /// Exit a parse tree produced by [ObjectiveCParser.typeDeclarator].
  /// [ctx] the parse tree
  void exitTypeDeclarator(TypeDeclaratorContext ctx);

  /// Enter a parse tree produced by [ObjectiveCParser.commonSpecifiers].
  /// [ctx] the parse tree
  void enterCommonSpecifiers(CommonSpecifiersContext ctx);
  /// Exit a parse tree produced by [ObjectiveCParser.commonSpecifiers].
  /// [ctx] the parse tree
  void exitCommonSpecifiers(CommonSpecifiersContext ctx);

  /// Enter a parse tree produced by [ObjectiveCParser.declarationSpecifiers].
  /// [ctx] the parse tree
  void enterDeclarationSpecifiers(DeclarationSpecifiersContext ctx);
  /// Exit a parse tree produced by [ObjectiveCParser.declarationSpecifiers].
  /// [ctx] the parse tree
  void exitDeclarationSpecifiers(DeclarationSpecifiersContext ctx);

  /// Enter a parse tree produced by [ObjectiveCParser.pointerQualifier].
  /// [ctx] the parse tree
  void enterPointerQualifier(PointerQualifierContext ctx);
  /// Exit a parse tree produced by [ObjectiveCParser.pointerQualifier].
  /// [ctx] the parse tree
  void exitPointerQualifier(PointerQualifierContext ctx);

  /// Enter a parse tree produced by [ObjectiveCParser.attributeSpecifier].
  /// [ctx] the parse tree
  void enterAttributeSpecifier(AttributeSpecifierContext ctx);
  /// Exit a parse tree produced by [ObjectiveCParser.attributeSpecifier].
  /// [ctx] the parse tree
  void exitAttributeSpecifier(AttributeSpecifierContext ctx);

  /// Enter a parse tree produced by [ObjectiveCParser.initDeclaratorList].
  /// [ctx] the parse tree
  void enterInitDeclaratorList(InitDeclaratorListContext ctx);
  /// Exit a parse tree produced by [ObjectiveCParser.initDeclaratorList].
  /// [ctx] the parse tree
  void exitInitDeclaratorList(InitDeclaratorListContext ctx);

  /// Enter a parse tree produced by [ObjectiveCParser.initDeclarator].
  /// [ctx] the parse tree
  void enterInitDeclarator(InitDeclaratorContext ctx);
  /// Exit a parse tree produced by [ObjectiveCParser.initDeclarator].
  /// [ctx] the parse tree
  void exitInitDeclarator(InitDeclaratorContext ctx);

  /// Enter a parse tree produced by [ObjectiveCParser.structOrUnionSpecifier].
  /// [ctx] the parse tree
  void enterStructOrUnionSpecifier(StructOrUnionSpecifierContext ctx);
  /// Exit a parse tree produced by [ObjectiveCParser.structOrUnionSpecifier].
  /// [ctx] the parse tree
  void exitStructOrUnionSpecifier(StructOrUnionSpecifierContext ctx);

  /// Enter a parse tree produced by [ObjectiveCParser.fieldDeclaration].
  /// [ctx] the parse tree
  void enterFieldDeclaration(FieldDeclarationContext ctx);
  /// Exit a parse tree produced by [ObjectiveCParser.fieldDeclaration].
  /// [ctx] the parse tree
  void exitFieldDeclaration(FieldDeclarationContext ctx);

  /// Enter a parse tree produced by [ObjectiveCParser.specifierQualifierList].
  /// [ctx] the parse tree
  void enterSpecifierQualifierList(SpecifierQualifierListContext ctx);
  /// Exit a parse tree produced by [ObjectiveCParser.specifierQualifierList].
  /// [ctx] the parse tree
  void exitSpecifierQualifierList(SpecifierQualifierListContext ctx);

  /// Enter a parse tree produced by [ObjectiveCParser.ibOutletQualifier].
  /// [ctx] the parse tree
  void enterIbOutletQualifier(IbOutletQualifierContext ctx);
  /// Exit a parse tree produced by [ObjectiveCParser.ibOutletQualifier].
  /// [ctx] the parse tree
  void exitIbOutletQualifier(IbOutletQualifierContext ctx);

  /// Enter a parse tree produced by [ObjectiveCParser.arcBehaviourSpecifier].
  /// [ctx] the parse tree
  void enterArcBehaviourSpecifier(ArcBehaviourSpecifierContext ctx);
  /// Exit a parse tree produced by [ObjectiveCParser.arcBehaviourSpecifier].
  /// [ctx] the parse tree
  void exitArcBehaviourSpecifier(ArcBehaviourSpecifierContext ctx);

  /// Enter a parse tree produced by [ObjectiveCParser.nullabilitySpecifier].
  /// [ctx] the parse tree
  void enterNullabilitySpecifier(NullabilitySpecifierContext ctx);
  /// Exit a parse tree produced by [ObjectiveCParser.nullabilitySpecifier].
  /// [ctx] the parse tree
  void exitNullabilitySpecifier(NullabilitySpecifierContext ctx);

  /// Enter a parse tree produced by [ObjectiveCParser.storageClassSpecifier].
  /// [ctx] the parse tree
  void enterStorageClassSpecifier(StorageClassSpecifierContext ctx);
  /// Exit a parse tree produced by [ObjectiveCParser.storageClassSpecifier].
  /// [ctx] the parse tree
  void exitStorageClassSpecifier(StorageClassSpecifierContext ctx);

  /// Enter a parse tree produced by [ObjectiveCParser.typePrefix].
  /// [ctx] the parse tree
  void enterTypePrefix(TypePrefixContext ctx);
  /// Exit a parse tree produced by [ObjectiveCParser.typePrefix].
  /// [ctx] the parse tree
  void exitTypePrefix(TypePrefixContext ctx);

  /// Enter a parse tree produced by [ObjectiveCParser.typeQualifier].
  /// [ctx] the parse tree
  void enterTypeQualifier(TypeQualifierContext ctx);
  /// Exit a parse tree produced by [ObjectiveCParser.typeQualifier].
  /// [ctx] the parse tree
  void exitTypeQualifier(TypeQualifierContext ctx);

  /// Enter a parse tree produced by [ObjectiveCParser.protocolQualifier].
  /// [ctx] the parse tree
  void enterProtocolQualifier(ProtocolQualifierContext ctx);
  /// Exit a parse tree produced by [ObjectiveCParser.protocolQualifier].
  /// [ctx] the parse tree
  void exitProtocolQualifier(ProtocolQualifierContext ctx);

  /// Enter a parse tree produced by [ObjectiveCParser.typeSpecifier].
  /// [ctx] the parse tree
  void enterTypeSpecifier(TypeSpecifierContext ctx);
  /// Exit a parse tree produced by [ObjectiveCParser.typeSpecifier].
  /// [ctx] the parse tree
  void exitTypeSpecifier(TypeSpecifierContext ctx);

  /// Enter a parse tree produced by [ObjectiveCParser.typeofExpression].
  /// [ctx] the parse tree
  void enterTypeofExpression(TypeofExpressionContext ctx);
  /// Exit a parse tree produced by [ObjectiveCParser.typeofExpression].
  /// [ctx] the parse tree
  void exitTypeofExpression(TypeofExpressionContext ctx);

  /// Enter a parse tree produced by [ObjectiveCParser.fieldDeclaratorList].
  /// [ctx] the parse tree
  void enterFieldDeclaratorList(FieldDeclaratorListContext ctx);
  /// Exit a parse tree produced by [ObjectiveCParser.fieldDeclaratorList].
  /// [ctx] the parse tree
  void exitFieldDeclaratorList(FieldDeclaratorListContext ctx);

  /// Enter a parse tree produced by [ObjectiveCParser.fieldDeclarator].
  /// [ctx] the parse tree
  void enterFieldDeclarator(FieldDeclaratorContext ctx);
  /// Exit a parse tree produced by [ObjectiveCParser.fieldDeclarator].
  /// [ctx] the parse tree
  void exitFieldDeclarator(FieldDeclaratorContext ctx);

  /// Enter a parse tree produced by [ObjectiveCParser.enumSpecifier].
  /// [ctx] the parse tree
  void enterEnumSpecifier(EnumSpecifierContext ctx);
  /// Exit a parse tree produced by [ObjectiveCParser.enumSpecifier].
  /// [ctx] the parse tree
  void exitEnumSpecifier(EnumSpecifierContext ctx);

  /// Enter a parse tree produced by [ObjectiveCParser.enumeratorList].
  /// [ctx] the parse tree
  void enterEnumeratorList(EnumeratorListContext ctx);
  /// Exit a parse tree produced by [ObjectiveCParser.enumeratorList].
  /// [ctx] the parse tree
  void exitEnumeratorList(EnumeratorListContext ctx);

  /// Enter a parse tree produced by [ObjectiveCParser.enumerator].
  /// [ctx] the parse tree
  void enterEnumerator(EnumeratorContext ctx);
  /// Exit a parse tree produced by [ObjectiveCParser.enumerator].
  /// [ctx] the parse tree
  void exitEnumerator(EnumeratorContext ctx);

  /// Enter a parse tree produced by [ObjectiveCParser.enumeratorIdentifier].
  /// [ctx] the parse tree
  void enterEnumeratorIdentifier(EnumeratorIdentifierContext ctx);
  /// Exit a parse tree produced by [ObjectiveCParser.enumeratorIdentifier].
  /// [ctx] the parse tree
  void exitEnumeratorIdentifier(EnumeratorIdentifierContext ctx);

  /// Enter a parse tree produced by [ObjectiveCParser.directDeclarator].
  /// [ctx] the parse tree
  void enterDirectDeclarator(DirectDeclaratorContext ctx);
  /// Exit a parse tree produced by [ObjectiveCParser.directDeclarator].
  /// [ctx] the parse tree
  void exitDirectDeclarator(DirectDeclaratorContext ctx);

  /// Enter a parse tree produced by [ObjectiveCParser.declaratorSuffix].
  /// [ctx] the parse tree
  void enterDeclaratorSuffix(DeclaratorSuffixContext ctx);
  /// Exit a parse tree produced by [ObjectiveCParser.declaratorSuffix].
  /// [ctx] the parse tree
  void exitDeclaratorSuffix(DeclaratorSuffixContext ctx);

  /// Enter a parse tree produced by [ObjectiveCParser.parameterList].
  /// [ctx] the parse tree
  void enterParameterList(ParameterListContext ctx);
  /// Exit a parse tree produced by [ObjectiveCParser.parameterList].
  /// [ctx] the parse tree
  void exitParameterList(ParameterListContext ctx);

  /// Enter a parse tree produced by [ObjectiveCParser.pointer].
  /// [ctx] the parse tree
  void enterPointer(PointerContext ctx);
  /// Exit a parse tree produced by [ObjectiveCParser.pointer].
  /// [ctx] the parse tree
  void exitPointer(PointerContext ctx);

  /// Enter a parse tree produced by [ObjectiveCParser.macro].
  /// [ctx] the parse tree
  void enterMacro(MacroContext ctx);
  /// Exit a parse tree produced by [ObjectiveCParser.macro].
  /// [ctx] the parse tree
  void exitMacro(MacroContext ctx);

  /// Enter a parse tree produced by [ObjectiveCParser.arrayInitializer].
  /// [ctx] the parse tree
  void enterArrayInitializer(ArrayInitializerContext ctx);
  /// Exit a parse tree produced by [ObjectiveCParser.arrayInitializer].
  /// [ctx] the parse tree
  void exitArrayInitializer(ArrayInitializerContext ctx);

  /// Enter a parse tree produced by [ObjectiveCParser.structInitializer].
  /// [ctx] the parse tree
  void enterStructInitializer(StructInitializerContext ctx);
  /// Exit a parse tree produced by [ObjectiveCParser.structInitializer].
  /// [ctx] the parse tree
  void exitStructInitializer(StructInitializerContext ctx);

  /// Enter a parse tree produced by [ObjectiveCParser.initializerList].
  /// [ctx] the parse tree
  void enterInitializerList(InitializerListContext ctx);
  /// Exit a parse tree produced by [ObjectiveCParser.initializerList].
  /// [ctx] the parse tree
  void exitInitializerList(InitializerListContext ctx);

  /// Enter a parse tree produced by [ObjectiveCParser.typeName].
  /// [ctx] the parse tree
  void enterTypeName(TypeNameContext ctx);
  /// Exit a parse tree produced by [ObjectiveCParser.typeName].
  /// [ctx] the parse tree
  void exitTypeName(TypeNameContext ctx);

  /// Enter a parse tree produced by [ObjectiveCParser.abstractDeclarator].
  /// [ctx] the parse tree
  void enterAbstractDeclarator(AbstractDeclaratorContext ctx);
  /// Exit a parse tree produced by [ObjectiveCParser.abstractDeclarator].
  /// [ctx] the parse tree
  void exitAbstractDeclarator(AbstractDeclaratorContext ctx);

  /// Enter a parse tree produced by [ObjectiveCParser.abstractDeclaratorSuffix].
  /// [ctx] the parse tree
  void enterAbstractDeclaratorSuffix(AbstractDeclaratorSuffixContext ctx);
  /// Exit a parse tree produced by [ObjectiveCParser.abstractDeclaratorSuffix].
  /// [ctx] the parse tree
  void exitAbstractDeclaratorSuffix(AbstractDeclaratorSuffixContext ctx);

  /// Enter a parse tree produced by [ObjectiveCParser.parameterDeclarationList].
  /// [ctx] the parse tree
  void enterParameterDeclarationList(ParameterDeclarationListContext ctx);
  /// Exit a parse tree produced by [ObjectiveCParser.parameterDeclarationList].
  /// [ctx] the parse tree
  void exitParameterDeclarationList(ParameterDeclarationListContext ctx);

  /// Enter a parse tree produced by [ObjectiveCParser.parameterDeclaration].
  /// [ctx] the parse tree
  void enterParameterDeclaration(ParameterDeclarationContext ctx);
  /// Exit a parse tree produced by [ObjectiveCParser.parameterDeclaration].
  /// [ctx] the parse tree
  void exitParameterDeclaration(ParameterDeclarationContext ctx);

  /// Enter a parse tree produced by [ObjectiveCParser.declarator].
  /// [ctx] the parse tree
  void enterDeclarator(DeclaratorContext ctx);
  /// Exit a parse tree produced by [ObjectiveCParser.declarator].
  /// [ctx] the parse tree
  void exitDeclarator(DeclaratorContext ctx);

  /// Enter a parse tree produced by [ObjectiveCParser.statement].
  /// [ctx] the parse tree
  void enterStatement(StatementContext ctx);
  /// Exit a parse tree produced by [ObjectiveCParser.statement].
  /// [ctx] the parse tree
  void exitStatement(StatementContext ctx);

  /// Enter a parse tree produced by [ObjectiveCParser.labeledStatement].
  /// [ctx] the parse tree
  void enterLabeledStatement(LabeledStatementContext ctx);
  /// Exit a parse tree produced by [ObjectiveCParser.labeledStatement].
  /// [ctx] the parse tree
  void exitLabeledStatement(LabeledStatementContext ctx);

  /// Enter a parse tree produced by [ObjectiveCParser.rangeExpression].
  /// [ctx] the parse tree
  void enterRangeExpression(RangeExpressionContext ctx);
  /// Exit a parse tree produced by [ObjectiveCParser.rangeExpression].
  /// [ctx] the parse tree
  void exitRangeExpression(RangeExpressionContext ctx);

  /// Enter a parse tree produced by [ObjectiveCParser.compoundStatement].
  /// [ctx] the parse tree
  void enterCompoundStatement(CompoundStatementContext ctx);
  /// Exit a parse tree produced by [ObjectiveCParser.compoundStatement].
  /// [ctx] the parse tree
  void exitCompoundStatement(CompoundStatementContext ctx);

  /// Enter a parse tree produced by [ObjectiveCParser.selectionStatement].
  /// [ctx] the parse tree
  void enterSelectionStatement(SelectionStatementContext ctx);
  /// Exit a parse tree produced by [ObjectiveCParser.selectionStatement].
  /// [ctx] the parse tree
  void exitSelectionStatement(SelectionStatementContext ctx);

  /// Enter a parse tree produced by [ObjectiveCParser.switchStatement].
  /// [ctx] the parse tree
  void enterSwitchStatement(SwitchStatementContext ctx);
  /// Exit a parse tree produced by [ObjectiveCParser.switchStatement].
  /// [ctx] the parse tree
  void exitSwitchStatement(SwitchStatementContext ctx);

  /// Enter a parse tree produced by [ObjectiveCParser.switchBlock].
  /// [ctx] the parse tree
  void enterSwitchBlock(SwitchBlockContext ctx);
  /// Exit a parse tree produced by [ObjectiveCParser.switchBlock].
  /// [ctx] the parse tree
  void exitSwitchBlock(SwitchBlockContext ctx);

  /// Enter a parse tree produced by [ObjectiveCParser.switchSection].
  /// [ctx] the parse tree
  void enterSwitchSection(SwitchSectionContext ctx);
  /// Exit a parse tree produced by [ObjectiveCParser.switchSection].
  /// [ctx] the parse tree
  void exitSwitchSection(SwitchSectionContext ctx);

  /// Enter a parse tree produced by [ObjectiveCParser.switchLabel].
  /// [ctx] the parse tree
  void enterSwitchLabel(SwitchLabelContext ctx);
  /// Exit a parse tree produced by [ObjectiveCParser.switchLabel].
  /// [ctx] the parse tree
  void exitSwitchLabel(SwitchLabelContext ctx);

  /// Enter a parse tree produced by [ObjectiveCParser.iterationStatement].
  /// [ctx] the parse tree
  void enterIterationStatement(IterationStatementContext ctx);
  /// Exit a parse tree produced by [ObjectiveCParser.iterationStatement].
  /// [ctx] the parse tree
  void exitIterationStatement(IterationStatementContext ctx);

  /// Enter a parse tree produced by [ObjectiveCParser.whileStatement].
  /// [ctx] the parse tree
  void enterWhileStatement(WhileStatementContext ctx);
  /// Exit a parse tree produced by [ObjectiveCParser.whileStatement].
  /// [ctx] the parse tree
  void exitWhileStatement(WhileStatementContext ctx);

  /// Enter a parse tree produced by [ObjectiveCParser.doStatement].
  /// [ctx] the parse tree
  void enterDoStatement(DoStatementContext ctx);
  /// Exit a parse tree produced by [ObjectiveCParser.doStatement].
  /// [ctx] the parse tree
  void exitDoStatement(DoStatementContext ctx);

  /// Enter a parse tree produced by [ObjectiveCParser.forStatement].
  /// [ctx] the parse tree
  void enterForStatement(ForStatementContext ctx);
  /// Exit a parse tree produced by [ObjectiveCParser.forStatement].
  /// [ctx] the parse tree
  void exitForStatement(ForStatementContext ctx);

  /// Enter a parse tree produced by [ObjectiveCParser.forLoopInitializer].
  /// [ctx] the parse tree
  void enterForLoopInitializer(ForLoopInitializerContext ctx);
  /// Exit a parse tree produced by [ObjectiveCParser.forLoopInitializer].
  /// [ctx] the parse tree
  void exitForLoopInitializer(ForLoopInitializerContext ctx);

  /// Enter a parse tree produced by [ObjectiveCParser.forInStatement].
  /// [ctx] the parse tree
  void enterForInStatement(ForInStatementContext ctx);
  /// Exit a parse tree produced by [ObjectiveCParser.forInStatement].
  /// [ctx] the parse tree
  void exitForInStatement(ForInStatementContext ctx);

  /// Enter a parse tree produced by [ObjectiveCParser.jumpStatement].
  /// [ctx] the parse tree
  void enterJumpStatement(JumpStatementContext ctx);
  /// Exit a parse tree produced by [ObjectiveCParser.jumpStatement].
  /// [ctx] the parse tree
  void exitJumpStatement(JumpStatementContext ctx);

  /// Enter a parse tree produced by [ObjectiveCParser.expressions].
  /// [ctx] the parse tree
  void enterExpressions(ExpressionsContext ctx);
  /// Exit a parse tree produced by [ObjectiveCParser.expressions].
  /// [ctx] the parse tree
  void exitExpressions(ExpressionsContext ctx);

  /// Enter a parse tree produced by [ObjectiveCParser.expression].
  /// [ctx] the parse tree
  void enterExpression(ExpressionContext ctx);
  /// Exit a parse tree produced by [ObjectiveCParser.expression].
  /// [ctx] the parse tree
  void exitExpression(ExpressionContext ctx);

  /// Enter a parse tree produced by [ObjectiveCParser.assignmentOperator].
  /// [ctx] the parse tree
  void enterAssignmentOperator(AssignmentOperatorContext ctx);
  /// Exit a parse tree produced by [ObjectiveCParser.assignmentOperator].
  /// [ctx] the parse tree
  void exitAssignmentOperator(AssignmentOperatorContext ctx);

  /// Enter a parse tree produced by [ObjectiveCParser.castExpression].
  /// [ctx] the parse tree
  void enterCastExpression(CastExpressionContext ctx);
  /// Exit a parse tree produced by [ObjectiveCParser.castExpression].
  /// [ctx] the parse tree
  void exitCastExpression(CastExpressionContext ctx);

  /// Enter a parse tree produced by [ObjectiveCParser.initializer].
  /// [ctx] the parse tree
  void enterInitializer(InitializerContext ctx);
  /// Exit a parse tree produced by [ObjectiveCParser.initializer].
  /// [ctx] the parse tree
  void exitInitializer(InitializerContext ctx);

  /// Enter a parse tree produced by [ObjectiveCParser.constantExpression].
  /// [ctx] the parse tree
  void enterConstantExpression(ConstantExpressionContext ctx);
  /// Exit a parse tree produced by [ObjectiveCParser.constantExpression].
  /// [ctx] the parse tree
  void exitConstantExpression(ConstantExpressionContext ctx);

  /// Enter a parse tree produced by [ObjectiveCParser.unaryExpression].
  /// [ctx] the parse tree
  void enterUnaryExpression(UnaryExpressionContext ctx);
  /// Exit a parse tree produced by [ObjectiveCParser.unaryExpression].
  /// [ctx] the parse tree
  void exitUnaryExpression(UnaryExpressionContext ctx);

  /// Enter a parse tree produced by [ObjectiveCParser.unaryOperator].
  /// [ctx] the parse tree
  void enterUnaryOperator(UnaryOperatorContext ctx);
  /// Exit a parse tree produced by [ObjectiveCParser.unaryOperator].
  /// [ctx] the parse tree
  void exitUnaryOperator(UnaryOperatorContext ctx);

  /// Enter a parse tree produced by [ObjectiveCParser.postfixExpression].
  /// [ctx] the parse tree
  void enterPostfixExpression(PostfixExpressionContext ctx);
  /// Exit a parse tree produced by [ObjectiveCParser.postfixExpression].
  /// [ctx] the parse tree
  void exitPostfixExpression(PostfixExpressionContext ctx);

  /// Enter a parse tree produced by [ObjectiveCParser.postfix].
  /// [ctx] the parse tree
  void enterPostfix(PostfixContext ctx);
  /// Exit a parse tree produced by [ObjectiveCParser.postfix].
  /// [ctx] the parse tree
  void exitPostfix(PostfixContext ctx);

  /// Enter a parse tree produced by [ObjectiveCParser.argumentExpressionList].
  /// [ctx] the parse tree
  void enterArgumentExpressionList(ArgumentExpressionListContext ctx);
  /// Exit a parse tree produced by [ObjectiveCParser.argumentExpressionList].
  /// [ctx] the parse tree
  void exitArgumentExpressionList(ArgumentExpressionListContext ctx);

  /// Enter a parse tree produced by [ObjectiveCParser.argumentExpression].
  /// [ctx] the parse tree
  void enterArgumentExpression(ArgumentExpressionContext ctx);
  /// Exit a parse tree produced by [ObjectiveCParser.argumentExpression].
  /// [ctx] the parse tree
  void exitArgumentExpression(ArgumentExpressionContext ctx);

  /// Enter a parse tree produced by [ObjectiveCParser.osVersion].
  /// [ctx] the parse tree
  void enterOsVersion(OsVersionContext ctx);
  /// Exit a parse tree produced by [ObjectiveCParser.osVersion].
  /// [ctx] the parse tree
  void exitOsVersion(OsVersionContext ctx);

  /// Enter a parse tree produced by [ObjectiveCParser.primaryExpression].
  /// [ctx] the parse tree
  void enterPrimaryExpression(PrimaryExpressionContext ctx);
  /// Exit a parse tree produced by [ObjectiveCParser.primaryExpression].
  /// [ctx] the parse tree
  void exitPrimaryExpression(PrimaryExpressionContext ctx);

  /// Enter a parse tree produced by [ObjectiveCParser.constant].
  /// [ctx] the parse tree
  void enterConstant(ConstantContext ctx);
  /// Exit a parse tree produced by [ObjectiveCParser.constant].
  /// [ctx] the parse tree
  void exitConstant(ConstantContext ctx);

  /// Enter a parse tree produced by [ObjectiveCParser.stringLiteral].
  /// [ctx] the parse tree
  void enterStringLiteral(StringLiteralContext ctx);
  /// Exit a parse tree produced by [ObjectiveCParser.stringLiteral].
  /// [ctx] the parse tree
  void exitStringLiteral(StringLiteralContext ctx);

  /// Enter a parse tree produced by [ObjectiveCParser.identifier].
  /// [ctx] the parse tree
  void enterIdentifier(IdentifierContext ctx);
  /// Exit a parse tree produced by [ObjectiveCParser.identifier].
  /// [ctx] the parse tree
  void exitIdentifier(IdentifierContext ctx);
}