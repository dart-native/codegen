import 'package:antlr4/src/parser_rule_context.dart';
import 'package:antlr4/src/tree/src/tree.dart';
import 'package:dart_native_codegen/parser/java/Java9Listener.dart';
import 'package:dart_native_codegen/parser/java/Java9Parser.dart';

import '../common.dart';
import 'dn_java_context.dart';

class DNJavaParserListener extends Java9Listener {
  Callback callback;
  DNRootContext rootContext;
  DNContext currentContext;

  DNJavaParserListener(Callback callback) {
    this.callback = callback;
  }

  buildDart() {
    var dart = this.rootContext.parse();
    this.callback(dart);
  }

  @override
  void enterAdditionalBound(AdditionalBoundContext ctx) {
    // TODO: implement enterAdditionalBound
  }

  @override
  void enterAdditiveExpression(AdditiveExpressionContext ctx) {
    // TODO: implement enterAdditiveExpression
  }

  @override
  void enterAmbiguousName(AmbiguousNameContext ctx) {
    // TODO: implement enterAmbiguousName
  }

  @override
  void enterAndExpression(AndExpressionContext ctx) {
    // TODO: implement enterAndExpression
  }

  @override
  void enterAnnotation(AnnotationContext ctx) {
    // TODO: implement enterAnnotation
  }

  @override
  void enterAnnotationTypeBody(AnnotationTypeBodyContext ctx) {
    // TODO: implement enterAnnotationTypeBody
  }

  @override
  void enterAnnotationTypeDeclaration(AnnotationTypeDeclarationContext ctx) {
    // TODO: implement enterAnnotationTypeDeclaration
  }

  @override
  void enterAnnotationTypeElementDeclaration(
      AnnotationTypeElementDeclarationContext ctx) {
    // TODO: implement enterAnnotationTypeElementDeclaration
  }

  @override
  void enterAnnotationTypeElementModifier(
      AnnotationTypeElementModifierContext ctx) {
    // TODO: implement enterAnnotationTypeElementModifier
  }

  @override
  void enterAnnotationTypeMemberDeclaration(
      AnnotationTypeMemberDeclarationContext ctx) {
    // TODO: implement enterAnnotationTypeMemberDeclaration
  }

  @override
  void enterArgumentList(ArgumentListContext ctx) {
    // TODO: implement enterArgumentList
  }

  @override
  void enterArrayAccess(ArrayAccessContext ctx) {
    // TODO: implement enterArrayAccess
  }

  @override
  void enterArrayAccess_lf_primary(ArrayAccess_lf_primaryContext ctx) {
    // TODO: implement enterArrayAccess_lf_primary
  }

  @override
  void enterArrayAccess_lfno_primary(ArrayAccess_lfno_primaryContext ctx) {
    // TODO: implement enterArrayAccess_lfno_primary
  }

  @override
  void enterArrayCreationExpression(ArrayCreationExpressionContext ctx) {
    // TODO: implement enterArrayCreationExpression
  }

  @override
  void enterArrayInitializer(ArrayInitializerContext ctx) {
    // TODO: implement enterArrayInitializer
  }

  @override
  void enterArrayType(ArrayTypeContext ctx) {
    // TODO: implement enterArrayType
  }

  @override
  void enterAssertStatement(AssertStatementContext ctx) {
    // TODO: implement enterAssertStatement
  }

  @override
  void enterAssignment(AssignmentContext ctx) {
    // TODO: implement enterAssignment
  }

  @override
  void enterAssignmentExpression(AssignmentExpressionContext ctx) {
    // TODO: implement enterAssignmentExpression
  }

  @override
  void enterAssignmentOperator(AssignmentOperatorContext ctx) {
    // TODO: implement enterAssignmentOperator
  }

  @override
  void enterBasicForStatement(BasicForStatementContext ctx) {
    // TODO: implement enterBasicForStatement
  }

  @override
  void enterBasicForStatementNoShortIf(BasicForStatementNoShortIfContext ctx) {
    // TODO: implement enterBasicForStatementNoShortIf
  }

  @override
  void enterBlock(BlockContext ctx) {
    // TODO: implement enterBlock
  }

  @override
  void enterBlockStatement(BlockStatementContext ctx) {
    // TODO: implement enterBlockStatement
  }

  @override
  void enterBlockStatements(BlockStatementsContext ctx) {
    // TODO: implement enterBlockStatements
  }

  @override
  void enterBreakStatement(BreakStatementContext ctx) {
    // TODO: implement enterBreakStatement
  }

  @override
  void enterCastExpression(CastExpressionContext ctx) {
    // TODO: implement enterCastExpression
  }

  @override
  void enterCatchClause(CatchClauseContext ctx) {
    // TODO: implement enterCatchClause
  }

  @override
  void enterCatchFormalParameter(CatchFormalParameterContext ctx) {
    // TODO: implement enterCatchFormalParameter
  }

  @override
  void enterCatchType(CatchTypeContext ctx) {
    // TODO: implement enterCatchType
  }

  @override
  void enterCatches(CatchesContext ctx) {
    // TODO: implement enterCatches
  }

  @override
  void enterClassBody(ClassBodyContext ctx) {
    // TODO: implement enterClassBody
  }

  @override
  void enterClassBodyDeclaration(ClassBodyDeclarationContext ctx) {
    // TODO: implement enterClassBodyDeclaration
  }

  @override
  void enterClassDeclaration(ClassDeclarationContext ctx) {
    DNClassContext context = new DNClassContext(ctx);
    currentContext = context.enter(currentContext);
  }

  @override
  void enterClassInstanceCreationExpression(
      ClassInstanceCreationExpressionContext ctx) {
    // TODO: implement enterClassInstanceCreationExpression
  }

  @override
  void enterClassInstanceCreationExpression_lf_primary(
      ClassInstanceCreationExpression_lf_primaryContext ctx) {
    // TODO: implement enterClassInstanceCreationExpression_lf_primary
  }

  @override
  void enterClassInstanceCreationExpression_lfno_primary(
      ClassInstanceCreationExpression_lfno_primaryContext ctx) {
    // TODO: implement enterClassInstanceCreationExpression_lfno_primary
  }

  @override
  void enterClassLiteral(ClassLiteralContext ctx) {}

  @override
  void enterClassMemberDeclaration(ClassMemberDeclarationContext ctx) {
    // TODO: implement enterClassMemberDeclaration
  }

  @override
  void enterClassModifier(ClassModifierContext ctx) {
    // TODO: implement enterClassModifier
  }

  @override
  void enterClassOrInterfaceType(ClassOrInterfaceTypeContext ctx) {
    // TODO: implement enterClassOrInterfaceType
  }

  @override
  void enterClassType(ClassTypeContext ctx) {
    // TODO: implement enterClassType
  }

  @override
  void enterClassType_lf_classOrInterfaceType(
      ClassType_lf_classOrInterfaceTypeContext ctx) {
    // TODO: implement enterClassType_lf_classOrInterfaceType
  }

  @override
  void enterClassType_lfno_classOrInterfaceType(
      ClassType_lfno_classOrInterfaceTypeContext ctx) {
    // TODO: implement enterClassType_lfno_classOrInterfaceType
  }

  @override
  void enterCompilationUnit(CompilationUnitContext ctx) {
    this.rootContext = DNRootContext(ctx, false);
    this.currentContext = rootContext.enter(currentContext);
  }

  @override
  void enterConditionalAndExpression(ConditionalAndExpressionContext ctx) {
    // TODO: implement enterConditionalAndExpression
  }

  @override
  void enterConditionalExpression(ConditionalExpressionContext ctx) {
    // TODO: implement enterConditionalExpression
  }

  @override
  void enterConditionalOrExpression(ConditionalOrExpressionContext ctx) {
    // TODO: implement enterConditionalOrExpression
  }

  @override
  void enterConstantDeclaration(ConstantDeclarationContext ctx) {
    // TODO: implement enterConstantDeclaration
  }

  @override
  void enterConstantExpression(ConstantExpressionContext ctx) {
    // TODO: implement enterConstantExpression
  }

  @override
  void enterConstantModifier(ConstantModifierContext ctx) {
    // TODO: implement enterConstantModifier
  }

  @override
  void enterConstructorBody(ConstructorBodyContext ctx) {
    // TODO: implement enterConstructorBody
  }

  @override
  void enterConstructorDeclaration(ConstructorDeclarationContext ctx) {
    // TODO: implement enterConstructorDeclaration
  }

  @override
  void enterConstructorDeclarator(ConstructorDeclaratorContext ctx) {
    // TODO: implement enterConstructorDeclarator
  }

  @override
  void enterConstructorModifier(ConstructorModifierContext ctx) {
    // TODO: implement enterConstructorModifier
  }

  @override
  void enterContinueStatement(ContinueStatementContext ctx) {
    // TODO: implement enterContinueStatement
  }

  @override
  void enterDefaultValue(DefaultValueContext ctx) {
    // TODO: implement enterDefaultValue
  }

  @override
  void enterDimExpr(DimExprContext ctx) {
    // TODO: implement enterDimExpr
  }

