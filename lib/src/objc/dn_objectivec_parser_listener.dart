import 'package:antlr4/antlr4.dart';

import '../../parser/objc/ObjectiveCParser.dart';
import '../../parser/objc/ObjectiveCParserListener.dart';
import '../common.dart';
import 'dn_objectivec_context.dart';

class DNObjectiveCParserListener extends ObjectiveCParserListener {
  Callback callback;
  bool needExport;
  DNRootContext rootContext;
  DNContext currentContext;
  DNObjectiveCParserListener(this.callback);
  @override
  void enterAbstractDeclarator(AbstractDeclaratorContext ctx) {
    // TODO: implement enterAbstractDeclarator
  }

  @override
  void enterAbstractDeclaratorSuffix(AbstractDeclaratorSuffixContext ctx) {
    // TODO: implement enterAbstractDeclaratorSuffix
  }

  @override
  void enterAccessModifier(AccessModifierContext ctx) {
    // TODO: implement enterAccessModifier
  }

  @override
  void enterArcBehaviourSpecifier(ArcBehaviourSpecifierContext ctx) {
    // TODO: implement enterArcBehaviourSpecifier
  }

  @override
  void enterArgumentExpression(ArgumentExpressionContext ctx) {
    // TODO: implement enterArgumentExpression
  }

  @override
  void enterArgumentExpressionList(ArgumentExpressionListContext ctx) {
    // TODO: implement enterArgumentExpressionList
  }

  @override
  void enterArrayExpression(ArrayExpressionContext ctx) {
    // TODO: implement enterArrayExpression
  }

  @override
  void enterArrayInitializer(ArrayInitializerContext ctx) {
    // TODO: implement enterArrayInitializer
  }

  @override
  void enterAssignmentOperator(AssignmentOperatorContext ctx) {
    // TODO: implement enterAssignmentOperator
  }

  @override
  void enterAttribute(AttributeContext ctx) {
    // TODO: implement enterAttribute
  }

  @override
  void enterAttributeName(AttributeNameContext ctx) {
    // TODO: implement enterAttributeName
  }

  @override
  void enterAttributeParameter(AttributeParameterContext ctx) {
    // TODO: implement enterAttributeParameter
  }

  @override
  void enterAttributeParameterAssignment(
      AttributeParameterAssignmentContext ctx) {
    // TODO: implement enterAttributeParameterAssignment
  }

  @override
  void enterAttributeParameterList(AttributeParameterListContext ctx) {
    // TODO: implement enterAttributeParameterList
  }

  @override
  void enterAttributeParameters(AttributeParametersContext ctx) {
    // TODO: implement enterAttributeParameters
  }

  @override
  void enterAttributeSpecifier(AttributeSpecifierContext ctx) {
    // TODO: implement enterAttributeSpecifier
  }

  @override
  void enterAutoreleaseStatement(AutoreleaseStatementContext ctx) {
    // TODO: implement enterAutoreleaseStatement
  }

  @override
  void enterBlockExpression(BlockExpressionContext ctx) {
    // TODO: implement enterBlockExpression
  }

  @override
  void enterBlockParameters(BlockParametersContext ctx) {
    // TODO: implement enterBlockParameters
  }

  @override
  void enterBlockType(BlockTypeContext ctx) {
    // TODO: implement enterBlockType
  }

  @override
  void enterBoxExpression(BoxExpressionContext ctx) {
    // TODO: implement enterBoxExpression
  }

  @override
  void enterCastExpression(CastExpressionContext ctx) {
    // TODO: implement enterCastExpression
  }

  @override
  void enterCatchStatement(CatchStatementContext ctx) {
    // TODO: implement enterCatchStatement
  }

  @override
  void enterCategoryImplementation(CategoryImplementationContext ctx) {
    // TODO: implement enterCategoryImplementation
  }

  @override
  void enterCategoryInterface(CategoryInterfaceContext ctx) {
    // TODO: implement enterCategoryInterface
  }

  @override
  void enterClassDeclaration(ClassDeclarationContext ctx) {
    // TODO: implement enterClassDeclaration
  }

  @override
  void enterClassDeclarationList(ClassDeclarationListContext ctx) {
    // TODO: implement enterClassDeclarationList
  }

  @override
  void enterClassImplementation(ClassImplementationContext ctx) {
    // TODO: implement enterClassImplementation
  }

  @override
  void enterClassInterface(ClassInterfaceContext ctx) {
    // TODO: implement enterClassInterface
  }

  @override
  void enterClassMethodDeclaration(ClassMethodDeclarationContext ctx) {
    // TODO: implement enterClassMethodDeclaration
  }

  @override
  void enterClassMethodDefinition(ClassMethodDefinitionContext ctx) {
    // TODO: implement enterClassMethodDefinition
  }

  @override
  void enterCommonSpecifiers(CommonSpecifiersContext ctx) {
    // TODO: implement enterCommonSpecifiers
  }

  @override
  void enterCompoundStatement(CompoundStatementContext ctx) {
    // TODO: implement enterCompoundStatement
  }

  @override
  void enterConstant(ConstantContext ctx) {
    // TODO: implement enterConstant
  }

  @override
  void enterConstantExpression(ConstantExpressionContext ctx) {
    // TODO: implement enterConstantExpression
  }

  @override
  void enterDeclaration(DeclarationContext ctx) {
    // TODO: implement enterDeclaration
  }

  @override
  void enterDeclarationSpecifiers(DeclarationSpecifiersContext ctx) {
    // TODO: implement enterDeclarationSpecifiers
  }

  @override
  void enterDeclarator(DeclaratorContext ctx) {
    // TODO: implement enterDeclarator
  }

  @override
  void enterDeclaratorSuffix(DeclaratorSuffixContext ctx) {
    // TODO: implement enterDeclaratorSuffix
  }

  @override
  void enterDictionaryExpression(DictionaryExpressionContext ctx) {
    // TODO: implement enterDictionaryExpression
  }

  @override
  void enterDictionaryPair(DictionaryPairContext ctx) {
    // TODO: implement enterDictionaryPair
  }

  @override
  void enterDirectDeclarator(DirectDeclaratorContext ctx) {
    // TODO: implement enterDirectDeclarator
  }

  @override
  void enterDoStatement(DoStatementContext ctx) {
    // TODO: implement enterDoStatement
  }

  @override
  void enterEncodeExpression(EncodeExpressionContext ctx) {
    // TODO: implement enterEncodeExpression
  }

  @override
  void enterEnumDeclaration(EnumDeclarationContext ctx) {
    // TODO: implement enterEnumDeclaration
  }

  @override
  void enterEnumSpecifier(EnumSpecifierContext ctx) {
    // TODO: implement enterEnumSpecifier
  }

  @override
  void enterEnumerator(EnumeratorContext ctx) {
    // TODO: implement enterEnumerator
  }

  @override
  void enterEnumeratorIdentifier(EnumeratorIdentifierContext ctx) {
    // TODO: implement enterEnumeratorIdentifier
  }

  @override
  void enterEnumeratorList(EnumeratorListContext ctx) {
    // TODO: implement enterEnumeratorList
  }

  @override
  void enterEveryRule(ParserRuleContext node) {
    // TODO: implement enterEveryRule
  }

  @override
  void enterExpression(ExpressionContext ctx) {
    // TODO: implement enterExpression
  }

  @override
  void enterExpressions(ExpressionsContext ctx) {
    // TODO: implement enterExpressions
  }

  @override
  void enterFieldDeclaration(FieldDeclarationContext ctx) {
    // TODO: implement enterFieldDeclaration
  }

  @override
  void enterFieldDeclarator(FieldDeclaratorContext ctx) {
    // TODO: implement enterFieldDeclarator
  }

  @override
  void enterFieldDeclaratorList(FieldDeclaratorListContext ctx) {
    // TODO: implement enterFieldDeclaratorList
  }

  @override
  void enterForInStatement(ForInStatementContext ctx) {
    // TODO: implement enterForInStatement
  }

  @override
  void enterForLoopInitializer(ForLoopInitializerContext ctx) {
    // TODO: implement enterForLoopInitializer
  }

  @override
  void enterForStatement(ForStatementContext ctx) {
    // TODO: implement enterForStatement
  }

  @override
  void enterFunctionCallExpression(FunctionCallExpressionContext ctx) {
    // TODO: implement enterFunctionCallExpression
  }

  @override
  void enterFunctionDeclaration(FunctionDeclarationContext ctx) {
    // TODO: implement enterFunctionDeclaration
  }

  @override
  void enterFunctionDefinition(FunctionDefinitionContext ctx) {
    // TODO: implement enterFunctionDefinition
  }

  @override
  void enterFunctionPointer(FunctionPointerContext ctx) {
    // TODO: implement enterFunctionPointer
  }

  @override
  void enterFunctionSignature(FunctionSignatureContext ctx) {
    // TODO: implement enterFunctionSignature
  }

  @override
  void enterGenericTypeSpecifier(GenericTypeSpecifierContext ctx) {
    // TODO: implement enterGenericTypeSpecifier
  }

  @override
  void enterGenericsSpecifier(GenericsSpecifierContext ctx) {
    // TODO: implement enterGenericsSpecifier
  }

  @override
  void enterIbOutletQualifier(IbOutletQualifierContext ctx) {
    // TODO: implement enterIbOutletQualifier
  }

  @override
  void enterIdentifier(IdentifierContext ctx) {
    // TODO: implement enterIdentifier
  }

  @override
  void enterImplementationDefinitionList(
      ImplementationDefinitionListContext ctx) {
    // TODO: implement enterImplementationDefinitionList
  }

  @override
  void enterImportDeclaration(ImportDeclarationContext ctx) {
    // TODO: implement enterImportDeclaration
  }

  @override
  void enterInitDeclarator(InitDeclaratorContext ctx) {
    // TODO: implement enterInitDeclarator
  }

  @override
  void enterInitDeclaratorList(InitDeclaratorListContext ctx) {
    // TODO: implement enterInitDeclaratorList
  }

  @override
  void enterInitializer(InitializerContext ctx) {
    // TODO: implement enterInitializer
  }

  @override
  void enterInitializerList(InitializerListContext ctx) {
    // TODO: implement enterInitializerList
  }

  @override
  void enterInstanceMethodDeclaration(InstanceMethodDeclarationContext ctx) {
    // TODO: implement enterInstanceMethodDeclaration
  }