  @override
  void enterDimExprs(DimExprsContext ctx) {
    // TODO: implement enterDimExprs
  }

  @override
  void enterDims(DimsContext ctx) {
    // TODO: implement enterDims
  }

  @override
  void enterDoStatement(DoStatementContext ctx) {
    // TODO: implement enterDoStatement
  }

  @override
  void enterElementValue(ElementValueContext ctx) {
    // TODO: implement enterElementValue
  }

  @override
  void enterElementValueArrayInitializer(
      ElementValueArrayInitializerContext ctx) {
    // TODO: implement enterElementValueArrayInitializer
  }

  @override
  void enterElementValueList(ElementValueListContext ctx) {
    // TODO: implement enterElementValueList
  }

  @override
  void enterElementValuePair(ElementValuePairContext ctx) {
    // TODO: implement enterElementValuePair
  }

  @override
  void enterElementValuePairList(ElementValuePairListContext ctx) {
    // TODO: implement enterElementValuePairList
  }

  @override
  void enterEmptyStatement(EmptyStatementContext ctx) {
    // TODO: implement enterEmptyStatement
  }

  @override
  void enterEnhancedForStatement(EnhancedForStatementContext ctx) {
    // TODO: implement enterEnhancedForStatement
  }

  @override
  void enterEnhancedForStatementNoShortIf(
      EnhancedForStatementNoShortIfContext ctx) {
    // TODO: implement enterEnhancedForStatementNoShortIf
  }

  @override
  void enterEnumBody(EnumBodyContext ctx) {
    // TODO: implement enterEnumBody
  }

  @override
  void enterEnumBodyDeclarations(EnumBodyDeclarationsContext ctx) {
    // TODO: implement enterEnumBodyDeclarations
  }

  @override
  void enterEnumConstant(EnumConstantContext ctx) {
    // TODO: implement enterEnumConstant
  }

  @override
  void enterEnumConstantList(EnumConstantListContext ctx) {
    // TODO: implement enterEnumConstantList
  }

  @override
  void enterEnumConstantModifier(EnumConstantModifierContext ctx) {
    // TODO: implement enterEnumConstantModifier
  }

  @override
  void enterEnumConstantName(EnumConstantNameContext ctx) {
    // TODO: implement enterEnumConstantName
  }

  @override
  void enterEnumDeclaration(EnumDeclarationContext ctx) {
    // TODO: implement enterEnumDeclaration
  }

  @override
  void enterEqualityExpression(EqualityExpressionContext ctx) {
    // TODO: implement enterEqualityExpression
  }

  @override
  void enterEveryRule(ParserRuleContext node) {
    // TODO: implement enterEveryRule
  }

  @override
  void enterExceptionType(ExceptionTypeContext ctx) {
    // TODO: implement enterExceptionType
  }

  @override
  void enterExceptionTypeList(ExceptionTypeListContext ctx) {
    // TODO: implement enterExceptionTypeList
  }

  @override
  void enterExclusiveOrExpression(ExclusiveOrExpressionContext ctx) {
    // TODO: implement enterExclusiveOrExpression
  }

  @override
  void enterExplicitConstructorInvocation(
      ExplicitConstructorInvocationContext ctx) {
    // TODO: implement enterExplicitConstructorInvocation
  }

  @override
  void enterExpression(ExpressionContext ctx) {
    // TODO: implement enterExpression
  }

  @override
  void enterExpressionName(ExpressionNameContext ctx) {
    // TODO: implement enterExpressionName
  }

  @override
  void enterExpressionStatement(ExpressionStatementContext ctx) {
    // TODO: implement enterExpressionStatement
  }

  @override
  void enterExtendsInterfaces(ExtendsInterfacesContext ctx) {
    // TODO: implement enterExtendsInterfaces
  }

  @override
  void enterFieldAccess(FieldAccessContext ctx) {
    // TODO: implement enterFieldAccess
  }

  @override
  void enterFieldAccess_lf_primary(FieldAccess_lf_primaryContext ctx) {
    // TODO: implement enterFieldAccess_lf_primary
  }

  @override
  void enterFieldAccess_lfno_primary(FieldAccess_lfno_primaryContext ctx) {
    // TODO: implement enterFieldAccess_lfno_primary
  }

  @override
  void enterFieldDeclaration(FieldDeclarationContext ctx) {
    DNFieldContext context = new DNFieldContext(ctx);
    currentContext = context.enter(currentContext);
  }

  @override
  void enterFieldModifier(FieldModifierContext ctx) {
    // TODO: implement enterFieldModifier
  }

  @override
  void enterFinally_(Finally_Context ctx) {
    // TODO: implement enterFinally_
  }

  @override
  void enterFloatingPointType(FloatingPointTypeContext ctx) {
    // TODO: implement enterFloatingPointType
  }

  @override
  void enterForInit(ForInitContext ctx) {
    // TODO: implement enterForInit
  }

  @override
  void enterForStatement(ForStatementContext ctx) {
    // TODO: implement enterForStatement
  }

  @override
  void enterForStatementNoShortIf(ForStatementNoShortIfContext ctx) {
    // TODO: implement enterForStatementNoShortIf
  }

  @override
  void enterForUpdate(ForUpdateContext ctx) {
    // TODO: implement enterForUpdate
  }

  @override
  void enterFormalParameter(FormalParameterContext ctx) {
    // TODO: implement enterFormalParameter
  }

  @override
  void enterFormalParameterList(FormalParameterListContext ctx) {
    // TODO: implement enterFormalParameterList
  }

  @override
  void enterFormalParameters(FormalParametersContext ctx) {
    // TODO: implement enterFormalParameters
  }

  @override
  void enterIdentifier(IdentifierContext ctx) {
    // TODO: implement enterIdentifier
  }

  @override
  void enterIfThenElseStatement(IfThenElseStatementContext ctx) {
    // TODO: implement enterIfThenElseStatement
  }

  @override
  void enterIfThenElseStatementNoShortIf(
      IfThenElseStatementNoShortIfContext ctx) {
    // TODO: implement enterIfThenElseStatementNoShortIf
  }

  @override
  void enterIfThenStatement(IfThenStatementContext ctx) {
    // TODO: implement enterIfThenStatement
  }

  @override
  void enterImportDeclaration(ImportDeclarationContext ctx) {
    rootContext.addImport(ctx);
  }

  @override
  void enterInclusiveOrExpression(InclusiveOrExpressionContext ctx) {
    // TODO: implement enterInclusiveOrExpression
  }

  @override
  void enterInferredFormalParameterList(
      InferredFormalParameterListContext ctx) {
    // TODO: implement enterInferredFormalParameterList
  }

  @override
  void enterInstanceInitializer(InstanceInitializerContext ctx) {
    // TODO: implement enterInstanceInitializer
  }

  @override
  void enterIntegralType(IntegralTypeContext ctx) {
    // TODO: implement enterIntegralType
  }

  @override
  void enterInterfaceBody(InterfaceBodyContext ctx) {
    // TODO: implement enterInterfaceBody
  }

  @override
  void enterInterfaceDeclaration(InterfaceDeclarationContext ctx) {
    // TODO: implement enterInterfaceDeclaration
  }

  @override
  void enterInterfaceMemberDeclaration(InterfaceMemberDeclarationContext ctx) {
    // TODO: implement enterInterfaceMemberDeclaration
  }

  @override
  void enterInterfaceMethodDeclaration(InterfaceMethodDeclarationContext ctx) {
    // TODO: implement enterInterfaceMethodDeclaration
  }

  @override
  void enterInterfaceMethodModifier(InterfaceMethodModifierContext ctx) {
    // TODO: implement enterInterfaceMethodModifier
  }

  @override
  void enterInterfaceModifier(InterfaceModifierContext ctx) {
    // TODO: implement enterInterfaceModifier
  }

  @override
  void enterInterfaceType(InterfaceTypeContext ctx) {
    // TODO: implement enterInterfaceType
  }

  @override
  void enterInterfaceTypeList(InterfaceTypeListContext ctx) {
    // TODO: implement enterInterfaceTypeList
  }

  @override
  void enterInterfaceType_lf_classOrInterfaceType(
      InterfaceType_lf_classOrInterfaceTypeContext ctx) {
    // TODO: implement enterInterfaceType_lf_classOrInterfaceType
  }

  @override
  void enterInterfaceType_lfno_classOrInterfaceType(
      InterfaceType_lfno_classOrInterfaceTypeContext ctx) {
    // TODO: implement enterInterfaceType_lfno_classOrInterfaceType
  }

  @override
  void enterLabeledStatement(LabeledStatementContext ctx) {
    // TODO: implement enterLabeledStatement
  }

  @override
  void enterLabeledStatementNoShortIf(LabeledStatementNoShortIfContext ctx) {
    // TODO: implement enterLabeledStatementNoShortIf
  }

  @override
  void enterLambdaBody(LambdaBodyContext ctx) {
    // TODO: implement enterLambdaBody
  }