  @override
  void enterInstanceMethodDefinition(InstanceMethodDefinitionContext ctx) {
    // TODO: implement enterInstanceMethodDefinition
  }

  @override
  void enterInstanceVariables(InstanceVariablesContext ctx) {
    // TODO: implement enterInstanceVariables
  }

  @override
  void enterInterfaceDeclarationList(InterfaceDeclarationListContext ctx) {
    // TODO: implement enterInterfaceDeclarationList
  }

  @override
  void enterIterationStatement(IterationStatementContext ctx) {
    // TODO: implement enterIterationStatement
  }

  @override
  void enterJumpStatement(JumpStatementContext ctx) {
    // TODO: implement enterJumpStatement
  }

  @override
  void enterKeywordArgument(KeywordArgumentContext ctx) {
    // TODO: implement enterKeywordArgument
  }

  @override
  void enterKeywordArgumentType(KeywordArgumentTypeContext ctx) {
    // TODO: implement enterKeywordArgumentType
  }

  @override
  void enterKeywordDeclarator(KeywordDeclaratorContext ctx) {
    // TODO: implement enterKeywordDeclarator
  }

  @override
  void enterLabeledStatement(LabeledStatementContext ctx) {
    // TODO: implement enterLabeledStatement
  }

  @override
  void enterMacro(MacroContext ctx) {
    // // if (this.currentContext is DNMethodContext ||
    // //       this.currentContext is DNClassContext ||
    // //       this.currentContext is DNPropertyContext ||
    // //       this.currentContext is DNEnumDefContext ||
    // //       this.currentContext is DNEnumItemContext ||
    // //       this.currentContext is DNProtocolContext) {
    //       var name = ctx.start.text;
    //       // this.currentContext.macros.push(name);

    //       if (name.startsWith('API_')) {
    //           var availability = new DNAvailabilityContext(ctx);
    //           // this.currentContext.availability.push(availability);
    //           // this.currentContext.addChild(availability);
    //           this.currentContext = availability;
    //       }
    //   // }
  }

  @override
  void enterMessageExpression(MessageExpressionContext ctx) {
    // TODO: implement enterMessageExpression
  }

  @override
  void enterMessageSelector(MessageSelectorContext ctx) {
    // TODO: implement enterMessageSelector
  }

  @override
  void enterMethodDeclaration(MethodDeclarationContext ctx) {
    // TODO: implement enterMethodDeclaration
  }

  @override
  void enterMethodDefinition(MethodDefinitionContext ctx) {
    // TODO: implement enterMethodDefinition
  }

  @override
  void enterMethodSelector(MethodSelectorContext ctx) {
    // TODO: implement enterMethodSelector
  }

  @override
  void enterMethodType(MethodTypeContext ctx) {
    // TODO: implement enterMethodType
  }

  @override
  void enterNullabilitySpecifier(NullabilitySpecifierContext ctx) {
    // TODO: implement enterNullabilitySpecifier
  }

  @override
  void enterOsVersion(OsVersionContext ctx) {
    // TODO: implement enterOsVersion
  }

  @override
  void enterParameterDeclaration(ParameterDeclarationContext ctx) {
    // TODO: implement enterParameterDeclaration
  }

  @override
  void enterParameterDeclarationList(ParameterDeclarationListContext ctx) {
    // TODO: implement enterParameterDeclarationList
  }

  @override
  void enterParameterList(ParameterListContext ctx) {
    // TODO: implement enterParameterList
  }

  @override
  void enterPointer(PointerContext ctx) {
    // TODO: implement enterPointer
  }

  @override
  void enterPointerQualifier(PointerQualifierContext ctx) {
    // TODO: implement enterPointerQualifier
  }

  @override
  void enterPostfix(PostfixContext ctx) {
    // TODO: implement enterPostfix
  }

  @override
  void enterPostfixExpression(PostfixExpressionContext ctx) {
    // TODO: implement enterPostfixExpression
  }

  @override
  void enterPrimaryExpression(PrimaryExpressionContext ctx) {
    // TODO: implement enterPrimaryExpression
  }

  @override
  void enterPropertyAttribute(PropertyAttributeContext ctx) {
    // TODO: implement enterPropertyAttribute
  }

  @override
  void enterPropertyAttributesList(PropertyAttributesListContext ctx) {
    // TODO: implement enterPropertyAttributesList
  }

  @override
  void enterPropertyDeclaration(PropertyDeclarationContext ctx) {
    // TODO: implement enterPropertyDeclaration
  }

  @override
  void enterPropertyImplementation(PropertyImplementationContext ctx) {
    // TODO: implement enterPropertyImplementation
  }

  @override
  void enterPropertySynthesizeItem(PropertySynthesizeItemContext ctx) {
    // TODO: implement enterPropertySynthesizeItem
  }

  @override
  void enterPropertySynthesizeList(PropertySynthesizeListContext ctx) {
    // TODO: implement enterPropertySynthesizeList
  }

  @override
  void enterProtocolDeclaration(ProtocolDeclarationContext ctx) {
    // TODO: implement enterProtocolDeclaration
  }

  @override
  void enterProtocolDeclarationList(ProtocolDeclarationListContext ctx) {
    // TODO: implement enterProtocolDeclarationList
  }

  @override
  void enterProtocolDeclarationSection(ProtocolDeclarationSectionContext ctx) {
    // TODO: implement enterProtocolDeclarationSection
  }

  @override
  void enterProtocolExpression(ProtocolExpressionContext ctx) {
    // TODO: implement enterProtocolExpression
  }

  @override
  void enterProtocolList(ProtocolListContext ctx) {
    // TODO: implement enterProtocolList
  }

  @override
  void enterProtocolName(ProtocolNameContext ctx) {
    // TODO: implement enterProtocolName
  }

  @override
  void enterProtocolQualifier(ProtocolQualifierContext ctx) {
    // TODO: implement enterProtocolQualifier
  }

  @override
  void enterRangeExpression(RangeExpressionContext ctx) {
    // TODO: implement enterRangeExpression
  }

  @override
  void enterReceiver(ReceiverContext ctx) {
    // TODO: implement enterReceiver
  }

  @override
  void enterSelectionStatement(SelectionStatementContext ctx) {
    // TODO: implement enterSelectionStatement
  }

  @override
  void enterSelector(SelectorContext ctx) {
    // TODO: implement enterSelector
  }

  @override
  void enterSelectorExpression(SelectorExpressionContext ctx) {
    // TODO: implement enterSelectorExpression
  }

  @override
  void enterSelectorName(SelectorNameContext ctx) {
    // TODO: implement enterSelectorName
  }

  @override
  void enterSpecifierQualifierList(SpecifierQualifierListContext ctx) {
    // TODO: implement enterSpecifierQualifierList
  }

  @override
  void enterStatement(StatementContext ctx) {
    // TODO: implement enterStatement
  }

  @override
  void enterStorageClassSpecifier(StorageClassSpecifierContext ctx) {
    // TODO: implement enterStorageClassSpecifier
  }

  @override
  void enterStringLiteral(StringLiteralContext ctx) {
    // TODO: implement enterStringLiteral
  }

  @override
  void enterStructInitializer(StructInitializerContext ctx) {
    // TODO: implement enterStructInitializer
  }

  @override
  void enterStructOrUnionSpecifier(StructOrUnionSpecifierContext ctx) {
    // TODO: implement enterStructOrUnionSpecifier
  }

  @override
  void enterSwitchBlock(SwitchBlockContext ctx) {
    // TODO: implement enterSwitchBlock
  }

  @override
  void enterSwitchLabel(SwitchLabelContext ctx) {
    // TODO: implement enterSwitchLabel
  }

  @override
  void enterSwitchSection(SwitchSectionContext ctx) {
    // TODO: implement enterSwitchSection
  }

  @override
  void enterSwitchStatement(SwitchStatementContext ctx) {
    // TODO: implement enterSwitchStatement
  }

  @override
  void enterSynchronizedStatement(SynchronizedStatementContext ctx) {
    // TODO: implement enterSynchronizedStatement
  }

  @override
  void enterThrowStatement(ThrowStatementContext ctx) {
    // TODO: implement enterThrowStatement
  }

  @override
  void enterTopLevelDeclaration(TopLevelDeclarationContext ctx) {
    // TODO: implement enterTopLevelDeclaration
  }

  @override
  void enterTranslationUnit(TranslationUnitContext ctx) {
    //check if it is an export file
    needExport = true;
    for (var i = 0; i < ctx.children.length; i++) {
      if (ctx.children[i] is TopLevelDeclarationContext) {
        var subChildren = ctx.children[i];
        if (subChildren.childCount > 0 &&
            !(subChildren.getChild(0) is ImportDeclarationContext)) {
          needExport = false;
          break;
        }
      }
    }
    rootContext = DNRootContext(ctx, needExport);
    currentContext = rootContext;
  }

  @override
  void enterTryBlock(TryBlockContext ctx) {
    // TODO: implement enterTryBlock
  }

  @override
  void enterTypeDeclarator(TypeDeclaratorContext ctx) {
    // TODO: implement enterTypeDeclarator
  }

  @override
  void enterTypeDeclaratorList(TypeDeclaratorListContext ctx) {
    // TODO: implement enterTypeDeclaratorList
  }

  @override
  void enterTypeName(TypeNameContext ctx) {
    // TODO: implement enterTypeName
  }

  @override
  void enterTypePrefix(TypePrefixContext ctx) {
    // TODO: implement enterTypePrefix
  }

  @override
  void enterTypeQualifier(TypeQualifierContext ctx) {
    // TODO: implement enterTypeQualifier
  }

  @override
  void enterTypeSpecifier(TypeSpecifierContext ctx) {
    // TODO: implement enterTypeSpecifier
  }

  @override
  void enterTypeSpecifierWithPrefixes(TypeSpecifierWithPrefixesContext ctx) {
    // TODO: implement enterTypeSpecifierWithPrefixes
  }

  @override
  void enterTypeVariableDeclarator(TypeVariableDeclaratorContext ctx) {
    // TODO: implement enterTypeVariableDeclarator
  }

  @override
  void enterTypeVariableDeclaratorOrName(
      TypeVariableDeclaratorOrNameContext ctx) {
    // TODO: implement enterTypeVariableDeclaratorOrName
  }

  @override
  void enterTypedefDeclaration(TypedefDeclarationContext ctx) {
    // TODO: implement enterTypedefDeclaration
  }

  @override
  void enterTypeofExpression(TypeofExpressionContext ctx) {
    // TODO: implement enterTypeofExpression
  }