  @override
  void enterLambdaExpression(LambdaExpressionContext ctx) {
    // TODO: implement enterLambdaExpression
  }

  @override
  void enterLambdaParameters(LambdaParametersContext ctx) {
    // TODO: implement enterLambdaParameters
  }

  @override
  void enterLastFormalParameter(LastFormalParameterContext ctx) {
    // TODO: implement enterLastFormalParameter
  }

  @override
  void enterLeftHandSide(LeftHandSideContext ctx) {
    // TODO: implement enterLeftHandSide
  }

  @override
  void enterLiteral(LiteralContext ctx) {
    // TODO: implement enterLiteral
  }

  @override
  void enterLocalVariableDeclaration(LocalVariableDeclarationContext ctx) {
    // TODO: implement enterLocalVariableDeclaration
  }

  @override
  void enterLocalVariableDeclarationStatement(
      LocalVariableDeclarationStatementContext ctx) {
    // TODO: implement enterLocalVariableDeclarationStatement
  }

  @override
  void enterMarkerAnnotation(MarkerAnnotationContext ctx) {
    // TODO: implement enterMarkerAnnotation
  }

  @override
  void enterMethodBody(MethodBodyContext ctx) {
    // TODO: implement enterMethodBody
  }

  @override
  void enterMethodDeclaration(MethodDeclarationContext ctx) {
    // TODO: implement enterMethodDeclaration
    DNMethodContext methodContext = new DNMethodContext(ctx);
    currentContext = methodContext.enter(currentContext);
  }

  @override
  void enterMethodDeclarator(MethodDeclaratorContext ctx) {
    // TODO: implement enterMethodDeclarator
  }

  @override
  void enterMethodHeader(MethodHeaderContext ctx) {
    // TODO: implement enterMethodHeader
  }

  @override
  void enterMethodInvocation(MethodInvocationContext ctx) {
    // TODO: implement enterMethodInvocation
  }

  @override
  void enterMethodInvocation_lf_primary(
      MethodInvocation_lf_primaryContext ctx) {
    // TODO: implement enterMethodInvocation_lf_primary
  }

  @override
  void enterMethodInvocation_lfno_primary(
      MethodInvocation_lfno_primaryContext ctx) {
    // TODO: implement enterMethodInvocation_lfno_primary
  }

  @override
  void enterMethodModifier(MethodModifierContext ctx) {
    // TODO: implement enterMethodModifier
  }

  @override
  void enterMethodName(MethodNameContext ctx) {
    // TODO: implement enterMethodName
  }

  @override
  void enterMethodReference(MethodReferenceContext ctx) {
    // TODO: implement enterMethodReference
  }

  @override
  void enterMethodReference_lf_primary(MethodReference_lf_primaryContext ctx) {
    // TODO: implement enterMethodReference_lf_primary
  }

  @override
  void enterMethodReference_lfno_primary(
      MethodReference_lfno_primaryContext ctx) {
    // TODO: implement enterMethodReference_lfno_primary
  }

  @override
  void enterModularCompilation(ModularCompilationContext ctx) {
    // TODO: implement enterModularCompilation
  }

  @override
  void enterModuleDeclaration(ModuleDeclarationContext ctx) {
    // TODO: implement enterModuleDeclaration
  }

  @override
  void enterModuleDirective(ModuleDirectiveContext ctx) {
    // TODO: implement enterModuleDirective
  }

  @override
  void enterModuleName(ModuleNameContext ctx) {
    // TODO: implement enterModuleName
  }

  @override
  void enterMultiplicativeExpression(MultiplicativeExpressionContext ctx) {
    // TODO: implement enterMultiplicativeExpression
  }

  @override
  void enterNormalAnnotation(NormalAnnotationContext ctx) {
    // TODO: implement enterNormalAnnotation
  }

  @override
  void enterNormalClassDeclaration(NormalClassDeclarationContext ctx) {
    // TODO: implement enterNormalClassDeclaration
  }

  @override
  void enterNormalInterfaceDeclaration(NormalInterfaceDeclarationContext ctx) {
    // TODO: implement enterNormalInterfaceDeclaration
  }

  @override
  void enterNumericType(NumericTypeContext ctx) {
    // TODO: implement enterNumericType
  }

  @override
  void enterOrdinaryCompilation(OrdinaryCompilationContext ctx) {
    // TODO: implement enterOrdinaryCompilation
  }

  @override
  void enterPackageDeclaration(PackageDeclarationContext ctx) {
    // TODO: implement enterPackageDeclaration
    rootContext.setPackageName(ctx.packageName().text);
  }

  @override
  void enterPackageModifier(PackageModifierContext ctx) {
    // TODO: implement enterPackageModifier
  }

  @override
  void enterPackageName(PackageNameContext ctx) {
    // TODO: implement enterPackageName
  }

  @override
  void enterPackageOrTypeName(PackageOrTypeNameContext ctx) {
    // TODO: implement enterPackageOrTypeName
  }

  @override
  void enterPostDecrementExpression(PostDecrementExpressionContext ctx) {
    // TODO: implement enterPostDecrementExpression
  }

  @override
  void enterPostDecrementExpression_lf_postfixExpression(
      PostDecrementExpression_lf_postfixExpressionContext ctx) {
    // TODO: implement enterPostDecrementExpression_lf_postfixExpression
  }

  @override
  void enterPostIncrementExpression(PostIncrementExpressionContext ctx) {
    // TODO: implement enterPostIncrementExpression
  }

  @override
  void enterPostIncrementExpression_lf_postfixExpression(
      PostIncrementExpression_lf_postfixExpressionContext ctx) {
    // TODO: implement enterPostIncrementExpression_lf_postfixExpression
  }

  @override
  void enterPostfixExpression(PostfixExpressionContext ctx) {
    // TODO: implement enterPostfixExpression
  }

  @override
  void enterPreDecrementExpression(PreDecrementExpressionContext ctx) {
    // TODO: implement enterPreDecrementExpression
  }

  @override
  void enterPreIncrementExpression(PreIncrementExpressionContext ctx) {
    // TODO: implement enterPreIncrementExpression
  }

  @override
  void enterPrimary(PrimaryContext ctx) {
    // TODO: implement enterPrimary
  }

  @override
  void enterPrimaryNoNewArray(PrimaryNoNewArrayContext ctx) {
    // TODO: implement enterPrimaryNoNewArray
  }

  @override
  void enterPrimaryNoNewArray_lf_arrayAccess(
      PrimaryNoNewArray_lf_arrayAccessContext ctx) {
    // TODO: implement enterPrimaryNoNewArray_lf_arrayAccess
  }

  @override
  void enterPrimaryNoNewArray_lf_primary(
      PrimaryNoNewArray_lf_primaryContext ctx) {
    // TODO: implement enterPrimaryNoNewArray_lf_primary
  }

  @override
  void enterPrimaryNoNewArray_lf_primary_lf_arrayAccess_lf_primary(
      PrimaryNoNewArray_lf_primary_lf_arrayAccess_lf_primaryContext ctx) {
    // TODO: implement enterPrimaryNoNewArray_lf_primary_lf_arrayAccess_lf_primary
  }

  @override
  void enterPrimaryNoNewArray_lf_primary_lfno_arrayAccess_lf_primary(
      PrimaryNoNewArray_lf_primary_lfno_arrayAccess_lf_primaryContext ctx) {
    // TODO: implement enterPrimaryNoNewArray_lf_primary_lfno_arrayAccess_lf_primary
  }

  @override
  void enterPrimaryNoNewArray_lfno_arrayAccess(
      PrimaryNoNewArray_lfno_arrayAccessContext ctx) {
    // TODO: implement enterPrimaryNoNewArray_lfno_arrayAccess
  }

  @override
  void enterPrimaryNoNewArray_lfno_primary(
      PrimaryNoNewArray_lfno_primaryContext ctx) {
    // TODO: implement enterPrimaryNoNewArray_lfno_primary
  }

  @override
  void enterPrimaryNoNewArray_lfno_primary_lf_arrayAccess_lfno_primary(
      PrimaryNoNewArray_lfno_primary_lf_arrayAccess_lfno_primaryContext ctx) {
    // TODO: implement enterPrimaryNoNewArray_lfno_primary_lf_arrayAccess_lfno_primary
  }

  @override
  void enterPrimaryNoNewArray_lfno_primary_lfno_arrayAccess_lfno_primary(
      PrimaryNoNewArray_lfno_primary_lfno_arrayAccess_lfno_primaryContext ctx) {
    // TODO: implement enterPrimaryNoNewArray_lfno_primary_lfno_arrayAccess_lfno_primary
  }

  @override
  void enterPrimitiveType(PrimitiveTypeContext ctx) {
    // TODO: implement enterPrimitiveType
  }

  @override
  void enterReceiverParameter(ReceiverParameterContext ctx) {
    // TODO: implement enterReceiverParameter
  }

  @override
  void enterReferenceType(ReferenceTypeContext ctx) {
    // TODO: implement enterReferenceType
  }