  @override
  void enterUnaryExpression(UnaryExpressionContext ctx) {
    // TODO: implement enterUnaryExpression
  }

  @override
  void enterUnaryOperator(UnaryOperatorContext ctx) {
    // TODO: implement enterUnaryOperator
  }

  @override
  void enterVarDeclaration(VarDeclarationContext ctx) {
    // TODO: implement enterVarDeclaration
  }

  @override
  void enterVisibilitySection(VisibilitySectionContext ctx) {
    // TODO: implement enterVisibilitySection
  }

  @override
  void enterWhileStatement(WhileStatementContext ctx) {
    // TODO: implement enterWhileStatement
  }

  @override
  void exitAbstractDeclarator(AbstractDeclaratorContext ctx) {
    // TODO: implement exitAbstractDeclarator
  }

  @override
  void exitAbstractDeclaratorSuffix(AbstractDeclaratorSuffixContext ctx) {
    // TODO: implement exitAbstractDeclaratorSuffix
  }

  @override
  void exitAccessModifier(AccessModifierContext ctx) {
    // TODO: implement exitAccessModifier
  }

  @override
  void exitArcBehaviourSpecifier(ArcBehaviourSpecifierContext ctx) {
    // TODO: implement exitArcBehaviourSpecifier
  }

  @override
  void exitArgumentExpression(ArgumentExpressionContext ctx) {
    // TODO: implement exitArgumentExpression
  }

  @override
  void exitArgumentExpressionList(ArgumentExpressionListContext ctx) {
    // TODO: implement exitArgumentExpressionList
  }

  @override
  void exitArrayExpression(ArrayExpressionContext ctx) {
    // TODO: implement exitArrayExpression
  }

  @override
  void exitArrayInitializer(ArrayInitializerContext ctx) {
    // TODO: implement exitArrayInitializer
  }

  @override
  void exitAssignmentOperator(AssignmentOperatorContext ctx) {
    // TODO: implement exitAssignmentOperator
  }

  @override
  void exitAttribute(AttributeContext ctx) {
    // TODO: implement exitAttribute
  }

  @override
  void exitAttributeName(AttributeNameContext ctx) {
    // TODO: implement exitAttributeName
  }

  @override
  void exitAttributeParameter(AttributeParameterContext ctx) {
    // TODO: implement exitAttributeParameter
  }

  @override
  void exitAttributeParameterAssignment(
      AttributeParameterAssignmentContext ctx) {
    // TODO: implement exitAttributeParameterAssignment
  }

  @override
  void exitAttributeParameterList(AttributeParameterListContext ctx) {
    // TODO: implement exitAttributeParameterList
  }

  @override
  void exitAttributeParameters(AttributeParametersContext ctx) {
    // TODO: implement exitAttributeParameters
  }

  @override
  void exitAttributeSpecifier(AttributeSpecifierContext ctx) {
    // TODO: implement exitAttributeSpecifier
  }

  @override
  void exitAutoreleaseStatement(AutoreleaseStatementContext ctx) {
    // TODO: implement exitAutoreleaseStatement
  }

  @override
  void exitBlockExpression(BlockExpressionContext ctx) {
    // TODO: implement exitBlockExpression
  }

  @override
  void exitBlockParameters(BlockParametersContext ctx) {
    // TODO: implement exitBlockParameters
  }

  @override
  void exitBlockType(BlockTypeContext ctx) {
    // TODO: implement exitBlockType
  }

  @override
  void exitBoxExpression(BoxExpressionContext ctx) {
    // TODO: implement exitBoxExpression
  }

  @override
  void exitCastExpression(CastExpressionContext ctx) {
    // TODO: implement exitCastExpression
  }

  @override
  void exitCatchStatement(CatchStatementContext ctx) {
    // TODO: implement exitCatchStatement
  }

  @override
  void exitCategoryImplementation(CategoryImplementationContext ctx) {
    // TODO: implement exitCategoryImplementation
  }

  @override
  void exitCategoryInterface(CategoryInterfaceContext ctx) {
    // TODO: implement exitCategoryInterface
  }

  @override
  void exitClassDeclaration(ClassDeclarationContext ctx) {
    // TODO: implement exitClassDeclaration
  }

  @override
  void exitClassDeclarationList(ClassDeclarationListContext ctx) {
    // TODO: implement exitClassDeclarationList
  }

  @override
  void exitClassImplementation(ClassImplementationContext ctx) {
    // TODO: implement exitClassImplementation
  }

  @override
  void exitClassInterface(ClassInterfaceContext ctx) {
    // TODO: implement exitClassInterface
  }

  @override
  void exitClassMethodDeclaration(ClassMethodDeclarationContext ctx) {
    // TODO: implement exitClassMethodDeclaration
  }

  @override
  void exitClassMethodDefinition(ClassMethodDefinitionContext ctx) {
    // TODO: implement exitClassMethodDefinition
  }

  @override
  void exitCommonSpecifiers(CommonSpecifiersContext ctx) {
    // TODO: implement exitCommonSpecifiers
  }

  @override
  void exitCompoundStatement(CompoundStatementContext ctx) {
    // TODO: implement exitCompoundStatement
  }

  @override
  void exitConstant(ConstantContext ctx) {
    // TODO: implement exitConstant
  }

  @override
  void exitConstantExpression(ConstantExpressionContext ctx) {
    // TODO: implement exitConstantExpression
  }

  @override
  void exitDeclaration(DeclarationContext ctx) {
    // TODO: implement exitDeclaration
  }

  @override
  void exitDeclarationSpecifiers(DeclarationSpecifiersContext ctx) {
    // TODO: implement exitDeclarationSpecifiers
  }

  @override
  void exitDeclarator(DeclaratorContext ctx) {
    // TODO: implement exitDeclarator
  }

  @override
  void exitDeclaratorSuffix(DeclaratorSuffixContext ctx) {
    // TODO: implement exitDeclaratorSuffix
  }

  @override
  void exitDictionaryExpression(DictionaryExpressionContext ctx) {
    // TODO: implement exitDictionaryExpression
  }

  @override
  void exitDictionaryPair(DictionaryPairContext ctx) {
    // TODO: implement exitDictionaryPair
  }

  @override
  void exitDirectDeclarator(DirectDeclaratorContext ctx) {
    // TODO: implement exitDirectDeclarator
  }

  @override
  void exitDoStatement(DoStatementContext ctx) {
    // TODO: implement exitDoStatement
  }

  @override
  void exitEncodeExpression(EncodeExpressionContext ctx) {
    // TODO: implement exitEncodeExpression
  }

  @override
  void exitEnumDeclaration(EnumDeclarationContext ctx) {
    // TODO: implement exitEnumDeclaration
  }

  @override
  void exitEnumSpecifier(EnumSpecifierContext ctx) {
    // TODO: implement exitEnumSpecifier
  }

  @override
  void exitEnumerator(EnumeratorContext ctx) {
    // TODO: implement exitEnumerator
  }

  @override
  void exitEnumeratorIdentifier(EnumeratorIdentifierContext ctx) {
    // TODO: implement exitEnumeratorIdentifier
  }

  @override
  void exitEnumeratorList(EnumeratorListContext ctx) {
    // TODO: implement exitEnumeratorList
  }

  @override
  void exitEveryRule(ParserRuleContext node) {
    // TODO: implement exitEveryRule
  }

  @override
  void exitExpression(ExpressionContext ctx) {
    // TODO: implement exitExpression
  }

  @override
  void exitExpressions(ExpressionsContext ctx) {
    // TODO: implement exitExpressions
  }

  @override
  void exitFieldDeclaration(FieldDeclarationContext ctx) {
    // TODO: implement exitFieldDeclaration
  }

  @override
  void exitFieldDeclarator(FieldDeclaratorContext ctx) {
    // TODO: implement exitFieldDeclarator
  }

  @override
  void exitFieldDeclaratorList(FieldDeclaratorListContext ctx) {
    // TODO: implement exitFieldDeclaratorList
  }

  @override
  void exitForInStatement(ForInStatementContext ctx) {
    // TODO: implement exitForInStatement
  }

  @override
  void exitForLoopInitializer(ForLoopInitializerContext ctx) {
    // TODO: implement exitForLoopInitializer
  }

  @override
  void exitForStatement(ForStatementContext ctx) {
    // TODO: implement exitForStatement
  }

  @override
  void exitFunctionCallExpression(FunctionCallExpressionContext ctx) {
    // TODO: implement exitFunctionCallExpression
  }

  @override
  void exitFunctionDeclaration(FunctionDeclarationContext ctx) {
    // TODO: implement exitFunctionDeclaration
  }

  @override
  void exitFunctionDefinition(FunctionDefinitionContext ctx) {
    // TODO: implement exitFunctionDefinition
  }

  @override
  void exitFunctionPointer(FunctionPointerContext ctx) {
    // TODO: implement exitFunctionPointer
  }

  @override
  void exitFunctionSignature(FunctionSignatureContext ctx) {
    // TODO: implement exitFunctionSignature
  }

  @override
  void exitGenericTypeSpecifier(GenericTypeSpecifierContext ctx) {
    // TODO: implement exitGenericTypeSpecifier
  }

  @override
  void exitGenericsSpecifier(GenericsSpecifierContext ctx) {
    // TODO: implement exitGenericsSpecifier
  }

  @override
  void exitIbOutletQualifier(IbOutletQualifierContext ctx) {
    // TODO: implement exitIbOutletQualifier
  }

  @override
  void exitIdentifier(IdentifierContext ctx) {
    // TODO: implement exitIdentifier
  }

  @override
  void exitImplementationDefinitionList(
      ImplementationDefinitionListContext ctx) {
    // TODO: implement exitImplementationDefinitionList
  }

  @override
  void exitImportDeclaration(ImportDeclarationContext ctx) {
    // TODO: implement exitImportDeclaration
  }

  @override
  void exitInitDeclarator(InitDeclaratorContext ctx) {
    // TODO: implement exitInitDeclarator
  }

  @override
  void exitInitDeclaratorList(InitDeclaratorListContext ctx) {
    // TODO: implement exitInitDeclaratorList
  }

  @override
  void exitInitializer(InitializerContext ctx) {
    // TODO: implement exitInitializer
  }

  @override
  void exitInitializerList(InitializerListContext ctx) {
    // TODO: implement exitInitializerList
  }

  @override
  void exitInstanceMethodDeclaration(InstanceMethodDeclarationContext ctx) {
    // TODO: implement exitInstanceMethodDeclaration
  }