  @override
  void enterRelationalExpression(RelationalExpressionContext ctx) {
    // TODO: implement enterRelationalExpression
  }

  @override
  void enterRequiresModifier(RequiresModifierContext ctx) {
    // TODO: implement enterRequiresModifier
  }

  @override
  void enterResource(ResourceContext ctx) {
    // TODO: implement enterResource
  }

  @override
  void enterResourceList(ResourceListContext ctx) {
    // TODO: implement enterResourceList
  }

  @override
  void enterResourceSpecification(ResourceSpecificationContext ctx) {
    // TODO: implement enterResourceSpecification
  }

  @override
  void enterResult(ResultContext ctx) {
    // TODO: implement enterResult
  }

  @override
  void enterReturnStatement(ReturnStatementContext ctx) {
    // TODO: implement enterReturnStatement
  }

  @override
  void enterShiftExpression(ShiftExpressionContext ctx) {
    // TODO: implement enterShiftExpression
  }

  @override
  void enterSimpleTypeName(SimpleTypeNameContext ctx) {
    // TODO: implement enterSimpleTypeName
  }

  @override
  void enterSingleElementAnnotation(SingleElementAnnotationContext ctx) {
    // TODO: implement enterSingleElementAnnotation
  }

  @override
  void enterSingleStaticImportDeclaration(
      SingleStaticImportDeclarationContext ctx) {
    // TODO: implement enterSingleStaticImportDeclaration
  }

  @override
  void enterSingleTypeImportDeclaration(
      SingleTypeImportDeclarationContext ctx) {
    // TODO: implement enterSingleTypeImportDeclaration
  }

  @override
  void enterStatement(StatementContext ctx) {
    // TODO: implement enterStatement
  }

  @override
  void enterStatementExpression(StatementExpressionContext ctx) {
    // TODO: implement enterStatementExpression
  }

  @override
  void enterStatementExpressionList(StatementExpressionListContext ctx) {
    // TODO: implement enterStatementExpressionList
  }

  @override
  void enterStatementNoShortIf(StatementNoShortIfContext ctx) {
    // TODO: implement enterStatementNoShortIf
  }

  @override
  void enterStatementWithoutTrailingSubstatement(
      StatementWithoutTrailingSubstatementContext ctx) {
    // TODO: implement enterStatementWithoutTrailingSubstatement
  }

  @override
  void enterStaticImportOnDemandDeclaration(
      StaticImportOnDemandDeclarationContext ctx) {
    // TODO: implement enterStaticImportOnDemandDeclaration
  }

  @override
  void enterStaticInitializer(StaticInitializerContext ctx) {
    // TODO: implement enterStaticInitializer
  }

  @override
  void enterSuperclass(SuperclassContext ctx) {
    // TODO: implement enterSuperclass
  }

  @override
  void enterSuperinterfaces(SuperinterfacesContext ctx) {
    // TODO: implement enterSuperinterfaces
  }

  @override
  void enterSwitchBlock(SwitchBlockContext ctx) {
    // TODO: implement enterSwitchBlock
  }

  @override
  void enterSwitchBlockStatementGroup(SwitchBlockStatementGroupContext ctx) {
    // TODO: implement enterSwitchBlockStatementGroup
  }

  @override
  void enterSwitchLabel(SwitchLabelContext ctx) {
    // TODO: implement enterSwitchLabel
  }