  @override
  void exitInstanceMethodDefinition(InstanceMethodDefinitionContext ctx) {
    // TODO: implement exitInstanceMethodDefinition
  }

  @override
  void exitInstanceVariables(InstanceVariablesContext ctx) {
    // TODO: implement exitInstanceVariables
  }

  @override
  void exitInterfaceDeclarationList(InterfaceDeclarationListContext ctx) {
    // TODO: implement exitInterfaceDeclarationList
  }

  @override
  void exitIterationStatement(IterationStatementContext ctx) {
    // TODO: implement exitIterationStatement
  }

  @override
  void exitJumpStatement(JumpStatementContext ctx) {
    // TODO: implement exitJumpStatement
  }

  @override
  void exitKeywordArgument(KeywordArgumentContext ctx) {
    // TODO: implement exitKeywordArgument
  }

  @override
  void exitKeywordArgumentType(KeywordArgumentTypeContext ctx) {
    // TODO: implement exitKeywordArgumentType
  }

  @override
  void exitKeywordDeclarator(KeywordDeclaratorContext ctx) {
    // TODO: implement exitKeywordDeclarator
  }

  @override
  void exitLabeledStatement(LabeledStatementContext ctx) {
    // TODO: implement exitLabeledStatement
  }

  @override
  void exitMacro(MacroContext ctx) {
    // TODO: implement exitMacro
  }

  @override
  void exitMessageExpression(MessageExpressionContext ctx) {
    // TODO: implement exitMessageExpression
  }

  @override
  void exitMessageSelector(MessageSelectorContext ctx) {
    // TODO: implement exitMessageSelector
  }

  @override
  void exitMethodDeclaration(MethodDeclarationContext ctx) {
    // TODO: implement exitMethodDeclaration
  }

  @override
  void exitMethodDefinition(MethodDefinitionContext ctx) {
    // TODO: implement exitMethodDefinition
  }

  @override
  void exitMethodSelector(MethodSelectorContext ctx) {
    // TODO: implement exitMethodSelector
  }

  @override
  void exitMethodType(MethodTypeContext ctx) {
    // TODO: implement exitMethodType
  }

  @override
  void exitNullabilitySpecifier(NullabilitySpecifierContext ctx) {
    // TODO: implement exitNullabilitySpecifier
  }

  @override
  void exitOsVersion(OsVersionContext ctx) {
    // TODO: implement exitOsVersion
  }

  @override
  void exitParameterDeclaration(ParameterDeclarationContext ctx) {
    // TODO: implement exitParameterDeclaration
  }

  @override
  void exitParameterDeclarationList(ParameterDeclarationListContext ctx) {
    // TODO: implement exitParameterDeclarationList
  }

  @override
  void exitParameterList(ParameterListContext ctx) {
    // TODO: implement exitParameterList
  }

  @override
  void exitPointer(PointerContext ctx) {
    // TODO: implement exitPointer
  }

  @override
  void exitPointerQualifier(PointerQualifierContext ctx) {
    // TODO: implement exitPointerQualifier
  }

  @override
  void exitPostfix(PostfixContext ctx) {
    // TODO: implement exitPostfix
  }

  @override
  void exitPostfixExpression(PostfixExpressionContext ctx) {
    // TODO: implement exitPostfixExpression
  }

  @override
  void exitPrimaryExpression(PrimaryExpressionContext ctx) {
    // TODO: implement exitPrimaryExpression
  }

  @override
  void exitPropertyAttribute(PropertyAttributeContext ctx) {
    // TODO: implement exitPropertyAttribute
  }

  @override
  void exitPropertyAttributesList(PropertyAttributesListContext ctx) {
    // TODO: implement exitPropertyAttributesList
  }

  @override
  void exitPropertyDeclaration(PropertyDeclarationContext ctx) {
    // TODO: implement exitPropertyDeclaration
  }

  @override
  void exitPropertyImplementation(PropertyImplementationContext ctx) {
    // TODO: implement exitPropertyImplementation
  }

  @override
  void exitPropertySynthesizeItem(PropertySynthesizeItemContext ctx) {
    // TODO: implement exitPropertySynthesizeItem
  }

  @override
  void exitPropertySynthesizeList(PropertySynthesizeListContext ctx) {
    // TODO: implement exitPropertySynthesizeList
  }

  @override
  void exitProtocolDeclaration(ProtocolDeclarationContext ctx) {
    // TODO: implement exitProtocolDeclaration
  }

  @override
  void exitProtocolDeclarationList(ProtocolDeclarationListContext ctx) {
    // TODO: implement exitProtocolDeclarationList
  }

  @override
  void exitProtocolDeclarationSection(ProtocolDeclarationSectionContext ctx) {
    // TODO: implement exitProtocolDeclarationSection
  }

  @override
  void exitProtocolExpression(ProtocolExpressionContext ctx) {
    // TODO: implement exitProtocolExpression
  }

  @override
  void exitProtocolList(ProtocolListContext ctx) {
    // TODO: implement exitProtocolList
  }

  @override
  void exitProtocolName(ProtocolNameContext ctx) {
    // TODO: implement exitProtocolName
  }

  @override
  void exitProtocolQualifier(ProtocolQualifierContext ctx) {
    // TODO: implement exitProtocolQualifier
  }