  @override
  void enterSwitchLabels(SwitchLabelsContext ctx) {
    // TODO: implement enterSwitchLabels
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
  void enterThrows_(Throws_Context ctx) {
    // TODO: implement enterThrows_
  }

  @override
  void enterTryStatement(TryStatementContext ctx) {
    // TODO: implement enterTryStatement
  }

  @override
  void enterTryWithResourcesStatement(TryWithResourcesStatementContext ctx) {
    // TODO: implement enterTryWithResourcesStatement
  }

  @override
  void enterTypeArgument(TypeArgumentContext ctx) {
    // TODO: implement enterTypeArgument
  }

  @override
  void enterTypeArgumentList(TypeArgumentListContext ctx) {
    // TODO: implement enterTypeArgumentList
  }

  @override
  void enterTypeArguments(TypeArgumentsContext ctx) {
    // TODO: implement enterTypeArguments
  }

  @override
  void enterTypeArgumentsOrDiamond(TypeArgumentsOrDiamondContext ctx) {
    // TODO: implement enterTypeArgumentsOrDiamond
  }

  @override
  void enterTypeBound(TypeBoundContext ctx) {
    // TODO: implement enterTypeBound
  }

  @override
  void enterTypeDeclaration(TypeDeclarationContext ctx) {
    // TODO: implement enterTypeDeclaration
  }

  @override
  void enterTypeImportOnDemandDeclaration(
      TypeImportOnDemandDeclarationContext ctx) {
    // TODO: implement enterTypeImportOnDemandDeclaration
  }

  @override
  void enterTypeName(TypeNameContext ctx) {
    // TODO: implement enterTypeName
  }

  @override
  void enterTypeParameter(TypeParameterContext ctx) {
    // TODO: implement enterTypeParameter
  }

  @override
  void enterTypeParameterList(TypeParameterListContext ctx) {
    // TODO: implement enterTypeParameterList
  }

  @override
  void enterTypeParameterModifier(TypeParameterModifierContext ctx) {
    // TODO: implement enterTypeParameterModifier
  }

  @override
  void enterTypeParameters(TypeParametersContext ctx) {
    // TODO: implement enterTypeParameters
  }

  @override
  void enterTypeVariable(TypeVariableContext ctx) {
    // TODO: implement enterTypeVariable
  }

  @override
  void enterUnannArrayType(UnannArrayTypeContext ctx) {
    // TODO: implement enterUnannArrayType
  }

  @override
  void enterUnannClassOrInterfaceType(UnannClassOrInterfaceTypeContext ctx) {
    // TODO: implement enterUnannClassOrInterfaceType
  }

  @override
  void enterUnannClassType(UnannClassTypeContext ctx) {
    // TODO: implement enterUnannClassType
  }

  @override
  void enterUnannClassType_lf_unannClassOrInterfaceType(
      UnannClassType_lf_unannClassOrInterfaceTypeContext ctx) {
    // TODO: implement enterUnannClassType_lf_unannClassOrInterfaceType
  }

  @override
  void enterUnannClassType_lfno_unannClassOrInterfaceType(
      UnannClassType_lfno_unannClassOrInterfaceTypeContext ctx) {
    // TODO: implement enterUnannClassType_lfno_unannClassOrInterfaceType
  }

  @override
  void enterUnannInterfaceType(UnannInterfaceTypeContext ctx) {
    // TODO: implement enterUnannInterfaceType
  }

  @override
  void enterUnannInterfaceType_lf_unannClassOrInterfaceType(
      UnannInterfaceType_lf_unannClassOrInterfaceTypeContext ctx) {
    // TODO: implement enterUnannInterfaceType_lf_unannClassOrInterfaceType
  }

  @override
  void enterUnannInterfaceType_lfno_unannClassOrInterfaceType(
      UnannInterfaceType_lfno_unannClassOrInterfaceTypeContext ctx) {
    // TODO: implement enterUnannInterfaceType_lfno_unannClassOrInterfaceType
  }

  @override
  void enterUnannPrimitiveType(UnannPrimitiveTypeContext ctx) {
    // TODO: implement enterUnannPrimitiveType
  }

  @override
  void enterUnannReferenceType(UnannReferenceTypeContext ctx) {
    // TODO: implement enterUnannReferenceType
  }

  @override
  void enterUnannType(UnannTypeContext ctx) {
    // TODO: implement enterUnannType
  }

  @override
  void enterUnannTypeVariable(UnannTypeVariableContext ctx) {
    // TODO: implement enterUnannTypeVariable
  }

  @override
  void enterUnaryExpression(UnaryExpressionContext ctx) {
    // TODO: implement enterUnaryExpression
  }

  @override
  void enterUnaryExpressionNotPlusMinus(
      UnaryExpressionNotPlusMinusContext ctx) {
    // TODO: implement enterUnaryExpressionNotPlusMinus
  }

  @override
  void enterVariableAccess(VariableAccessContext ctx) {
    // TODO: implement enterVariableAccess
  }

  @override
  void enterVariableDeclarator(VariableDeclaratorContext ctx) {
    // TODO: implement enterVariableDeclarator
  }

  @override
  void enterVariableDeclaratorId(VariableDeclaratorIdContext ctx) {
    // TODO: implement enterVariableDeclaratorId
  }

  @override
  void enterVariableDeclaratorList(VariableDeclaratorListContext ctx) {
    // TODO: implement enterVariableDeclaratorList
  }

  @override
  void enterVariableInitializer(VariableInitializerContext ctx) {
    // TODO: implement enterVariableInitializer
  }

  @override
  void enterVariableInitializerList(VariableInitializerListContext ctx) {
    // TODO: implement enterVariableInitializerList
  }

  @override
  void enterVariableModifier(VariableModifierContext ctx) {
    // TODO: implement enterVariableModifier
  }

  @override
  void enterWhileStatement(WhileStatementContext ctx) {
    // TODO: implement enterWhileStatement
  }

  @override
  void enterWhileStatementNoShortIf(WhileStatementNoShortIfContext ctx) {
    // TODO: implement enterWhileStatementNoShortIf
  }

  @override
  void enterWildcard(WildcardContext ctx) {
    // TODO: implement enterWildcard
  }

  @override
  void enterWildcardBounds(WildcardBoundsContext ctx) {
    // TODO: implement enterWildcardBounds
  }

  @override
  void exitAdditionalBound(AdditionalBoundContext ctx) {
    // TODO: implement exitAdditionalBound
  }

  @override
  void exitAdditiveExpression(AdditiveExpressionContext ctx) {
    // TODO: implement exitAdditiveExpression
  }

  @override
  void exitAmbiguousName(AmbiguousNameContext ctx) {
    // TODO: implement exitAmbiguousName
  }

  @override
  void exitAndExpression(AndExpressionContext ctx) {
    // TODO: implement exitAndExpression
  }

  @override
  void exitAnnotation(AnnotationContext ctx) {
    // TODO: implement exitAnnotation
  }

  @override
  void exitAnnotationTypeBody(AnnotationTypeBodyContext ctx) {
    // TODO: implement exitAnnotationTypeBody
  }

  @override
  void exitAnnotationTypeDeclaration(AnnotationTypeDeclarationContext ctx) {
    // TODO: implement exitAnnotationTypeDeclaration
  }

  @override
  void exitAnnotationTypeElementDeclaration(
      AnnotationTypeElementDeclarationContext ctx) {
    // TODO: implement exitAnnotationTypeElementDeclaration
  }

  @override
  void exitAnnotationTypeElementModifier(
      AnnotationTypeElementModifierContext ctx) {
    // TODO: implement exitAnnotationTypeElementModifier
  }

  @override
  void exitAnnotationTypeMemberDeclaration(
      AnnotationTypeMemberDeclarationContext ctx) {
    // TODO: implement exitAnnotationTypeMemberDeclaration
  }

  @override
  void exitArgumentList(ArgumentListContext ctx) {
    // TODO: implement exitArgumentList
  }

  @override
  void exitArrayAccess(ArrayAccessContext ctx) {
    // TODO: implement exitArrayAccess
  }

  @override
  void exitArrayAccess_lf_primary(ArrayAccess_lf_primaryContext ctx) {
    // TODO: implement exitArrayAccess_lf_primary
  }

  @override
  void exitArrayAccess_lfno_primary(ArrayAccess_lfno_primaryContext ctx) {
    // TODO: implement exitArrayAccess_lfno_primary
  }

  @override
  void exitArrayCreationExpression(ArrayCreationExpressionContext ctx) {
    // TODO: implement exitArrayCreationExpression
  }

  @override
  void exitArrayInitializer(ArrayInitializerContext ctx) {
    // TODO: implement exitArrayInitializer
  }

  @override
  void exitArrayType(ArrayTypeContext ctx) {
    // TODO: implement exitArrayType
  }

  @override
  void exitAssertStatement(AssertStatementContext ctx) {
    // TODO: implement exitAssertStatement
  }

  @override
  void exitAssignment(AssignmentContext ctx) {
    // TODO: implement exitAssignment
  }

  @override
  void exitAssignmentExpression(AssignmentExpressionContext ctx) {
    // TODO: implement exitAssignmentExpression
  }

  @override
  void exitAssignmentOperator(AssignmentOperatorContext ctx) {
    // TODO: implement exitAssignmentOperator
  }

  @override
  void exitBasicForStatement(BasicForStatementContext ctx) {
    // TODO: implement exitBasicForStatement
  }

  @override
  void exitBasicForStatementNoShortIf(BasicForStatementNoShortIfContext ctx) {
    // TODO: implement exitBasicForStatementNoShortIf
  }

  @override
  void exitBlock(BlockContext ctx) {
    // TODO: implement exitBlock
  }

  @override
  void exitBlockStatement(BlockStatementContext ctx) {
    // TODO: implement exitBlockStatement
  }

  @override
  void exitBlockStatements(BlockStatementsContext ctx) {
    // TODO: implement exitBlockStatements
  }

  @override
  void exitBreakStatement(BreakStatementContext ctx) {
    // TODO: implement exitBreakStatement
  }

  @override
  void exitCastExpression(CastExpressionContext ctx) {
    // TODO: implement exitCastExpression
  }

  @override
  void exitCatchClause(CatchClauseContext ctx) {
    // TODO: implement exitCatchClause
  }

  @override
  void exitCatchFormalParameter(CatchFormalParameterContext ctx) {
    // TODO: implement exitCatchFormalParameter
  }

  @override
  void exitCatchType(CatchTypeContext ctx) {
    // TODO: implement exitCatchType
  }

  @override
  void exitCatches(CatchesContext ctx) {
    // TODO: implement exitCatches
  }

  @override
  void exitClassBody(ClassBodyContext ctx) {
    // TODO: implement exitClassBody
  }

  @override
  void exitClassBodyDeclaration(ClassBodyDeclarationContext ctx) {
    // TODO: implement exitClassBodyDeclaration
  }

  @override
  void exitClassDeclaration(ClassDeclarationContext ctx) {
    this.currentContext = currentContext.exit();
  }

  @override
  void exitClassInstanceCreationExpression(
      ClassInstanceCreationExpressionContext ctx) {
    // TODO: implement exitClassInstanceCreationExpression
  }

  @override
  void exitClassInstanceCreationExpression_lf_primary(
      ClassInstanceCreationExpression_lf_primaryContext ctx) {
    // TODO: implement exitClassInstanceCreationExpression_lf_primary
  }

  @override
  void exitClassInstanceCreationExpression_lfno_primary(
      ClassInstanceCreationExpression_lfno_primaryContext ctx) {
    // TODO: implement exitClassInstanceCreationExpression_lfno_primary
  }

  @override
  void exitClassLiteral(ClassLiteralContext ctx) {
    // TODO: implement exitClassLiteral
  }

  @override
  void exitClassMemberDeclaration(ClassMemberDeclarationContext ctx) {
    // TODO: implement exitClassMemberDeclaration
  }

  @override
  void exitClassModifier(ClassModifierContext ctx) {
    // TODO: implement exitClassModifier
  }

  @override
  void exitClassOrInterfaceType(ClassOrInterfaceTypeContext ctx) {
    // TODO: implement exitClassOrInterfaceType
  }

  @override
  void exitClassType(ClassTypeContext ctx) {
    // TODO: implement exitClassType
  }

  @override
  void exitClassType_lf_classOrInterfaceType(
      ClassType_lf_classOrInterfaceTypeContext ctx) {
    // TODO: implement exitClassType_lf_classOrInterfaceType
  }

  @override
  void exitClassType_lfno_classOrInterfaceType(
      ClassType_lfno_classOrInterfaceTypeContext ctx) {
    // TODO: implement exitClassType_lfno_classOrInterfaceType
  }

  @override
  void exitCompilationUnit(CompilationUnitContext ctx) {
    // TODO: implement exitCompilationUnit
    buildDart();
  }

  @override
  void exitConditionalAndExpression(ConditionalAndExpressionContext ctx) {
    // TODO: implement exitConditionalAndExpression
  }

  @override
  void exitConditionalExpression(ConditionalExpressionContext ctx) {
    // TODO: implement exitConditionalExpression
  }

  @override
  void exitConditionalOrExpression(ConditionalOrExpressionContext ctx) {
    // TODO: implement exitConditionalOrExpression
  }

  @override
  void exitConstantDeclaration(ConstantDeclarationContext ctx) {
    // TODO: implement exitConstantDeclaration
  }

  @override
  void exitConstantExpression(ConstantExpressionContext ctx) {
    // TODO: implement exitConstantExpression
  }

  @override
  void exitConstantModifier(ConstantModifierContext ctx) {
    // TODO: implement exitConstantModifier
  }

  @override
  void exitConstructorBody(ConstructorBodyContext ctx) {
    // TODO: implement exitConstructorBody
  }

  @override
  void exitConstructorDeclaration(ConstructorDeclarationContext ctx) {
    // TODO: implement exitConstructorDeclaration
  }

  @override
  void exitConstructorDeclarator(ConstructorDeclaratorContext ctx) {
    // TODO: implement exitConstructorDeclarator
  }

  @override
  void exitConstructorModifier(ConstructorModifierContext ctx) {
    // TODO: implement exitConstructorModifier
  }

  @override
  void exitContinueStatement(ContinueStatementContext ctx) {
    // TODO: implement exitContinueStatement
  }

  @override
  void exitDefaultValue(DefaultValueContext ctx) {
    // TODO: implement exitDefaultValue
  }

  @override
  void exitDimExpr(DimExprContext ctx) {
    // TODO: implement exitDimExpr
  }

  @override
  void exitDimExprs(DimExprsContext ctx) {
    // TODO: implement exitDimExprs
  }

  @override
  void exitDims(DimsContext ctx) {
    // TODO: implement exitDims
  }

  @override
  void exitDoStatement(DoStatementContext ctx) {
    // TODO: implement exitDoStatement
  }

  @override
  void exitElementValue(ElementValueContext ctx) {
    // TODO: implement exitElementValue
  }

  @override
  void exitElementValueArrayInitializer(
      ElementValueArrayInitializerContext ctx) {
    // TODO: implement exitElementValueArrayInitializer
  }

  @override
  void exitElementValueList(ElementValueListContext ctx) {
    // TODO: implement exitElementValueList
  }

  @override
  void exitElementValuePair(ElementValuePairContext ctx) {
    // TODO: implement exitElementValuePair
  }

  @override
  void exitElementValuePairList(ElementValuePairListContext ctx) {
    // TODO: implement exitElementValuePairList
  }

  @override
  void exitEmptyStatement(EmptyStatementContext ctx) {
    // TODO: implement exitEmptyStatement
  }

  @override
  void exitEnhancedForStatement(EnhancedForStatementContext ctx) {
    // TODO: implement exitEnhancedForStatement
  }

  @override
  void exitEnhancedForStatementNoShortIf(
      EnhancedForStatementNoShortIfContext ctx) {
    // TODO: implement exitEnhancedForStatementNoShortIf
  }

  @override
  void exitEnumBody(EnumBodyContext ctx) {
    // TODO: implement exitEnumBody
  }

  @override
  void exitEnumBodyDeclarations(EnumBodyDeclarationsContext ctx) {
    // TODO: implement exitEnumBodyDeclarations
  }

  @override
  void exitEnumConstant(EnumConstantContext ctx) {
    // TODO: implement exitEnumConstant
  }

  @override
  void exitEnumConstantList(EnumConstantListContext ctx) {
    // TODO: implement exitEnumConstantList
  }

  @override
  void exitEnumConstantModifier(EnumConstantModifierContext ctx) {
    // TODO: implement exitEnumConstantModifier
  }

  @override
  void exitEnumConstantName(EnumConstantNameContext ctx) {
    // TODO: implement exitEnumConstantName
  }

  @override
  void exitEnumDeclaration(EnumDeclarationContext ctx) {
    // TODO: implement exitEnumDeclaration
  }

  @override
  void exitEqualityExpression(EqualityExpressionContext ctx) {
    // TODO: implement exitEqualityExpression
  }

  @override
  void exitEveryRule(ParserRuleContext node) {
    // TODO: implement exitEveryRule
  }

  @override
  void exitExceptionType(ExceptionTypeContext ctx) {
    // TODO: implement exitExceptionType
  }

  @override
  void exitExceptionTypeList(ExceptionTypeListContext ctx) {
    // TODO: implement exitExceptionTypeList
  }

  @override
  void exitExclusiveOrExpression(ExclusiveOrExpressionContext ctx) {
    // TODO: implement exitExclusiveOrExpression
  }

  @override
  void exitExplicitConstructorInvocation(
      ExplicitConstructorInvocationContext ctx) {
    // TODO: implement exitExplicitConstructorInvocation
  }

  @override
  void exitExpression(ExpressionContext ctx) {
    // TODO: implement exitExpression
  }

  @override
  void exitExpressionName(ExpressionNameContext ctx) {
    // TODO: implement exitExpressionName
  }

  @override
  void exitExpressionStatement(ExpressionStatementContext ctx) {
    // TODO: implement exitExpressionStatement
  }

  @override
  void exitExtendsInterfaces(ExtendsInterfacesContext ctx) {
    // TODO: implement exitExtendsInterfaces
  }

  @override
  void exitFieldAccess(FieldAccessContext ctx) {
    // TODO: implement exitFieldAccess
  }

  @override
  void exitFieldAccess_lf_primary(FieldAccess_lf_primaryContext ctx) {
    // TODO: implement exitFieldAccess_lf_primary
  }

  @override
  void exitFieldAccess_lfno_primary(FieldAccess_lfno_primaryContext ctx) {
    // TODO: implement exitFieldAccess_lfno_primary
  }

  @override
  void exitFieldDeclaration(FieldDeclarationContext ctx) {
    currentContext = currentContext.exit();
  }

  @override
  void exitFieldModifier(FieldModifierContext ctx) {
    // TODO: implement exitFieldModifier
  }

  @override
  void exitFinally_(Finally_Context ctx) {
    // TODO: implement exitFinally_
  }

  @override
  void exitFloatingPointType(FloatingPointTypeContext ctx) {
    // TODO: implement exitFloatingPointType
  }

  @override
  void exitForInit(ForInitContext ctx) {
    // TODO: implement exitForInit
  }

  @override
  void exitForStatement(ForStatementContext ctx) {
    // TODO: implement exitForStatement
  }

  @override
  void exitForStatementNoShortIf(ForStatementNoShortIfContext ctx) {
    // TODO: implement exitForStatementNoShortIf
  }

  @override
  void exitForUpdate(ForUpdateContext ctx) {
    // TODO: implement exitForUpdate
  }

  @override
  void exitFormalParameter(FormalParameterContext ctx) {
    // TODO: implement exitFormalParameter
  }

  @override
  void exitFormalParameterList(FormalParameterListContext ctx) {
    // TODO: implement exitFormalParameterList
  }

  @override
  void exitFormalParameters(FormalParametersContext ctx) {
    // TODO: implement exitFormalParameters
  }

  @override
  void exitIdentifier(IdentifierContext ctx) {
    // TODO: implement exitIdentifier
  }

  @override
  void exitIfThenElseStatement(IfThenElseStatementContext ctx) {
    // TODO: implement exitIfThenElseStatement
  }

  @override
  void exitIfThenElseStatementNoShortIf(
      IfThenElseStatementNoShortIfContext ctx) {
    // TODO: implement exitIfThenElseStatementNoShortIf
  }

  @override
  void exitIfThenStatement(IfThenStatementContext ctx) {
    // TODO: implement exitIfThenStatement
  }

  @override
  void exitImportDeclaration(ImportDeclarationContext ctx) {
    // TODO: implement exitImportDeclaration
  }

  @override
  void exitInclusiveOrExpression(InclusiveOrExpressionContext ctx) {
    // TODO: implement exitInclusiveOrExpression
  }

  @override
  void exitInferredFormalParameterList(InferredFormalParameterListContext ctx) {
    // TODO: implement exitInferredFormalParameterList
  }

  @override
  void exitInstanceInitializer(InstanceInitializerContext ctx) {
    // TODO: implement exitInstanceInitializer
  }

  @override
  void exitIntegralType(IntegralTypeContext ctx) {
    // TODO: implement exitIntegralType
  }

  @override
  void exitInterfaceBody(InterfaceBodyContext ctx) {
    // TODO: implement exitInterfaceBody
  }

  @override
  void exitInterfaceDeclaration(InterfaceDeclarationContext ctx) {
    // TODO: implement exitInterfaceDeclaration
  }

  @override
  void exitInterfaceMemberDeclaration(InterfaceMemberDeclarationContext ctx) {
    // TODO: implement exitInterfaceMemberDeclaration
  }

  @override
  void exitInterfaceMethodDeclaration(InterfaceMethodDeclarationContext ctx) {
    // TODO: implement exitInterfaceMethodDeclaration
  }

  @override
  void exitInterfaceMethodModifier(InterfaceMethodModifierContext ctx) {
    // TODO: implement exitInterfaceMethodModifier
  }

  @override
  void exitInterfaceModifier(InterfaceModifierContext ctx) {
    // TODO: implement exitInterfaceModifier
  }

  @override
  void exitInterfaceType(InterfaceTypeContext ctx) {
    // TODO: implement exitInterfaceType
  }

  @override
  void exitInterfaceTypeList(InterfaceTypeListContext ctx) {
    // TODO: implement exitInterfaceTypeList
  }

  @override
  void exitInterfaceType_lf_classOrInterfaceType(
      InterfaceType_lf_classOrInterfaceTypeContext ctx) {
    // TODO: implement exitInterfaceType_lf_classOrInterfaceType
  }

  @override
  void exitInterfaceType_lfno_classOrInterfaceType(
      InterfaceType_lfno_classOrInterfaceTypeContext ctx) {
    // TODO: implement exitInterfaceType_lfno_classOrInterfaceType
  }

  @override
  void exitLabeledStatement(LabeledStatementContext ctx) {
    // TODO: implement exitLabeledStatement
  }

  @override
  void exitLabeledStatementNoShortIf(LabeledStatementNoShortIfContext ctx) {
    // TODO: implement exitLabeledStatementNoShortIf
  }

  @override
  void exitLambdaBody(LambdaBodyContext ctx) {
    // TODO: implement exitLambdaBody
  }

  @override
  void exitLambdaExpression(LambdaExpressionContext ctx) {
    // TODO: implement exitLambdaExpression
  }

  @override
  void exitLambdaParameters(LambdaParametersContext ctx) {
    // TODO: implement exitLambdaParameters
  }

  @override
  void exitLastFormalParameter(LastFormalParameterContext ctx) {
    // TODO: implement exitLastFormalParameter
  }

  @override
  void exitLeftHandSide(LeftHandSideContext ctx) {
    // TODO: implement exitLeftHandSide
  }

  @override
  void exitLiteral(LiteralContext ctx) {
    // TODO: implement exitLiteral
  }

  @override
  void exitLocalVariableDeclaration(LocalVariableDeclarationContext ctx) {
    // TODO: implement exitLocalVariableDeclaration
  }

  @override
  void exitLocalVariableDeclarationStatement(
      LocalVariableDeclarationStatementContext ctx) {
    // TODO: implement exitLocalVariableDeclarationStatement
  }

  @override
  void exitMarkerAnnotation(MarkerAnnotationContext ctx) {
    // TODO: implement exitMarkerAnnotation
  }

  @override
  void exitMethodBody(MethodBodyContext ctx) {
    // TODO: implement exitMethodBody
  }

  @override
  void exitMethodDeclaration(MethodDeclarationContext ctx) {
    currentContext = currentContext.exit();
  }

  @override
  void exitMethodDeclarator(MethodDeclaratorContext ctx) {
    // TODO: implement exitMethodDeclarator
  }

  @override
  void exitMethodHeader(MethodHeaderContext ctx) {
    // TODO: implement exitMethodHeader
  }

  @override
  void exitMethodInvocation(MethodInvocationContext ctx) {
    // TODO: implement exitMethodInvocation
  }

  @override
  void exitMethodInvocation_lf_primary(MethodInvocation_lf_primaryContext ctx) {
    // TODO: implement exitMethodInvocation_lf_primary
  }

  @override
  void exitMethodInvocation_lfno_primary(
      MethodInvocation_lfno_primaryContext ctx) {
    // TODO: implement exitMethodInvocation_lfno_primary
  }

  @override
  void exitMethodModifier(MethodModifierContext ctx) {
    // TODO: implement exitMethodModifier
  }

  @override
  void exitMethodName(MethodNameContext ctx) {
    // TODO: implement exitMethodName
  }

  @override
  void exitMethodReference(MethodReferenceContext ctx) {
    // TODO: implement exitMethodReference
  }

  @override
  void exitMethodReference_lf_primary(MethodReference_lf_primaryContext ctx) {
    // TODO: implement exitMethodReference_lf_primary
  }

  @override
  void exitMethodReference_lfno_primary(
      MethodReference_lfno_primaryContext ctx) {
    // TODO: implement exitMethodReference_lfno_primary
  }

  @override
  void exitModularCompilation(ModularCompilationContext ctx) {
    // TODO: implement exitModularCompilation
  }

  @override
  void exitModuleDeclaration(ModuleDeclarationContext ctx) {
    // TODO: implement exitModuleDeclaration
  }

  @override
  void exitModuleDirective(ModuleDirectiveContext ctx) {
    // TODO: implement exitModuleDirective
  }

  @override
  void exitModuleName(ModuleNameContext ctx) {
    // TODO: implement exitModuleName
  }

  @override
  void exitMultiplicativeExpression(MultiplicativeExpressionContext ctx) {
    // TODO: implement exitMultiplicativeExpression
  }

  @override
  void exitNormalAnnotation(NormalAnnotationContext ctx) {
    // TODO: implement exitNormalAnnotation
  }

  @override
  void exitNormalClassDeclaration(NormalClassDeclarationContext ctx) {
    // TODO: implement exitNormalClassDeclaration
  }

  @override
  void exitNormalInterfaceDeclaration(NormalInterfaceDeclarationContext ctx) {
    // TODO: implement exitNormalInterfaceDeclaration
  }

  @override
  void exitNumericType(NumericTypeContext ctx) {
    // TODO: implement exitNumericType
  }

  @override
  void exitOrdinaryCompilation(OrdinaryCompilationContext ctx) {
    // TODO: implement exitOrdinaryCompilation
  }

  @override
  void exitPackageDeclaration(PackageDeclarationContext ctx) {
    // TODO: implement exitPackageDeclaration
  }

  @override
  void exitPackageModifier(PackageModifierContext ctx) {
    // TODO: implement exitPackageModifier
  }

  @override
  void exitPackageName(PackageNameContext ctx) {
    // TODO: implement exitPackageName
  }

  @override
  void exitPackageOrTypeName(PackageOrTypeNameContext ctx) {
    // TODO: implement exitPackageOrTypeName
  }

  @override
  void exitPostDecrementExpression(PostDecrementExpressionContext ctx) {
    // TODO: implement exitPostDecrementExpression
  }

  @override
  void exitPostDecrementExpression_lf_postfixExpression(
      PostDecrementExpression_lf_postfixExpressionContext ctx) {
    // TODO: implement exitPostDecrementExpression_lf_postfixExpression
  }

  @override
  void exitPostIncrementExpression(PostIncrementExpressionContext ctx) {
    // TODO: implement exitPostIncrementExpression
  }

  @override
  void exitPostIncrementExpression_lf_postfixExpression(
      PostIncrementExpression_lf_postfixExpressionContext ctx) {
    // TODO: implement exitPostIncrementExpression_lf_postfixExpression
  }

  @override
  void exitPostfixExpression(PostfixExpressionContext ctx) {
    // TODO: implement exitPostfixExpression
  }

  @override
  void exitPreDecrementExpression(PreDecrementExpressionContext ctx) {
    // TODO: implement exitPreDecrementExpression
  }

  @override
  void exitPreIncrementExpression(PreIncrementExpressionContext ctx) {
    // TODO: implement exitPreIncrementExpression
  }

  @override
  void exitPrimary(PrimaryContext ctx) {
    // TODO: implement exitPrimary
  }

  @override
  void exitPrimaryNoNewArray(PrimaryNoNewArrayContext ctx) {
    // TODO: implement exitPrimaryNoNewArray
  }

  @override
  void exitPrimaryNoNewArray_lf_arrayAccess(
      PrimaryNoNewArray_lf_arrayAccessContext ctx) {
    // TODO: implement exitPrimaryNoNewArray_lf_arrayAccess
  }

  @override
  void exitPrimaryNoNewArray_lf_primary(
      PrimaryNoNewArray_lf_primaryContext ctx) {
    // TODO: implement exitPrimaryNoNewArray_lf_primary
  }

  @override
  void exitPrimaryNoNewArray_lf_primary_lf_arrayAccess_lf_primary(
      PrimaryNoNewArray_lf_primary_lf_arrayAccess_lf_primaryContext ctx) {
    // TODO: implement exitPrimaryNoNewArray_lf_primary_lf_arrayAccess_lf_primary
  }

  @override
  void exitPrimaryNoNewArray_lf_primary_lfno_arrayAccess_lf_primary(
      PrimaryNoNewArray_lf_primary_lfno_arrayAccess_lf_primaryContext ctx) {
    // TODO: implement exitPrimaryNoNewArray_lf_primary_lfno_arrayAccess_lf_primary
  }

  @override
  void exitPrimaryNoNewArray_lfno_arrayAccess(
      PrimaryNoNewArray_lfno_arrayAccessContext ctx) {
    // TODO: implement exitPrimaryNoNewArray_lfno_arrayAccess
  }

  @override
  void exitPrimaryNoNewArray_lfno_primary(
      PrimaryNoNewArray_lfno_primaryContext ctx) {
    // TODO: implement exitPrimaryNoNewArray_lfno_primary
  }

  @override
  void exitPrimaryNoNewArray_lfno_primary_lf_arrayAccess_lfno_primary(
      PrimaryNoNewArray_lfno_primary_lf_arrayAccess_lfno_primaryContext ctx) {
    // TODO: implement exitPrimaryNoNewArray_lfno_primary_lf_arrayAccess_lfno_primary
  }

  @override
  void exitPrimaryNoNewArray_lfno_primary_lfno_arrayAccess_lfno_primary(
      PrimaryNoNewArray_lfno_primary_lfno_arrayAccess_lfno_primaryContext ctx) {
    // TODO: implement exitPrimaryNoNewArray_lfno_primary_lfno_arrayAccess_lfno_primary
  }

  @override
  void exitPrimitiveType(PrimitiveTypeContext ctx) {
    // TODO: implement exitPrimitiveType
  }

  @override
  void exitReceiverParameter(ReceiverParameterContext ctx) {
    // TODO: implement exitReceiverParameter
  }

  @override
  void exitReferenceType(ReferenceTypeContext ctx) {
    // TODO: implement exitReferenceType
  }

  @override
  void exitRelationalExpression(RelationalExpressionContext ctx) {
    // TODO: implement exitRelationalExpression
  }

  @override
  void exitRequiresModifier(RequiresModifierContext ctx) {
    // TODO: implement exitRequiresModifier
  }

  @override
  void exitResource(ResourceContext ctx) {
    // TODO: implement exitResource
  }

  @override
  void exitResourceList(ResourceListContext ctx) {
    // TODO: implement exitResourceList
  }

  @override
  void exitResourceSpecification(ResourceSpecificationContext ctx) {
    // TODO: implement exitResourceSpecification
  }

  @override
  void exitResult(ResultContext ctx) {
    // TODO: implement exitResult
  }

  @override
  void exitReturnStatement(ReturnStatementContext ctx) {
    // TODO: implement exitReturnStatement
  }

  @override
  void exitShiftExpression(ShiftExpressionContext ctx) {
    // TODO: implement exitShiftExpression
  }

  @override
  void exitSimpleTypeName(SimpleTypeNameContext ctx) {
    // TODO: implement exitSimpleTypeName
  }

  @override
  void exitSingleElementAnnotation(SingleElementAnnotationContext ctx) {
    // TODO: implement exitSingleElementAnnotation
  }

  @override
  void exitSingleStaticImportDeclaration(
      SingleStaticImportDeclarationContext ctx) {
    // TODO: implement exitSingleStaticImportDeclaration
  }

  @override
  void exitSingleTypeImportDeclaration(SingleTypeImportDeclarationContext ctx) {
    // TODO: implement exitSingleTypeImportDeclaration
  }

  @override
  void exitStatement(StatementContext ctx) {
    // TODO: implement exitStatement
  }

  @override
  void exitStatementExpression(StatementExpressionContext ctx) {
    // TODO: implement exitStatementExpression
  }

  @override
  void exitStatementExpressionList(StatementExpressionListContext ctx) {
    // TODO: implement exitStatementExpressionList
  }

  @override
  void exitStatementNoShortIf(StatementNoShortIfContext ctx) {
    // TODO: implement exitStatementNoShortIf
  }

  @override
  void exitStatementWithoutTrailingSubstatement(
      StatementWithoutTrailingSubstatementContext ctx) {
    // TODO: implement exitStatementWithoutTrailingSubstatement
  }

  @override
  void exitStaticImportOnDemandDeclaration(
      StaticImportOnDemandDeclarationContext ctx) {
    // TODO: implement exitStaticImportOnDemandDeclaration
  }

  @override
  void exitStaticInitializer(StaticInitializerContext ctx) {
    // TODO: implement exitStaticInitializer
  }

  @override
  void exitSuperclass(SuperclassContext ctx) {
    // TODO: implement exitSuperclass
  }

  @override
  void exitSuperinterfaces(SuperinterfacesContext ctx) {
    // TODO: implement exitSuperinterfaces
  }

  @override
  void exitSwitchBlock(SwitchBlockContext ctx) {
    // TODO: implement exitSwitchBlock
  }

  @override
  void exitSwitchBlockStatementGroup(SwitchBlockStatementGroupContext ctx) {
    // TODO: implement exitSwitchBlockStatementGroup
  }

  @override
  void exitSwitchLabel(SwitchLabelContext ctx) {
    // TODO: implement exitSwitchLabel
  }

  @override
  void exitSwitchLabels(SwitchLabelsContext ctx) {
    // TODO: implement exitSwitchLabels
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
  void exitThrows_(Throws_Context ctx) {
    // TODO: implement exitThrows_
  }

  @override
  void exitTryStatement(TryStatementContext ctx) {
    // TODO: implement exitTryStatement
  }

  @override
  void exitTryWithResourcesStatement(TryWithResourcesStatementContext ctx) {
    // TODO: implement exitTryWithResourcesStatement
  }

  @override
  void exitTypeArgument(TypeArgumentContext ctx) {
    // TODO: implement exitTypeArgument
  }

  @override
  void exitTypeArgumentList(TypeArgumentListContext ctx) {
    // TODO: implement exitTypeArgumentList
  }

  @override
  void exitTypeArguments(TypeArgumentsContext ctx) {
    // TODO: implement exitTypeArguments
  }

  @override
  void exitTypeArgumentsOrDiamond(TypeArgumentsOrDiamondContext ctx) {
    // TODO: implement exitTypeArgumentsOrDiamond
  }

  @override
  void exitTypeBound(TypeBoundContext ctx) {
    // TODO: implement exitTypeBound
  }

  @override
  void exitTypeDeclaration(TypeDeclarationContext ctx) {
    // TODO: implement exitTypeDeclaration
  }

  @override
  void exitTypeImportOnDemandDeclaration(
      TypeImportOnDemandDeclarationContext ctx) {
    // TODO: implement exitTypeImportOnDemandDeclaration
  }

  @override
  void exitTypeName(TypeNameContext ctx) {
    // TODO: implement exitTypeName
  }

  @override
  void exitTypeParameter(TypeParameterContext ctx) {
    // TODO: implement exitTypeParameter
  }

  @override
  void exitTypeParameterList(TypeParameterListContext ctx) {
    // TODO: implement exitTypeParameterList
  }

  @override
  void exitTypeParameterModifier(TypeParameterModifierContext ctx) {
    // TODO: implement exitTypeParameterModifier
  }

  @override
  void exitTypeParameters(TypeParametersContext ctx) {
    // TODO: implement exitTypeParameters
  }

  @override
  void exitTypeVariable(TypeVariableContext ctx) {
    // TODO: implement exitTypeVariable
  }

  @override
  void exitUnannArrayType(UnannArrayTypeContext ctx) {
    // TODO: implement exitUnannArrayType
  }

  @override
  void exitUnannClassOrInterfaceType(UnannClassOrInterfaceTypeContext ctx) {
    // TODO: implement exitUnannClassOrInterfaceType
  }

  @override
  void exitUnannClassType(UnannClassTypeContext ctx) {
    // TODO: implement exitUnannClassType
  }

  @override
  void exitUnannClassType_lf_unannClassOrInterfaceType(
      UnannClassType_lf_unannClassOrInterfaceTypeContext ctx) {
    // TODO: implement exitUnannClassType_lf_unannClassOrInterfaceType
  }

  @override
  void exitUnannClassType_lfno_unannClassOrInterfaceType(
      UnannClassType_lfno_unannClassOrInterfaceTypeContext ctx) {
    // TODO: implement exitUnannClassType_lfno_unannClassOrInterfaceType
  }

  @override
  void exitUnannInterfaceType(UnannInterfaceTypeContext ctx) {
    // TODO: implement exitUnannInterfaceType
  }

  @override
  void exitUnannInterfaceType_lf_unannClassOrInterfaceType(
      UnannInterfaceType_lf_unannClassOrInterfaceTypeContext ctx) {
    // TODO: implement exitUnannInterfaceType_lf_unannClassOrInterfaceType
  }

  @override
  void exitUnannInterfaceType_lfno_unannClassOrInterfaceType(
      UnannInterfaceType_lfno_unannClassOrInterfaceTypeContext ctx) {
    // TODO: implement exitUnannInterfaceType_lfno_unannClassOrInterfaceType
  }

  @override
  void exitUnannPrimitiveType(UnannPrimitiveTypeContext ctx) {
    // TODO: implement exitUnannPrimitiveType
  }

  @override
  void exitUnannReferenceType(UnannReferenceTypeContext ctx) {
    // TODO: implement exitUnannReferenceType
  }

  @override
  void exitUnannType(UnannTypeContext ctx) {
    // TODO: implement exitUnannType
  }

  @override
  void exitUnannTypeVariable(UnannTypeVariableContext ctx) {
    // TODO: implement exitUnannTypeVariable
  }

  @override
  void exitUnaryExpression(UnaryExpressionContext ctx) {
    // TODO: implement exitUnaryExpression
  }

  @override
  void exitUnaryExpressionNotPlusMinus(UnaryExpressionNotPlusMinusContext ctx) {
    // TODO: implement exitUnaryExpressionNotPlusMinus
  }

  @override
  void exitVariableAccess(VariableAccessContext ctx) {
    // TODO: implement exitVariableAccess
  }

  @override
  void exitVariableDeclarator(VariableDeclaratorContext ctx) {
    // TODO: implement exitVariableDeclarator
  }

  @override
  void exitVariableDeclaratorId(VariableDeclaratorIdContext ctx) {
    // TODO: implement exitVariableDeclaratorId
  }

  @override
  void exitVariableDeclaratorList(VariableDeclaratorListContext ctx) {
    // TODO: implement exitVariableDeclaratorList
  }

  @override
  void exitVariableInitializer(VariableInitializerContext ctx) {
    // TODO: implement exitVariableInitializer
  }

  @override
  void exitVariableInitializerList(VariableInitializerListContext ctx) {
    // TODO: implement exitVariableInitializerList
  }

  @override
  void exitVariableModifier(VariableModifierContext ctx) {
    // TODO: implement exitVariableModifier
  }

  @override
  void exitWhileStatement(WhileStatementContext ctx) {
    // TODO: implement exitWhileStatement
  }

  @override
  void exitWhileStatementNoShortIf(WhileStatementNoShortIfContext ctx) {
    // TODO: implement exitWhileStatementNoShortIf
  }

  @override
  void exitWildcard(WildcardContext ctx) {
    // TODO: implement exitWildcard
  }

  @override
  void exitWildcardBounds(WildcardBoundsContext ctx) {
    // TODO: implement exitWildcardBounds
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