  @override
  void exitRangeExpression(RangeExpressionContext ctx) {
    // TODO: implement exitRangeExpression
  }

  @override
  void exitReceiver(ReceiverContext ctx) {
    // TODO: implement exitReceiver
  }

  @override
  void exitSelectionStatement(SelectionStatementContext ctx) {
    // TODO: implement exitSelectionStatement
  }

  @override
  void exitSelector(SelectorContext ctx) {
    // TODO: implement exitSelector
  }

  @override
  void exitSelectorExpression(SelectorExpressionContext ctx) {
    // TODO: implement exitSelectorExpression
  }

  @override
  void exitSelectorName(SelectorNameContext ctx) {
    // TODO: implement exitSelectorName
  }

  @override
  void exitSpecifierQualifierList(SpecifierQualifierListContext ctx) {
    // TODO: implement exitSpecifierQualifierList
  }

  @override
  void exitStatement(StatementContext ctx) {
    // TODO: implement exitStatement
  }

  @override
  void exitStorageClassSpecifier(StorageClassSpecifierContext ctx) {
    // TODO: implement exitStorageClassSpecifier
  }

  @override
  void exitStringLiteral(StringLiteralContext ctx) {
    // TODO: implement exitStringLiteral
  }

  @override
  void exitStructInitializer(StructInitializerContext ctx) {
    // TODO: implement exitStructInitializer
  }

  @override
  void exitStructOrUnionSpecifier(StructOrUnionSpecifierContext ctx) {
    // TODO: implement exitStructOrUnionSpecifier
  }

  @override
  void exitSwitchBlock(SwitchBlockContext ctx) {
    // TODO: implement exitSwitchBlock
  }

  @override
  void exitSwitchLabel(SwitchLabelContext ctx) {
    // TODO: implement exitSwitchLabel
  }

  @override
  void exitSwitchSection(SwitchSectionContext ctx) {
    // TODO: implement exitSwitchSection
  }

  @override
  void exitSwitchStatement(SwitchStatementContext ctx) {
    // TODO: implement exitSwitchStatement
  }

  @override
  void exitSynchronizedStatement(SynchronizedStatementContext ctx) {
    // TODO: implement exitSynchronizedStatement
  }

  @override
  void exitThrowStatement(ThrowStatementContext ctx) {
    // TODO: implement exitThrowStatement
  }

  @override
  void exitTopLevelDeclaration(TopLevelDeclarationContext ctx) {
    // TODO: implement exitTopLevelDeclaration
  }

  @override
  void exitTranslationUnit(TranslationUnitContext ctx) {
    // TODO: implement exitTranslationUnit
    var result = rootContext.parse();
    callback(result);
  }

  @override
  void exitTryBlock(TryBlockContext ctx) {
    // TODO: implement exitTryBlock
  }

  @override
  void exitTypeDeclarator(TypeDeclaratorContext ctx) {
    // TODO: implement exitTypeDeclarator
  }

  @override
  void exitTypeDeclaratorList(TypeDeclaratorListContext ctx) {
    // TODO: implement exitTypeDeclaratorList
  }

  @override
  void exitTypeName(TypeNameContext ctx) {
    // TODO: implement exitTypeName
  }

  @override
  void exitTypePrefix(TypePrefixContext ctx) {
    // TODO: implement exitTypePrefix
  }

  @override
  void exitTypeQualifier(TypeQualifierContext ctx) {
    // TODO: implement exitTypeQualifier
  }

  @override
  void exitTypeSpecifier(TypeSpecifierContext ctx) {
    // TODO: implement exitTypeSpecifier
  }

  @override
  void exitTypeSpecifierWithPrefixes(TypeSpecifierWithPrefixesContext ctx) {
    // TODO: implement exitTypeSpecifierWithPrefixes
  }

  @override
  void exitTypeVariableDeclarator(TypeVariableDeclaratorContext ctx) {
    // TODO: implement exitTypeVariableDeclarator
  }

  @override
  void exitTypeVariableDeclaratorOrName(
      TypeVariableDeclaratorOrNameContext ctx) {
    // TODO: implement exitTypeVariableDeclaratorOrName
  }

  @override
  void exitTypedefDeclaration(TypedefDeclarationContext ctx) {
    // TODO: implement exitTypedefDeclaration
  }

  @override
  void exitTypeofExpression(TypeofExpressionContext ctx) {
    // TODO: implement exitTypeofExpression
  }

  @override
  void exitUnaryExpression(UnaryExpressionContext ctx) {
    // TODO: implement exitUnaryExpression
  }

  @override
  void exitUnaryOperator(UnaryOperatorContext ctx) {
    // TODO: implement exitUnaryOperator
  }

  @override
  void exitVarDeclaration(VarDeclarationContext ctx) {
    // TODO: implement exitVarDeclaration
  }

  @override
  void exitVisibilitySection(VisibilitySectionContext ctx) {
    // TODO: implement exitVisibilitySection
  }

  @override
  void exitWhileStatement(WhileStatementContext ctx) {
    // TODO: implement exitWhileStatement
  }

  @override
  void visitErrorNode(ErrorNode node) {
    // TODO: implement visitErrorNode
  }

  @override
  void visitTerminal(TerminalNode node) {
    // TODO: implement visitTerminal
  }
}
