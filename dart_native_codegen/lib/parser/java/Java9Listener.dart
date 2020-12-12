// Generated from Java9.g4 by ANTLR 4.9
// ignore_for_file: unused_import, unused_local_variable, prefer_single_quotes
import 'package:antlr4/antlr4.dart';

import 'Java9Parser.dart';

/// This abstract class defines a complete listener for a parse tree produced by
/// [Java9Parser].
abstract class Java9Listener extends ParseTreeListener {
  /// Enter a parse tree produced by [Java9Parser.literal].
  /// [ctx] the parse tree
  void enterLiteral(LiteralContext ctx);
  /// Exit a parse tree produced by [Java9Parser.literal].
  /// [ctx] the parse tree
  void exitLiteral(LiteralContext ctx);

  /// Enter a parse tree produced by [Java9Parser.primitiveType].
  /// [ctx] the parse tree
  void enterPrimitiveType(PrimitiveTypeContext ctx);
  /// Exit a parse tree produced by [Java9Parser.primitiveType].
  /// [ctx] the parse tree
  void exitPrimitiveType(PrimitiveTypeContext ctx);

  /// Enter a parse tree produced by [Java9Parser.numericType].
  /// [ctx] the parse tree
  void enterNumericType(NumericTypeContext ctx);
  /// Exit a parse tree produced by [Java9Parser.numericType].
  /// [ctx] the parse tree
  void exitNumericType(NumericTypeContext ctx);

  /// Enter a parse tree produced by [Java9Parser.integralType].
  /// [ctx] the parse tree
  void enterIntegralType(IntegralTypeContext ctx);
  /// Exit a parse tree produced by [Java9Parser.integralType].
  /// [ctx] the parse tree
  void exitIntegralType(IntegralTypeContext ctx);

  /// Enter a parse tree produced by [Java9Parser.floatingPointType].
  /// [ctx] the parse tree
  void enterFloatingPointType(FloatingPointTypeContext ctx);
  /// Exit a parse tree produced by [Java9Parser.floatingPointType].
  /// [ctx] the parse tree
  void exitFloatingPointType(FloatingPointTypeContext ctx);

  /// Enter a parse tree produced by [Java9Parser.referenceType].
  /// [ctx] the parse tree
  void enterReferenceType(ReferenceTypeContext ctx);
  /// Exit a parse tree produced by [Java9Parser.referenceType].
  /// [ctx] the parse tree
  void exitReferenceType(ReferenceTypeContext ctx);

  /// Enter a parse tree produced by [Java9Parser.classOrInterfaceType].
  /// [ctx] the parse tree
  void enterClassOrInterfaceType(ClassOrInterfaceTypeContext ctx);
  /// Exit a parse tree produced by [Java9Parser.classOrInterfaceType].
  /// [ctx] the parse tree
  void exitClassOrInterfaceType(ClassOrInterfaceTypeContext ctx);

  /// Enter a parse tree produced by [Java9Parser.classType].
  /// [ctx] the parse tree
  void enterClassType(ClassTypeContext ctx);
  /// Exit a parse tree produced by [Java9Parser.classType].
  /// [ctx] the parse tree
  void exitClassType(ClassTypeContext ctx);

  /// Enter a parse tree produced by [Java9Parser.classType_lf_classOrInterfaceType].
  /// [ctx] the parse tree
  void enterClassType_lf_classOrInterfaceType(ClassType_lf_classOrInterfaceTypeContext ctx);
  /// Exit a parse tree produced by [Java9Parser.classType_lf_classOrInterfaceType].
  /// [ctx] the parse tree
  void exitClassType_lf_classOrInterfaceType(ClassType_lf_classOrInterfaceTypeContext ctx);

  /// Enter a parse tree produced by [Java9Parser.classType_lfno_classOrInterfaceType].
  /// [ctx] the parse tree
  void enterClassType_lfno_classOrInterfaceType(ClassType_lfno_classOrInterfaceTypeContext ctx);
  /// Exit a parse tree produced by [Java9Parser.classType_lfno_classOrInterfaceType].
  /// [ctx] the parse tree
  void exitClassType_lfno_classOrInterfaceType(ClassType_lfno_classOrInterfaceTypeContext ctx);

  /// Enter a parse tree produced by [Java9Parser.interfaceType].
  /// [ctx] the parse tree
  void enterInterfaceType(InterfaceTypeContext ctx);
  /// Exit a parse tree produced by [Java9Parser.interfaceType].
  /// [ctx] the parse tree
  void exitInterfaceType(InterfaceTypeContext ctx);

  /// Enter a parse tree produced by [Java9Parser.interfaceType_lf_classOrInterfaceType].
  /// [ctx] the parse tree
  void enterInterfaceType_lf_classOrInterfaceType(InterfaceType_lf_classOrInterfaceTypeContext ctx);
  /// Exit a parse tree produced by [Java9Parser.interfaceType_lf_classOrInterfaceType].
  /// [ctx] the parse tree
  void exitInterfaceType_lf_classOrInterfaceType(InterfaceType_lf_classOrInterfaceTypeContext ctx);

  /// Enter a parse tree produced by [Java9Parser.interfaceType_lfno_classOrInterfaceType].
  /// [ctx] the parse tree
  void enterInterfaceType_lfno_classOrInterfaceType(InterfaceType_lfno_classOrInterfaceTypeContext ctx);
  /// Exit a parse tree produced by [Java9Parser.interfaceType_lfno_classOrInterfaceType].
  /// [ctx] the parse tree
  void exitInterfaceType_lfno_classOrInterfaceType(InterfaceType_lfno_classOrInterfaceTypeContext ctx);

  /// Enter a parse tree produced by [Java9Parser.typeVariable].
  /// [ctx] the parse tree
  void enterTypeVariable(TypeVariableContext ctx);
  /// Exit a parse tree produced by [Java9Parser.typeVariable].
  /// [ctx] the parse tree
  void exitTypeVariable(TypeVariableContext ctx);

  /// Enter a parse tree produced by [Java9Parser.arrayType].
  /// [ctx] the parse tree
  void enterArrayType(ArrayTypeContext ctx);
  /// Exit a parse tree produced by [Java9Parser.arrayType].
  /// [ctx] the parse tree
  void exitArrayType(ArrayTypeContext ctx);

  /// Enter a parse tree produced by [Java9Parser.dims].
  /// [ctx] the parse tree
  void enterDims(DimsContext ctx);
  /// Exit a parse tree produced by [Java9Parser.dims].
  /// [ctx] the parse tree
  void exitDims(DimsContext ctx);

  /// Enter a parse tree produced by [Java9Parser.typeParameter].
  /// [ctx] the parse tree
  void enterTypeParameter(TypeParameterContext ctx);
  /// Exit a parse tree produced by [Java9Parser.typeParameter].
  /// [ctx] the parse tree
  void exitTypeParameter(TypeParameterContext ctx);

  /// Enter a parse tree produced by [Java9Parser.typeParameterModifier].
  /// [ctx] the parse tree
  void enterTypeParameterModifier(TypeParameterModifierContext ctx);
  /// Exit a parse tree produced by [Java9Parser.typeParameterModifier].
  /// [ctx] the parse tree
  void exitTypeParameterModifier(TypeParameterModifierContext ctx);

  /// Enter a parse tree produced by [Java9Parser.typeBound].
  /// [ctx] the parse tree
  void enterTypeBound(TypeBoundContext ctx);
  /// Exit a parse tree produced by [Java9Parser.typeBound].
  /// [ctx] the parse tree
  void exitTypeBound(TypeBoundContext ctx);

  /// Enter a parse tree produced by [Java9Parser.additionalBound].
  /// [ctx] the parse tree
  void enterAdditionalBound(AdditionalBoundContext ctx);
  /// Exit a parse tree produced by [Java9Parser.additionalBound].
  /// [ctx] the parse tree
  void exitAdditionalBound(AdditionalBoundContext ctx);

  /// Enter a parse tree produced by [Java9Parser.typeArguments].
  /// [ctx] the parse tree
  void enterTypeArguments(TypeArgumentsContext ctx);
  /// Exit a parse tree produced by [Java9Parser.typeArguments].
  /// [ctx] the parse tree
  void exitTypeArguments(TypeArgumentsContext ctx);

  /// Enter a parse tree produced by [Java9Parser.typeArgumentList].
  /// [ctx] the parse tree
  void enterTypeArgumentList(TypeArgumentListContext ctx);
  /// Exit a parse tree produced by [Java9Parser.typeArgumentList].
  /// [ctx] the parse tree
  void exitTypeArgumentList(TypeArgumentListContext ctx);

  /// Enter a parse tree produced by [Java9Parser.typeArgument].
  /// [ctx] the parse tree
  void enterTypeArgument(TypeArgumentContext ctx);
  /// Exit a parse tree produced by [Java9Parser.typeArgument].
  /// [ctx] the parse tree
  void exitTypeArgument(TypeArgumentContext ctx);

  /// Enter a parse tree produced by [Java9Parser.wildcard].
  /// [ctx] the parse tree
  void enterWildcard(WildcardContext ctx);
  /// Exit a parse tree produced by [Java9Parser.wildcard].
  /// [ctx] the parse tree
  void exitWildcard(WildcardContext ctx);

  /// Enter a parse tree produced by [Java9Parser.wildcardBounds].
  /// [ctx] the parse tree
  void enterWildcardBounds(WildcardBoundsContext ctx);
  /// Exit a parse tree produced by [Java9Parser.wildcardBounds].
  /// [ctx] the parse tree
  void exitWildcardBounds(WildcardBoundsContext ctx);

  /// Enter a parse tree produced by [Java9Parser.moduleName].
  /// [ctx] the parse tree
  void enterModuleName(ModuleNameContext ctx);
  /// Exit a parse tree produced by [Java9Parser.moduleName].
  /// [ctx] the parse tree
  void exitModuleName(ModuleNameContext ctx);

  /// Enter a parse tree produced by [Java9Parser.packageName].
  /// [ctx] the parse tree
  void enterPackageName(PackageNameContext ctx);
  /// Exit a parse tree produced by [Java9Parser.packageName].
  /// [ctx] the parse tree
  void exitPackageName(PackageNameContext ctx);

  /// Enter a parse tree produced by [Java9Parser.typeName].
  /// [ctx] the parse tree
  void enterTypeName(TypeNameContext ctx);
  /// Exit a parse tree produced by [Java9Parser.typeName].
  /// [ctx] the parse tree
  void exitTypeName(TypeNameContext ctx);

  /// Enter a parse tree produced by [Java9Parser.packageOrTypeName].
  /// [ctx] the parse tree
  void enterPackageOrTypeName(PackageOrTypeNameContext ctx);
  /// Exit a parse tree produced by [Java9Parser.packageOrTypeName].
  /// [ctx] the parse tree
  void exitPackageOrTypeName(PackageOrTypeNameContext ctx);

  /// Enter a parse tree produced by [Java9Parser.expressionName].
  /// [ctx] the parse tree
  void enterExpressionName(ExpressionNameContext ctx);
  /// Exit a parse tree produced by [Java9Parser.expressionName].
  /// [ctx] the parse tree
  void exitExpressionName(ExpressionNameContext ctx);

  /// Enter a parse tree produced by [Java9Parser.methodName].
  /// [ctx] the parse tree
  void enterMethodName(MethodNameContext ctx);
  /// Exit a parse tree produced by [Java9Parser.methodName].
  /// [ctx] the parse tree
  void exitMethodName(MethodNameContext ctx);

  /// Enter a parse tree produced by [Java9Parser.ambiguousName].
  /// [ctx] the parse tree
  void enterAmbiguousName(AmbiguousNameContext ctx);
  /// Exit a parse tree produced by [Java9Parser.ambiguousName].
  /// [ctx] the parse tree
  void exitAmbiguousName(AmbiguousNameContext ctx);

  /// Enter a parse tree produced by [Java9Parser.compilationUnit].
  /// [ctx] the parse tree
  void enterCompilationUnit(CompilationUnitContext ctx);
  /// Exit a parse tree produced by [Java9Parser.compilationUnit].
  /// [ctx] the parse tree
  void exitCompilationUnit(CompilationUnitContext ctx);

  /// Enter a parse tree produced by [Java9Parser.ordinaryCompilation].
  /// [ctx] the parse tree
  void enterOrdinaryCompilation(OrdinaryCompilationContext ctx);
  /// Exit a parse tree produced by [Java9Parser.ordinaryCompilation].
  /// [ctx] the parse tree
  void exitOrdinaryCompilation(OrdinaryCompilationContext ctx);

  /// Enter a parse tree produced by [Java9Parser.modularCompilation].
  /// [ctx] the parse tree
  void enterModularCompilation(ModularCompilationContext ctx);
  /// Exit a parse tree produced by [Java9Parser.modularCompilation].
  /// [ctx] the parse tree
  void exitModularCompilation(ModularCompilationContext ctx);

  /// Enter a parse tree produced by [Java9Parser.packageDeclaration].
  /// [ctx] the parse tree
  void enterPackageDeclaration(PackageDeclarationContext ctx);
  /// Exit a parse tree produced by [Java9Parser.packageDeclaration].
  /// [ctx] the parse tree
  void exitPackageDeclaration(PackageDeclarationContext ctx);

  /// Enter a parse tree produced by [Java9Parser.packageModifier].
  /// [ctx] the parse tree
  void enterPackageModifier(PackageModifierContext ctx);
  /// Exit a parse tree produced by [Java9Parser.packageModifier].
  /// [ctx] the parse tree
  void exitPackageModifier(PackageModifierContext ctx);

  /// Enter a parse tree produced by [Java9Parser.importDeclaration].
  /// [ctx] the parse tree
  void enterImportDeclaration(ImportDeclarationContext ctx);
  /// Exit a parse tree produced by [Java9Parser.importDeclaration].
  /// [ctx] the parse tree
  void exitImportDeclaration(ImportDeclarationContext ctx);

  /// Enter a parse tree produced by [Java9Parser.singleTypeImportDeclaration].
  /// [ctx] the parse tree
  void enterSingleTypeImportDeclaration(SingleTypeImportDeclarationContext ctx);
  /// Exit a parse tree produced by [Java9Parser.singleTypeImportDeclaration].
  /// [ctx] the parse tree
  void exitSingleTypeImportDeclaration(SingleTypeImportDeclarationContext ctx);

  /// Enter a parse tree produced by [Java9Parser.typeImportOnDemandDeclaration].
  /// [ctx] the parse tree
  void enterTypeImportOnDemandDeclaration(TypeImportOnDemandDeclarationContext ctx);
  /// Exit a parse tree produced by [Java9Parser.typeImportOnDemandDeclaration].
  /// [ctx] the parse tree
  void exitTypeImportOnDemandDeclaration(TypeImportOnDemandDeclarationContext ctx);

  /// Enter a parse tree produced by [Java9Parser.singleStaticImportDeclaration].
  /// [ctx] the parse tree
  void enterSingleStaticImportDeclaration(SingleStaticImportDeclarationContext ctx);
  /// Exit a parse tree produced by [Java9Parser.singleStaticImportDeclaration].
  /// [ctx] the parse tree
  void exitSingleStaticImportDeclaration(SingleStaticImportDeclarationContext ctx);

  /// Enter a parse tree produced by [Java9Parser.staticImportOnDemandDeclaration].
  /// [ctx] the parse tree
  void enterStaticImportOnDemandDeclaration(StaticImportOnDemandDeclarationContext ctx);
  /// Exit a parse tree produced by [Java9Parser.staticImportOnDemandDeclaration].
  /// [ctx] the parse tree
  void exitStaticImportOnDemandDeclaration(StaticImportOnDemandDeclarationContext ctx);

  /// Enter a parse tree produced by [Java9Parser.typeDeclaration].
  /// [ctx] the parse tree
  void enterTypeDeclaration(TypeDeclarationContext ctx);
  /// Exit a parse tree produced by [Java9Parser.typeDeclaration].
  /// [ctx] the parse tree
  void exitTypeDeclaration(TypeDeclarationContext ctx);

  /// Enter a parse tree produced by [Java9Parser.moduleDeclaration].
  /// [ctx] the parse tree
  void enterModuleDeclaration(ModuleDeclarationContext ctx);
  /// Exit a parse tree produced by [Java9Parser.moduleDeclaration].
  /// [ctx] the parse tree
  void exitModuleDeclaration(ModuleDeclarationContext ctx);

  /// Enter a parse tree produced by [Java9Parser.moduleDirective].
  /// [ctx] the parse tree
  void enterModuleDirective(ModuleDirectiveContext ctx);
  /// Exit a parse tree produced by [Java9Parser.moduleDirective].
  /// [ctx] the parse tree
  void exitModuleDirective(ModuleDirectiveContext ctx);

  /// Enter a parse tree produced by [Java9Parser.requiresModifier].
  /// [ctx] the parse tree
  void enterRequiresModifier(RequiresModifierContext ctx);
  /// Exit a parse tree produced by [Java9Parser.requiresModifier].
  /// [ctx] the parse tree
  void exitRequiresModifier(RequiresModifierContext ctx);

  /// Enter a parse tree produced by [Java9Parser.classDeclaration].
  /// [ctx] the parse tree
  void enterClassDeclaration(ClassDeclarationContext ctx);
  /// Exit a parse tree produced by [Java9Parser.classDeclaration].
  /// [ctx] the parse tree
  void exitClassDeclaration(ClassDeclarationContext ctx);

  /// Enter a parse tree produced by [Java9Parser.normalClassDeclaration].
  /// [ctx] the parse tree
  void enterNormalClassDeclaration(NormalClassDeclarationContext ctx);
  /// Exit a parse tree produced by [Java9Parser.normalClassDeclaration].
  /// [ctx] the parse tree
  void exitNormalClassDeclaration(NormalClassDeclarationContext ctx);

  /// Enter a parse tree produced by [Java9Parser.classModifier].
  /// [ctx] the parse tree
  void enterClassModifier(ClassModifierContext ctx);
  /// Exit a parse tree produced by [Java9Parser.classModifier].
  /// [ctx] the parse tree
  void exitClassModifier(ClassModifierContext ctx);

  /// Enter a parse tree produced by [Java9Parser.typeParameters].
  /// [ctx] the parse tree
  void enterTypeParameters(TypeParametersContext ctx);
  /// Exit a parse tree produced by [Java9Parser.typeParameters].
  /// [ctx] the parse tree
  void exitTypeParameters(TypeParametersContext ctx);

  /// Enter a parse tree produced by [Java9Parser.typeParameterList].
  /// [ctx] the parse tree
  void enterTypeParameterList(TypeParameterListContext ctx);
  /// Exit a parse tree produced by [Java9Parser.typeParameterList].
  /// [ctx] the parse tree
  void exitTypeParameterList(TypeParameterListContext ctx);

  /// Enter a parse tree produced by [Java9Parser.superclass].
  /// [ctx] the parse tree
  void enterSuperclass(SuperclassContext ctx);
  /// Exit a parse tree produced by [Java9Parser.superclass].
  /// [ctx] the parse tree
  void exitSuperclass(SuperclassContext ctx);

  /// Enter a parse tree produced by [Java9Parser.superinterfaces].
  /// [ctx] the parse tree
  void enterSuperinterfaces(SuperinterfacesContext ctx);
  /// Exit a parse tree produced by [Java9Parser.superinterfaces].
  /// [ctx] the parse tree
  void exitSuperinterfaces(SuperinterfacesContext ctx);

  /// Enter a parse tree produced by [Java9Parser.interfaceTypeList].
  /// [ctx] the parse tree
  void enterInterfaceTypeList(InterfaceTypeListContext ctx);
  /// Exit a parse tree produced by [Java9Parser.interfaceTypeList].
  /// [ctx] the parse tree
  void exitInterfaceTypeList(InterfaceTypeListContext ctx);

  /// Enter a parse tree produced by [Java9Parser.classBody].
  /// [ctx] the parse tree
  void enterClassBody(ClassBodyContext ctx);
  /// Exit a parse tree produced by [Java9Parser.classBody].
  /// [ctx] the parse tree
  void exitClassBody(ClassBodyContext ctx);

  /// Enter a parse tree produced by [Java9Parser.classBodyDeclaration].
  /// [ctx] the parse tree
  void enterClassBodyDeclaration(ClassBodyDeclarationContext ctx);
  /// Exit a parse tree produced by [Java9Parser.classBodyDeclaration].
  /// [ctx] the parse tree
  void exitClassBodyDeclaration(ClassBodyDeclarationContext ctx);

  /// Enter a parse tree produced by [Java9Parser.classMemberDeclaration].
  /// [ctx] the parse tree
  void enterClassMemberDeclaration(ClassMemberDeclarationContext ctx);
  /// Exit a parse tree produced by [Java9Parser.classMemberDeclaration].
  /// [ctx] the parse tree
  void exitClassMemberDeclaration(ClassMemberDeclarationContext ctx);

  /// Enter a parse tree produced by [Java9Parser.fieldDeclaration].
  /// [ctx] the parse tree
  void enterFieldDeclaration(FieldDeclarationContext ctx);
  /// Exit a parse tree produced by [Java9Parser.fieldDeclaration].
  /// [ctx] the parse tree
  void exitFieldDeclaration(FieldDeclarationContext ctx);

  /// Enter a parse tree produced by [Java9Parser.fieldModifier].
  /// [ctx] the parse tree
  void enterFieldModifier(FieldModifierContext ctx);
  /// Exit a parse tree produced by [Java9Parser.fieldModifier].
  /// [ctx] the parse tree
  void exitFieldModifier(FieldModifierContext ctx);

  /// Enter a parse tree produced by [Java9Parser.variableDeclaratorList].
  /// [ctx] the parse tree
  void enterVariableDeclaratorList(VariableDeclaratorListContext ctx);
  /// Exit a parse tree produced by [Java9Parser.variableDeclaratorList].
  /// [ctx] the parse tree
  void exitVariableDeclaratorList(VariableDeclaratorListContext ctx);

  /// Enter a parse tree produced by [Java9Parser.variableDeclarator].
  /// [ctx] the parse tree
  void enterVariableDeclarator(VariableDeclaratorContext ctx);
  /// Exit a parse tree produced by [Java9Parser.variableDeclarator].
  /// [ctx] the parse tree
  void exitVariableDeclarator(VariableDeclaratorContext ctx);

  /// Enter a parse tree produced by [Java9Parser.variableDeclaratorId].
  /// [ctx] the parse tree
  void enterVariableDeclaratorId(VariableDeclaratorIdContext ctx);
  /// Exit a parse tree produced by [Java9Parser.variableDeclaratorId].
  /// [ctx] the parse tree
  void exitVariableDeclaratorId(VariableDeclaratorIdContext ctx);

  /// Enter a parse tree produced by [Java9Parser.variableInitializer].
  /// [ctx] the parse tree
  void enterVariableInitializer(VariableInitializerContext ctx);
  /// Exit a parse tree produced by [Java9Parser.variableInitializer].
  /// [ctx] the parse tree
  void exitVariableInitializer(VariableInitializerContext ctx);

  /// Enter a parse tree produced by [Java9Parser.unannType].
  /// [ctx] the parse tree
  void enterUnannType(UnannTypeContext ctx);
  /// Exit a parse tree produced by [Java9Parser.unannType].
  /// [ctx] the parse tree
  void exitUnannType(UnannTypeContext ctx);

  /// Enter a parse tree produced by [Java9Parser.unannPrimitiveType].
  /// [ctx] the parse tree
  void enterUnannPrimitiveType(UnannPrimitiveTypeContext ctx);
  /// Exit a parse tree produced by [Java9Parser.unannPrimitiveType].
  /// [ctx] the parse tree
  void exitUnannPrimitiveType(UnannPrimitiveTypeContext ctx);

  /// Enter a parse tree produced by [Java9Parser.unannReferenceType].
  /// [ctx] the parse tree
  void enterUnannReferenceType(UnannReferenceTypeContext ctx);
  /// Exit a parse tree produced by [Java9Parser.unannReferenceType].
  /// [ctx] the parse tree
  void exitUnannReferenceType(UnannReferenceTypeContext ctx);

  /// Enter a parse tree produced by [Java9Parser.unannClassOrInterfaceType].
  /// [ctx] the parse tree
  void enterUnannClassOrInterfaceType(UnannClassOrInterfaceTypeContext ctx);
  /// Exit a parse tree produced by [Java9Parser.unannClassOrInterfaceType].
  /// [ctx] the parse tree
  void exitUnannClassOrInterfaceType(UnannClassOrInterfaceTypeContext ctx);

  /// Enter a parse tree produced by [Java9Parser.unannClassType].
  /// [ctx] the parse tree
  void enterUnannClassType(UnannClassTypeContext ctx);
  /// Exit a parse tree produced by [Java9Parser.unannClassType].
  /// [ctx] the parse tree
  void exitUnannClassType(UnannClassTypeContext ctx);

  /// Enter a parse tree produced by [Java9Parser.unannClassType_lf_unannClassOrInterfaceType].
  /// [ctx] the parse tree
  void enterUnannClassType_lf_unannClassOrInterfaceType(UnannClassType_lf_unannClassOrInterfaceTypeContext ctx);
  /// Exit a parse tree produced by [Java9Parser.unannClassType_lf_unannClassOrInterfaceType].
  /// [ctx] the parse tree
  void exitUnannClassType_lf_unannClassOrInterfaceType(UnannClassType_lf_unannClassOrInterfaceTypeContext ctx);

  /// Enter a parse tree produced by [Java9Parser.unannClassType_lfno_unannClassOrInterfaceType].
  /// [ctx] the parse tree
  void enterUnannClassType_lfno_unannClassOrInterfaceType(UnannClassType_lfno_unannClassOrInterfaceTypeContext ctx);
  /// Exit a parse tree produced by [Java9Parser.unannClassType_lfno_unannClassOrInterfaceType].
  /// [ctx] the parse tree
  void exitUnannClassType_lfno_unannClassOrInterfaceType(UnannClassType_lfno_unannClassOrInterfaceTypeContext ctx);

  /// Enter a parse tree produced by [Java9Parser.unannInterfaceType].
  /// [ctx] the parse tree
  void enterUnannInterfaceType(UnannInterfaceTypeContext ctx);
  /// Exit a parse tree produced by [Java9Parser.unannInterfaceType].
  /// [ctx] the parse tree
  void exitUnannInterfaceType(UnannInterfaceTypeContext ctx);

  /// Enter a parse tree produced by [Java9Parser.unannInterfaceType_lf_unannClassOrInterfaceType].
  /// [ctx] the parse tree
  void enterUnannInterfaceType_lf_unannClassOrInterfaceType(UnannInterfaceType_lf_unannClassOrInterfaceTypeContext ctx);
  /// Exit a parse tree produced by [Java9Parser.unannInterfaceType_lf_unannClassOrInterfaceType].
  /// [ctx] the parse tree
  void exitUnannInterfaceType_lf_unannClassOrInterfaceType(UnannInterfaceType_lf_unannClassOrInterfaceTypeContext ctx);

  /// Enter a parse tree produced by [Java9Parser.unannInterfaceType_lfno_unannClassOrInterfaceType].
  /// [ctx] the parse tree
  void enterUnannInterfaceType_lfno_unannClassOrInterfaceType(UnannInterfaceType_lfno_unannClassOrInterfaceTypeContext ctx);
  /// Exit a parse tree produced by [Java9Parser.unannInterfaceType_lfno_unannClassOrInterfaceType].
  /// [ctx] the parse tree
  void exitUnannInterfaceType_lfno_unannClassOrInterfaceType(UnannInterfaceType_lfno_unannClassOrInterfaceTypeContext ctx);

  /// Enter a parse tree produced by [Java9Parser.unannTypeVariable].
  /// [ctx] the parse tree
  void enterUnannTypeVariable(UnannTypeVariableContext ctx);
  /// Exit a parse tree produced by [Java9Parser.unannTypeVariable].
  /// [ctx] the parse tree
  void exitUnannTypeVariable(UnannTypeVariableContext ctx);

  /// Enter a parse tree produced by [Java9Parser.unannArrayType].
  /// [ctx] the parse tree
  void enterUnannArrayType(UnannArrayTypeContext ctx);
  /// Exit a parse tree produced by [Java9Parser.unannArrayType].
  /// [ctx] the parse tree
  void exitUnannArrayType(UnannArrayTypeContext ctx);

  /// Enter a parse tree produced by [Java9Parser.methodDeclaration].
  /// [ctx] the parse tree
  void enterMethodDeclaration(MethodDeclarationContext ctx);
  /// Exit a parse tree produced by [Java9Parser.methodDeclaration].
  /// [ctx] the parse tree
  void exitMethodDeclaration(MethodDeclarationContext ctx);

  /// Enter a parse tree produced by [Java9Parser.methodModifier].
  /// [ctx] the parse tree
  void enterMethodModifier(MethodModifierContext ctx);
  /// Exit a parse tree produced by [Java9Parser.methodModifier].
  /// [ctx] the parse tree
  void exitMethodModifier(MethodModifierContext ctx);

  /// Enter a parse tree produced by [Java9Parser.methodHeader].
  /// [ctx] the parse tree
  void enterMethodHeader(MethodHeaderContext ctx);
  /// Exit a parse tree produced by [Java9Parser.methodHeader].
  /// [ctx] the parse tree
  void exitMethodHeader(MethodHeaderContext ctx);

  /// Enter a parse tree produced by [Java9Parser.result].
  /// [ctx] the parse tree
  void enterResult(ResultContext ctx);
  /// Exit a parse tree produced by [Java9Parser.result].
  /// [ctx] the parse tree
  void exitResult(ResultContext ctx);

  /// Enter a parse tree produced by [Java9Parser.methodDeclarator].
  /// [ctx] the parse tree
  void enterMethodDeclarator(MethodDeclaratorContext ctx);
  /// Exit a parse tree produced by [Java9Parser.methodDeclarator].
  /// [ctx] the parse tree
  void exitMethodDeclarator(MethodDeclaratorContext ctx);

  /// Enter a parse tree produced by [Java9Parser.formalParameterList].
  /// [ctx] the parse tree
  void enterFormalParameterList(FormalParameterListContext ctx);
  /// Exit a parse tree produced by [Java9Parser.formalParameterList].
  /// [ctx] the parse tree
  void exitFormalParameterList(FormalParameterListContext ctx);

  /// Enter a parse tree produced by [Java9Parser.formalParameters].
  /// [ctx] the parse tree
  void enterFormalParameters(FormalParametersContext ctx);
  /// Exit a parse tree produced by [Java9Parser.formalParameters].
  /// [ctx] the parse tree
  void exitFormalParameters(FormalParametersContext ctx);

  /// Enter a parse tree produced by [Java9Parser.formalParameter].
  /// [ctx] the parse tree
  void enterFormalParameter(FormalParameterContext ctx);
  /// Exit a parse tree produced by [Java9Parser.formalParameter].
  /// [ctx] the parse tree
  void exitFormalParameter(FormalParameterContext ctx);

  /// Enter a parse tree produced by [Java9Parser.variableModifier].
  /// [ctx] the parse tree
  void enterVariableModifier(VariableModifierContext ctx);
  /// Exit a parse tree produced by [Java9Parser.variableModifier].
  /// [ctx] the parse tree
  void exitVariableModifier(VariableModifierContext ctx);

  /// Enter a parse tree produced by [Java9Parser.lastFormalParameter].
  /// [ctx] the parse tree
  void enterLastFormalParameter(LastFormalParameterContext ctx);
  /// Exit a parse tree produced by [Java9Parser.lastFormalParameter].
  /// [ctx] the parse tree
  void exitLastFormalParameter(LastFormalParameterContext ctx);

  /// Enter a parse tree produced by [Java9Parser.receiverParameter].
  /// [ctx] the parse tree
  void enterReceiverParameter(ReceiverParameterContext ctx);
  /// Exit a parse tree produced by [Java9Parser.receiverParameter].
  /// [ctx] the parse tree
  void exitReceiverParameter(ReceiverParameterContext ctx);

  /// Enter a parse tree produced by [Java9Parser.throws_].
  /// [ctx] the parse tree
  void enterThrows_(Throws_Context ctx);
  /// Exit a parse tree produced by [Java9Parser.throws_].
  /// [ctx] the parse tree
  void exitThrows_(Throws_Context ctx);

  /// Enter a parse tree produced by [Java9Parser.exceptionTypeList].
  /// [ctx] the parse tree
  void enterExceptionTypeList(ExceptionTypeListContext ctx);
  /// Exit a parse tree produced by [Java9Parser.exceptionTypeList].
  /// [ctx] the parse tree
  void exitExceptionTypeList(ExceptionTypeListContext ctx);

  /// Enter a parse tree produced by [Java9Parser.exceptionType].
  /// [ctx] the parse tree
  void enterExceptionType(ExceptionTypeContext ctx);
  /// Exit a parse tree produced by [Java9Parser.exceptionType].
  /// [ctx] the parse tree
  void exitExceptionType(ExceptionTypeContext ctx);

  /// Enter a parse tree produced by [Java9Parser.methodBody].
  /// [ctx] the parse tree
  void enterMethodBody(MethodBodyContext ctx);
  /// Exit a parse tree produced by [Java9Parser.methodBody].
  /// [ctx] the parse tree
  void exitMethodBody(MethodBodyContext ctx);

  /// Enter a parse tree produced by [Java9Parser.instanceInitializer].
  /// [ctx] the parse tree
  void enterInstanceInitializer(InstanceInitializerContext ctx);
  /// Exit a parse tree produced by [Java9Parser.instanceInitializer].
  /// [ctx] the parse tree
  void exitInstanceInitializer(InstanceInitializerContext ctx);

  /// Enter a parse tree produced by [Java9Parser.staticInitializer].
  /// [ctx] the parse tree
  void enterStaticInitializer(StaticInitializerContext ctx);
  /// Exit a parse tree produced by [Java9Parser.staticInitializer].
  /// [ctx] the parse tree
  void exitStaticInitializer(StaticInitializerContext ctx);

  /// Enter a parse tree produced by [Java9Parser.constructorDeclaration].
  /// [ctx] the parse tree
  void enterConstructorDeclaration(ConstructorDeclarationContext ctx);
  /// Exit a parse tree produced by [Java9Parser.constructorDeclaration].
  /// [ctx] the parse tree
  void exitConstructorDeclaration(ConstructorDeclarationContext ctx);

  /// Enter a parse tree produced by [Java9Parser.constructorModifier].
  /// [ctx] the parse tree
  void enterConstructorModifier(ConstructorModifierContext ctx);
  /// Exit a parse tree produced by [Java9Parser.constructorModifier].
  /// [ctx] the parse tree
  void exitConstructorModifier(ConstructorModifierContext ctx);

  /// Enter a parse tree produced by [Java9Parser.constructorDeclarator].
  /// [ctx] the parse tree
  void enterConstructorDeclarator(ConstructorDeclaratorContext ctx);
  /// Exit a parse tree produced by [Java9Parser.constructorDeclarator].
  /// [ctx] the parse tree
  void exitConstructorDeclarator(ConstructorDeclaratorContext ctx);

  /// Enter a parse tree produced by [Java9Parser.simpleTypeName].
  /// [ctx] the parse tree
  void enterSimpleTypeName(SimpleTypeNameContext ctx);
  /// Exit a parse tree produced by [Java9Parser.simpleTypeName].
  /// [ctx] the parse tree
  void exitSimpleTypeName(SimpleTypeNameContext ctx);

  /// Enter a parse tree produced by [Java9Parser.constructorBody].
  /// [ctx] the parse tree
  void enterConstructorBody(ConstructorBodyContext ctx);
  /// Exit a parse tree produced by [Java9Parser.constructorBody].
  /// [ctx] the parse tree
  void exitConstructorBody(ConstructorBodyContext ctx);

  /// Enter a parse tree produced by [Java9Parser.explicitConstructorInvocation].
  /// [ctx] the parse tree
  void enterExplicitConstructorInvocation(ExplicitConstructorInvocationContext ctx);
  /// Exit a parse tree produced by [Java9Parser.explicitConstructorInvocation].
  /// [ctx] the parse tree
  void exitExplicitConstructorInvocation(ExplicitConstructorInvocationContext ctx);

  /// Enter a parse tree produced by [Java9Parser.enumDeclaration].
  /// [ctx] the parse tree
  void enterEnumDeclaration(EnumDeclarationContext ctx);
  /// Exit a parse tree produced by [Java9Parser.enumDeclaration].
  /// [ctx] the parse tree
  void exitEnumDeclaration(EnumDeclarationContext ctx);

  /// Enter a parse tree produced by [Java9Parser.enumBody].
  /// [ctx] the parse tree
  void enterEnumBody(EnumBodyContext ctx);
  /// Exit a parse tree produced by [Java9Parser.enumBody].
  /// [ctx] the parse tree
  void exitEnumBody(EnumBodyContext ctx);

  /// Enter a parse tree produced by [Java9Parser.enumConstantList].
  /// [ctx] the parse tree
  void enterEnumConstantList(EnumConstantListContext ctx);
  /// Exit a parse tree produced by [Java9Parser.enumConstantList].
  /// [ctx] the parse tree
  void exitEnumConstantList(EnumConstantListContext ctx);

  /// Enter a parse tree produced by [Java9Parser.enumConstant].
  /// [ctx] the parse tree
  void enterEnumConstant(EnumConstantContext ctx);
  /// Exit a parse tree produced by [Java9Parser.enumConstant].
  /// [ctx] the parse tree
  void exitEnumConstant(EnumConstantContext ctx);

  /// Enter a parse tree produced by [Java9Parser.enumConstantModifier].
  /// [ctx] the parse tree
  void enterEnumConstantModifier(EnumConstantModifierContext ctx);
  /// Exit a parse tree produced by [Java9Parser.enumConstantModifier].
  /// [ctx] the parse tree
  void exitEnumConstantModifier(EnumConstantModifierContext ctx);

  /// Enter a parse tree produced by [Java9Parser.enumBodyDeclarations].
  /// [ctx] the parse tree
  void enterEnumBodyDeclarations(EnumBodyDeclarationsContext ctx);
  /// Exit a parse tree produced by [Java9Parser.enumBodyDeclarations].
  /// [ctx] the parse tree
  void exitEnumBodyDeclarations(EnumBodyDeclarationsContext ctx);

  /// Enter a parse tree produced by [Java9Parser.interfaceDeclaration].
  /// [ctx] the parse tree
  void enterInterfaceDeclaration(InterfaceDeclarationContext ctx);
  /// Exit a parse tree produced by [Java9Parser.interfaceDeclaration].
  /// [ctx] the parse tree
  void exitInterfaceDeclaration(InterfaceDeclarationContext ctx);

  /// Enter a parse tree produced by [Java9Parser.normalInterfaceDeclaration].
  /// [ctx] the parse tree
  void enterNormalInterfaceDeclaration(NormalInterfaceDeclarationContext ctx);
  /// Exit a parse tree produced by [Java9Parser.normalInterfaceDeclaration].
  /// [ctx] the parse tree
  void exitNormalInterfaceDeclaration(NormalInterfaceDeclarationContext ctx);

  /// Enter a parse tree produced by [Java9Parser.interfaceModifier].
  /// [ctx] the parse tree
  void enterInterfaceModifier(InterfaceModifierContext ctx);
  /// Exit a parse tree produced by [Java9Parser.interfaceModifier].
  /// [ctx] the parse tree
  void exitInterfaceModifier(InterfaceModifierContext ctx);

  /// Enter a parse tree produced by [Java9Parser.extendsInterfaces].
  /// [ctx] the parse tree
  void enterExtendsInterfaces(ExtendsInterfacesContext ctx);
  /// Exit a parse tree produced by [Java9Parser.extendsInterfaces].
  /// [ctx] the parse tree
  void exitExtendsInterfaces(ExtendsInterfacesContext ctx);

  /// Enter a parse tree produced by [Java9Parser.interfaceBody].
  /// [ctx] the parse tree
  void enterInterfaceBody(InterfaceBodyContext ctx);
  /// Exit a parse tree produced by [Java9Parser.interfaceBody].
  /// [ctx] the parse tree
  void exitInterfaceBody(InterfaceBodyContext ctx);

  /// Enter a parse tree produced by [Java9Parser.interfaceMemberDeclaration].
  /// [ctx] the parse tree
  void enterInterfaceMemberDeclaration(InterfaceMemberDeclarationContext ctx);
  /// Exit a parse tree produced by [Java9Parser.interfaceMemberDeclaration].
  /// [ctx] the parse tree
  void exitInterfaceMemberDeclaration(InterfaceMemberDeclarationContext ctx);

  /// Enter a parse tree produced by [Java9Parser.constantDeclaration].
  /// [ctx] the parse tree
  void enterConstantDeclaration(ConstantDeclarationContext ctx);
  /// Exit a parse tree produced by [Java9Parser.constantDeclaration].
  /// [ctx] the parse tree
  void exitConstantDeclaration(ConstantDeclarationContext ctx);

  /// Enter a parse tree produced by [Java9Parser.constantModifier].
  /// [ctx] the parse tree
  void enterConstantModifier(ConstantModifierContext ctx);
  /// Exit a parse tree produced by [Java9Parser.constantModifier].
  /// [ctx] the parse tree
  void exitConstantModifier(ConstantModifierContext ctx);

  /// Enter a parse tree produced by [Java9Parser.interfaceMethodDeclaration].
  /// [ctx] the parse tree
  void enterInterfaceMethodDeclaration(InterfaceMethodDeclarationContext ctx);
  /// Exit a parse tree produced by [Java9Parser.interfaceMethodDeclaration].
  /// [ctx] the parse tree
  void exitInterfaceMethodDeclaration(InterfaceMethodDeclarationContext ctx);

  /// Enter a parse tree produced by [Java9Parser.interfaceMethodModifier].
  /// [ctx] the parse tree
  void enterInterfaceMethodModifier(InterfaceMethodModifierContext ctx);
  /// Exit a parse tree produced by [Java9Parser.interfaceMethodModifier].
  /// [ctx] the parse tree
  void exitInterfaceMethodModifier(InterfaceMethodModifierContext ctx);

  /// Enter a parse tree produced by [Java9Parser.annotationTypeDeclaration].
  /// [ctx] the parse tree
  void enterAnnotationTypeDeclaration(AnnotationTypeDeclarationContext ctx);
  /// Exit a parse tree produced by [Java9Parser.annotationTypeDeclaration].
  /// [ctx] the parse tree
  void exitAnnotationTypeDeclaration(AnnotationTypeDeclarationContext ctx);

  /// Enter a parse tree produced by [Java9Parser.annotationTypeBody].
  /// [ctx] the parse tree
  void enterAnnotationTypeBody(AnnotationTypeBodyContext ctx);
  /// Exit a parse tree produced by [Java9Parser.annotationTypeBody].
  /// [ctx] the parse tree
  void exitAnnotationTypeBody(AnnotationTypeBodyContext ctx);

  /// Enter a parse tree produced by [Java9Parser.annotationTypeMemberDeclaration].
  /// [ctx] the parse tree
  void enterAnnotationTypeMemberDeclaration(AnnotationTypeMemberDeclarationContext ctx);
  /// Exit a parse tree produced by [Java9Parser.annotationTypeMemberDeclaration].
  /// [ctx] the parse tree
  void exitAnnotationTypeMemberDeclaration(AnnotationTypeMemberDeclarationContext ctx);

  /// Enter a parse tree produced by [Java9Parser.annotationTypeElementDeclaration].
  /// [ctx] the parse tree
  void enterAnnotationTypeElementDeclaration(AnnotationTypeElementDeclarationContext ctx);
  /// Exit a parse tree produced by [Java9Parser.annotationTypeElementDeclaration].
  /// [ctx] the parse tree
  void exitAnnotationTypeElementDeclaration(AnnotationTypeElementDeclarationContext ctx);

  /// Enter a parse tree produced by [Java9Parser.annotationTypeElementModifier].
  /// [ctx] the parse tree
  void enterAnnotationTypeElementModifier(AnnotationTypeElementModifierContext ctx);
  /// Exit a parse tree produced by [Java9Parser.annotationTypeElementModifier].
  /// [ctx] the parse tree
  void exitAnnotationTypeElementModifier(AnnotationTypeElementModifierContext ctx);

  /// Enter a parse tree produced by [Java9Parser.defaultValue].
  /// [ctx] the parse tree
  void enterDefaultValue(DefaultValueContext ctx);
  /// Exit a parse tree produced by [Java9Parser.defaultValue].
  /// [ctx] the parse tree
  void exitDefaultValue(DefaultValueContext ctx);

  /// Enter a parse tree produced by [Java9Parser.annotation].
  /// [ctx] the parse tree
  void enterAnnotation(AnnotationContext ctx);
  /// Exit a parse tree produced by [Java9Parser.annotation].
  /// [ctx] the parse tree
  void exitAnnotation(AnnotationContext ctx);

  /// Enter a parse tree produced by [Java9Parser.normalAnnotation].
  /// [ctx] the parse tree
  void enterNormalAnnotation(NormalAnnotationContext ctx);
  /// Exit a parse tree produced by [Java9Parser.normalAnnotation].
  /// [ctx] the parse tree
  void exitNormalAnnotation(NormalAnnotationContext ctx);

  /// Enter a parse tree produced by [Java9Parser.elementValuePairList].
  /// [ctx] the parse tree
  void enterElementValuePairList(ElementValuePairListContext ctx);
  /// Exit a parse tree produced by [Java9Parser.elementValuePairList].
  /// [ctx] the parse tree
  void exitElementValuePairList(ElementValuePairListContext ctx);

  /// Enter a parse tree produced by [Java9Parser.elementValuePair].
  /// [ctx] the parse tree
  void enterElementValuePair(ElementValuePairContext ctx);
  /// Exit a parse tree produced by [Java9Parser.elementValuePair].
  /// [ctx] the parse tree
  void exitElementValuePair(ElementValuePairContext ctx);

  /// Enter a parse tree produced by [Java9Parser.elementValue].
  /// [ctx] the parse tree
  void enterElementValue(ElementValueContext ctx);
  /// Exit a parse tree produced by [Java9Parser.elementValue].
  /// [ctx] the parse tree
  void exitElementValue(ElementValueContext ctx);

  /// Enter a parse tree produced by [Java9Parser.elementValueArrayInitializer].
  /// [ctx] the parse tree
  void enterElementValueArrayInitializer(ElementValueArrayInitializerContext ctx);
  /// Exit a parse tree produced by [Java9Parser.elementValueArrayInitializer].
  /// [ctx] the parse tree
  void exitElementValueArrayInitializer(ElementValueArrayInitializerContext ctx);

  /// Enter a parse tree produced by [Java9Parser.elementValueList].
  /// [ctx] the parse tree
  void enterElementValueList(ElementValueListContext ctx);
  /// Exit a parse tree produced by [Java9Parser.elementValueList].
  /// [ctx] the parse tree
  void exitElementValueList(ElementValueListContext ctx);

  /// Enter a parse tree produced by [Java9Parser.markerAnnotation].
  /// [ctx] the parse tree
  void enterMarkerAnnotation(MarkerAnnotationContext ctx);
  /// Exit a parse tree produced by [Java9Parser.markerAnnotation].
  /// [ctx] the parse tree
  void exitMarkerAnnotation(MarkerAnnotationContext ctx);

  /// Enter a parse tree produced by [Java9Parser.singleElementAnnotation].
  /// [ctx] the parse tree
  void enterSingleElementAnnotation(SingleElementAnnotationContext ctx);
  /// Exit a parse tree produced by [Java9Parser.singleElementAnnotation].
  /// [ctx] the parse tree
  void exitSingleElementAnnotation(SingleElementAnnotationContext ctx);

  /// Enter a parse tree produced by [Java9Parser.arrayInitializer].
  /// [ctx] the parse tree
  void enterArrayInitializer(ArrayInitializerContext ctx);
  /// Exit a parse tree produced by [Java9Parser.arrayInitializer].
  /// [ctx] the parse tree
  void exitArrayInitializer(ArrayInitializerContext ctx);

  /// Enter a parse tree produced by [Java9Parser.variableInitializerList].
  /// [ctx] the parse tree
  void enterVariableInitializerList(VariableInitializerListContext ctx);
  /// Exit a parse tree produced by [Java9Parser.variableInitializerList].
  /// [ctx] the parse tree
  void exitVariableInitializerList(VariableInitializerListContext ctx);

  /// Enter a parse tree produced by [Java9Parser.block].
  /// [ctx] the parse tree
  void enterBlock(BlockContext ctx);
  /// Exit a parse tree produced by [Java9Parser.block].
  /// [ctx] the parse tree
  void exitBlock(BlockContext ctx);

  /// Enter a parse tree produced by [Java9Parser.blockStatements].
  /// [ctx] the parse tree
  void enterBlockStatements(BlockStatementsContext ctx);
  /// Exit a parse tree produced by [Java9Parser.blockStatements].
  /// [ctx] the parse tree
  void exitBlockStatements(BlockStatementsContext ctx);

  /// Enter a parse tree produced by [Java9Parser.blockStatement].
  /// [ctx] the parse tree
  void enterBlockStatement(BlockStatementContext ctx);
  /// Exit a parse tree produced by [Java9Parser.blockStatement].
  /// [ctx] the parse tree
  void exitBlockStatement(BlockStatementContext ctx);

  /// Enter a parse tree produced by [Java9Parser.localVariableDeclarationStatement].
  /// [ctx] the parse tree
  void enterLocalVariableDeclarationStatement(LocalVariableDeclarationStatementContext ctx);
  /// Exit a parse tree produced by [Java9Parser.localVariableDeclarationStatement].
  /// [ctx] the parse tree
  void exitLocalVariableDeclarationStatement(LocalVariableDeclarationStatementContext ctx);

  /// Enter a parse tree produced by [Java9Parser.localVariableDeclaration].
  /// [ctx] the parse tree
  void enterLocalVariableDeclaration(LocalVariableDeclarationContext ctx);
  /// Exit a parse tree produced by [Java9Parser.localVariableDeclaration].
  /// [ctx] the parse tree
  void exitLocalVariableDeclaration(LocalVariableDeclarationContext ctx);

  /// Enter a parse tree produced by [Java9Parser.statement].
  /// [ctx] the parse tree
  void enterStatement(StatementContext ctx);
  /// Exit a parse tree produced by [Java9Parser.statement].
  /// [ctx] the parse tree
  void exitStatement(StatementContext ctx);

  /// Enter a parse tree produced by [Java9Parser.statementNoShortIf].
  /// [ctx] the parse tree
  void enterStatementNoShortIf(StatementNoShortIfContext ctx);
  /// Exit a parse tree produced by [Java9Parser.statementNoShortIf].
  /// [ctx] the parse tree
  void exitStatementNoShortIf(StatementNoShortIfContext ctx);

  /// Enter a parse tree produced by [Java9Parser.statementWithoutTrailingSubstatement].
  /// [ctx] the parse tree
  void enterStatementWithoutTrailingSubstatement(StatementWithoutTrailingSubstatementContext ctx);
  /// Exit a parse tree produced by [Java9Parser.statementWithoutTrailingSubstatement].
  /// [ctx] the parse tree
  void exitStatementWithoutTrailingSubstatement(StatementWithoutTrailingSubstatementContext ctx);

  /// Enter a parse tree produced by [Java9Parser.emptyStatement].
  /// [ctx] the parse tree
  void enterEmptyStatement(EmptyStatementContext ctx);
  /// Exit a parse tree produced by [Java9Parser.emptyStatement].
  /// [ctx] the parse tree
  void exitEmptyStatement(EmptyStatementContext ctx);

  /// Enter a parse tree produced by [Java9Parser.labeledStatement].
  /// [ctx] the parse tree
  void enterLabeledStatement(LabeledStatementContext ctx);
  /// Exit a parse tree produced by [Java9Parser.labeledStatement].
  /// [ctx] the parse tree
  void exitLabeledStatement(LabeledStatementContext ctx);

  /// Enter a parse tree produced by [Java9Parser.labeledStatementNoShortIf].
  /// [ctx] the parse tree
  void enterLabeledStatementNoShortIf(LabeledStatementNoShortIfContext ctx);
  /// Exit a parse tree produced by [Java9Parser.labeledStatementNoShortIf].
  /// [ctx] the parse tree
  void exitLabeledStatementNoShortIf(LabeledStatementNoShortIfContext ctx);

  /// Enter a parse tree produced by [Java9Parser.expressionStatement].
  /// [ctx] the parse tree
  void enterExpressionStatement(ExpressionStatementContext ctx);
  /// Exit a parse tree produced by [Java9Parser.expressionStatement].
  /// [ctx] the parse tree
  void exitExpressionStatement(ExpressionStatementContext ctx);

  /// Enter a parse tree produced by [Java9Parser.statementExpression].
  /// [ctx] the parse tree
  void enterStatementExpression(StatementExpressionContext ctx);
  /// Exit a parse tree produced by [Java9Parser.statementExpression].
  /// [ctx] the parse tree
  void exitStatementExpression(StatementExpressionContext ctx);

  /// Enter a parse tree produced by [Java9Parser.ifThenStatement].
  /// [ctx] the parse tree
  void enterIfThenStatement(IfThenStatementContext ctx);
  /// Exit a parse tree produced by [Java9Parser.ifThenStatement].
  /// [ctx] the parse tree
  void exitIfThenStatement(IfThenStatementContext ctx);

  /// Enter a parse tree produced by [Java9Parser.ifThenElseStatement].
  /// [ctx] the parse tree
  void enterIfThenElseStatement(IfThenElseStatementContext ctx);
  /// Exit a parse tree produced by [Java9Parser.ifThenElseStatement].
  /// [ctx] the parse tree
  void exitIfThenElseStatement(IfThenElseStatementContext ctx);

  /// Enter a parse tree produced by [Java9Parser.ifThenElseStatementNoShortIf].
  /// [ctx] the parse tree
  void enterIfThenElseStatementNoShortIf(IfThenElseStatementNoShortIfContext ctx);
  /// Exit a parse tree produced by [Java9Parser.ifThenElseStatementNoShortIf].
  /// [ctx] the parse tree
  void exitIfThenElseStatementNoShortIf(IfThenElseStatementNoShortIfContext ctx);

  /// Enter a parse tree produced by [Java9Parser.assertStatement].
  /// [ctx] the parse tree
  void enterAssertStatement(AssertStatementContext ctx);
  /// Exit a parse tree produced by [Java9Parser.assertStatement].
  /// [ctx] the parse tree
  void exitAssertStatement(AssertStatementContext ctx);

  /// Enter a parse tree produced by [Java9Parser.switchStatement].
  /// [ctx] the parse tree
  void enterSwitchStatement(SwitchStatementContext ctx);
  /// Exit a parse tree produced by [Java9Parser.switchStatement].
  /// [ctx] the parse tree
  void exitSwitchStatement(SwitchStatementContext ctx);

  /// Enter a parse tree produced by [Java9Parser.switchBlock].
  /// [ctx] the parse tree
  void enterSwitchBlock(SwitchBlockContext ctx);
  /// Exit a parse tree produced by [Java9Parser.switchBlock].
  /// [ctx] the parse tree
  void exitSwitchBlock(SwitchBlockContext ctx);

  /// Enter a parse tree produced by [Java9Parser.switchBlockStatementGroup].
  /// [ctx] the parse tree
  void enterSwitchBlockStatementGroup(SwitchBlockStatementGroupContext ctx);
  /// Exit a parse tree produced by [Java9Parser.switchBlockStatementGroup].
  /// [ctx] the parse tree
  void exitSwitchBlockStatementGroup(SwitchBlockStatementGroupContext ctx);

  /// Enter a parse tree produced by [Java9Parser.switchLabels].
  /// [ctx] the parse tree
  void enterSwitchLabels(SwitchLabelsContext ctx);
  /// Exit a parse tree produced by [Java9Parser.switchLabels].
  /// [ctx] the parse tree
  void exitSwitchLabels(SwitchLabelsContext ctx);

  /// Enter a parse tree produced by [Java9Parser.switchLabel].
  /// [ctx] the parse tree
  void enterSwitchLabel(SwitchLabelContext ctx);
  /// Exit a parse tree produced by [Java9Parser.switchLabel].
  /// [ctx] the parse tree
  void exitSwitchLabel(SwitchLabelContext ctx);

  /// Enter a parse tree produced by [Java9Parser.enumConstantName].
  /// [ctx] the parse tree
  void enterEnumConstantName(EnumConstantNameContext ctx);
  /// Exit a parse tree produced by [Java9Parser.enumConstantName].
  /// [ctx] the parse tree
  void exitEnumConstantName(EnumConstantNameContext ctx);

  /// Enter a parse tree produced by [Java9Parser.whileStatement].
  /// [ctx] the parse tree
  void enterWhileStatement(WhileStatementContext ctx);
  /// Exit a parse tree produced by [Java9Parser.whileStatement].
  /// [ctx] the parse tree
  void exitWhileStatement(WhileStatementContext ctx);

  /// Enter a parse tree produced by [Java9Parser.whileStatementNoShortIf].
  /// [ctx] the parse tree
  void enterWhileStatementNoShortIf(WhileStatementNoShortIfContext ctx);
  /// Exit a parse tree produced by [Java9Parser.whileStatementNoShortIf].
  /// [ctx] the parse tree
  void exitWhileStatementNoShortIf(WhileStatementNoShortIfContext ctx);

  /// Enter a parse tree produced by [Java9Parser.doStatement].
  /// [ctx] the parse tree
  void enterDoStatement(DoStatementContext ctx);
  /// Exit a parse tree produced by [Java9Parser.doStatement].
  /// [ctx] the parse tree
  void exitDoStatement(DoStatementContext ctx);

  /// Enter a parse tree produced by [Java9Parser.forStatement].
  /// [ctx] the parse tree
  void enterForStatement(ForStatementContext ctx);
  /// Exit a parse tree produced by [Java9Parser.forStatement].
  /// [ctx] the parse tree
  void exitForStatement(ForStatementContext ctx);

  /// Enter a parse tree produced by [Java9Parser.forStatementNoShortIf].
  /// [ctx] the parse tree
  void enterForStatementNoShortIf(ForStatementNoShortIfContext ctx);
  /// Exit a parse tree produced by [Java9Parser.forStatementNoShortIf].
  /// [ctx] the parse tree
  void exitForStatementNoShortIf(ForStatementNoShortIfContext ctx);

  /// Enter a parse tree produced by [Java9Parser.basicForStatement].
  /// [ctx] the parse tree
  void enterBasicForStatement(BasicForStatementContext ctx);
  /// Exit a parse tree produced by [Java9Parser.basicForStatement].
  /// [ctx] the parse tree
  void exitBasicForStatement(BasicForStatementContext ctx);

  /// Enter a parse tree produced by [Java9Parser.basicForStatementNoShortIf].
  /// [ctx] the parse tree
  void enterBasicForStatementNoShortIf(BasicForStatementNoShortIfContext ctx);
  /// Exit a parse tree produced by [Java9Parser.basicForStatementNoShortIf].
  /// [ctx] the parse tree
  void exitBasicForStatementNoShortIf(BasicForStatementNoShortIfContext ctx);

  /// Enter a parse tree produced by [Java9Parser.forInit].
  /// [ctx] the parse tree
  void enterForInit(ForInitContext ctx);
  /// Exit a parse tree produced by [Java9Parser.forInit].
  /// [ctx] the parse tree
  void exitForInit(ForInitContext ctx);

  /// Enter a parse tree produced by [Java9Parser.forUpdate].
  /// [ctx] the parse tree
  void enterForUpdate(ForUpdateContext ctx);
  /// Exit a parse tree produced by [Java9Parser.forUpdate].
  /// [ctx] the parse tree
  void exitForUpdate(ForUpdateContext ctx);

  /// Enter a parse tree produced by [Java9Parser.statementExpressionList].
  /// [ctx] the parse tree
  void enterStatementExpressionList(StatementExpressionListContext ctx);
  /// Exit a parse tree produced by [Java9Parser.statementExpressionList].
  /// [ctx] the parse tree
  void exitStatementExpressionList(StatementExpressionListContext ctx);

  /// Enter a parse tree produced by [Java9Parser.enhancedForStatement].
  /// [ctx] the parse tree
  void enterEnhancedForStatement(EnhancedForStatementContext ctx);
  /// Exit a parse tree produced by [Java9Parser.enhancedForStatement].
  /// [ctx] the parse tree
  void exitEnhancedForStatement(EnhancedForStatementContext ctx);

  /// Enter a parse tree produced by [Java9Parser.enhancedForStatementNoShortIf].
  /// [ctx] the parse tree
  void enterEnhancedForStatementNoShortIf(EnhancedForStatementNoShortIfContext ctx);
  /// Exit a parse tree produced by [Java9Parser.enhancedForStatementNoShortIf].
  /// [ctx] the parse tree
  void exitEnhancedForStatementNoShortIf(EnhancedForStatementNoShortIfContext ctx);

  /// Enter a parse tree produced by [Java9Parser.breakStatement].
  /// [ctx] the parse tree
  void enterBreakStatement(BreakStatementContext ctx);
  /// Exit a parse tree produced by [Java9Parser.breakStatement].
  /// [ctx] the parse tree
  void exitBreakStatement(BreakStatementContext ctx);

  /// Enter a parse tree produced by [Java9Parser.continueStatement].
  /// [ctx] the parse tree
  void enterContinueStatement(ContinueStatementContext ctx);
  /// Exit a parse tree produced by [Java9Parser.continueStatement].
  /// [ctx] the parse tree
  void exitContinueStatement(ContinueStatementContext ctx);

  /// Enter a parse tree produced by [Java9Parser.returnStatement].
  /// [ctx] the parse tree
  void enterReturnStatement(ReturnStatementContext ctx);
  /// Exit a parse tree produced by [Java9Parser.returnStatement].
  /// [ctx] the parse tree
  void exitReturnStatement(ReturnStatementContext ctx);

  /// Enter a parse tree produced by [Java9Parser.throwStatement].
  /// [ctx] the parse tree
  void enterThrowStatement(ThrowStatementContext ctx);
  /// Exit a parse tree produced by [Java9Parser.throwStatement].
  /// [ctx] the parse tree
  void exitThrowStatement(ThrowStatementContext ctx);

  /// Enter a parse tree produced by [Java9Parser.synchronizedStatement].
  /// [ctx] the parse tree
  void enterSynchronizedStatement(SynchronizedStatementContext ctx);
  /// Exit a parse tree produced by [Java9Parser.synchronizedStatement].
  /// [ctx] the parse tree
  void exitSynchronizedStatement(SynchronizedStatementContext ctx);

  /// Enter a parse tree produced by [Java9Parser.tryStatement].
  /// [ctx] the parse tree
  void enterTryStatement(TryStatementContext ctx);
  /// Exit a parse tree produced by [Java9Parser.tryStatement].
  /// [ctx] the parse tree
  void exitTryStatement(TryStatementContext ctx);

  /// Enter a parse tree produced by [Java9Parser.catches].
  /// [ctx] the parse tree
  void enterCatches(CatchesContext ctx);
  /// Exit a parse tree produced by [Java9Parser.catches].
  /// [ctx] the parse tree
  void exitCatches(CatchesContext ctx);

  /// Enter a parse tree produced by [Java9Parser.catchClause].
  /// [ctx] the parse tree
  void enterCatchClause(CatchClauseContext ctx);
  /// Exit a parse tree produced by [Java9Parser.catchClause].
  /// [ctx] the parse tree
  void exitCatchClause(CatchClauseContext ctx);

  /// Enter a parse tree produced by [Java9Parser.catchFormalParameter].
  /// [ctx] the parse tree
  void enterCatchFormalParameter(CatchFormalParameterContext ctx);
  /// Exit a parse tree produced by [Java9Parser.catchFormalParameter].
  /// [ctx] the parse tree
  void exitCatchFormalParameter(CatchFormalParameterContext ctx);

  /// Enter a parse tree produced by [Java9Parser.catchType].
  /// [ctx] the parse tree
  void enterCatchType(CatchTypeContext ctx);
  /// Exit a parse tree produced by [Java9Parser.catchType].
  /// [ctx] the parse tree
  void exitCatchType(CatchTypeContext ctx);

  /// Enter a parse tree produced by [Java9Parser.finally_].
  /// [ctx] the parse tree
  void enterFinally_(Finally_Context ctx);
  /// Exit a parse tree produced by [Java9Parser.finally_].
  /// [ctx] the parse tree
  void exitFinally_(Finally_Context ctx);

  /// Enter a parse tree produced by [Java9Parser.tryWithResourcesStatement].
  /// [ctx] the parse tree
  void enterTryWithResourcesStatement(TryWithResourcesStatementContext ctx);
  /// Exit a parse tree produced by [Java9Parser.tryWithResourcesStatement].
  /// [ctx] the parse tree
  void exitTryWithResourcesStatement(TryWithResourcesStatementContext ctx);

  /// Enter a parse tree produced by [Java9Parser.resourceSpecification].
  /// [ctx] the parse tree
  void enterResourceSpecification(ResourceSpecificationContext ctx);
  /// Exit a parse tree produced by [Java9Parser.resourceSpecification].
  /// [ctx] the parse tree
  void exitResourceSpecification(ResourceSpecificationContext ctx);

  /// Enter a parse tree produced by [Java9Parser.resourceList].
  /// [ctx] the parse tree
  void enterResourceList(ResourceListContext ctx);
  /// Exit a parse tree produced by [Java9Parser.resourceList].
  /// [ctx] the parse tree
  void exitResourceList(ResourceListContext ctx);

  /// Enter a parse tree produced by [Java9Parser.resource].
  /// [ctx] the parse tree
  void enterResource(ResourceContext ctx);
  /// Exit a parse tree produced by [Java9Parser.resource].
  /// [ctx] the parse tree
  void exitResource(ResourceContext ctx);

  /// Enter a parse tree produced by [Java9Parser.variableAccess].
  /// [ctx] the parse tree
  void enterVariableAccess(VariableAccessContext ctx);
  /// Exit a parse tree produced by [Java9Parser.variableAccess].
  /// [ctx] the parse tree
  void exitVariableAccess(VariableAccessContext ctx);

  /// Enter a parse tree produced by [Java9Parser.primary].
  /// [ctx] the parse tree
  void enterPrimary(PrimaryContext ctx);
  /// Exit a parse tree produced by [Java9Parser.primary].
  /// [ctx] the parse tree
  void exitPrimary(PrimaryContext ctx);

  /// Enter a parse tree produced by [Java9Parser.primaryNoNewArray].
  /// [ctx] the parse tree
  void enterPrimaryNoNewArray(PrimaryNoNewArrayContext ctx);
  /// Exit a parse tree produced by [Java9Parser.primaryNoNewArray].
  /// [ctx] the parse tree
  void exitPrimaryNoNewArray(PrimaryNoNewArrayContext ctx);

  /// Enter a parse tree produced by [Java9Parser.primaryNoNewArray_lf_arrayAccess].
  /// [ctx] the parse tree
  void enterPrimaryNoNewArray_lf_arrayAccess(PrimaryNoNewArray_lf_arrayAccessContext ctx);
  /// Exit a parse tree produced by [Java9Parser.primaryNoNewArray_lf_arrayAccess].
  /// [ctx] the parse tree
  void exitPrimaryNoNewArray_lf_arrayAccess(PrimaryNoNewArray_lf_arrayAccessContext ctx);

  /// Enter a parse tree produced by [Java9Parser.primaryNoNewArray_lfno_arrayAccess].
  /// [ctx] the parse tree
  void enterPrimaryNoNewArray_lfno_arrayAccess(PrimaryNoNewArray_lfno_arrayAccessContext ctx);
  /// Exit a parse tree produced by [Java9Parser.primaryNoNewArray_lfno_arrayAccess].
  /// [ctx] the parse tree
  void exitPrimaryNoNewArray_lfno_arrayAccess(PrimaryNoNewArray_lfno_arrayAccessContext ctx);

  /// Enter a parse tree produced by [Java9Parser.primaryNoNewArray_lf_primary].
  /// [ctx] the parse tree
  void enterPrimaryNoNewArray_lf_primary(PrimaryNoNewArray_lf_primaryContext ctx);
  /// Exit a parse tree produced by [Java9Parser.primaryNoNewArray_lf_primary].
  /// [ctx] the parse tree
  void exitPrimaryNoNewArray_lf_primary(PrimaryNoNewArray_lf_primaryContext ctx);

  /// Enter a parse tree produced by [Java9Parser.primaryNoNewArray_lf_primary_lf_arrayAccess_lf_primary].
  /// [ctx] the parse tree
  void enterPrimaryNoNewArray_lf_primary_lf_arrayAccess_lf_primary(PrimaryNoNewArray_lf_primary_lf_arrayAccess_lf_primaryContext ctx);
  /// Exit a parse tree produced by [Java9Parser.primaryNoNewArray_lf_primary_lf_arrayAccess_lf_primary].
  /// [ctx] the parse tree
  void exitPrimaryNoNewArray_lf_primary_lf_arrayAccess_lf_primary(PrimaryNoNewArray_lf_primary_lf_arrayAccess_lf_primaryContext ctx);

  /// Enter a parse tree produced by [Java9Parser.primaryNoNewArray_lf_primary_lfno_arrayAccess_lf_primary].
  /// [ctx] the parse tree
  void enterPrimaryNoNewArray_lf_primary_lfno_arrayAccess_lf_primary(PrimaryNoNewArray_lf_primary_lfno_arrayAccess_lf_primaryContext ctx);
  /// Exit a parse tree produced by [Java9Parser.primaryNoNewArray_lf_primary_lfno_arrayAccess_lf_primary].
  /// [ctx] the parse tree
  void exitPrimaryNoNewArray_lf_primary_lfno_arrayAccess_lf_primary(PrimaryNoNewArray_lf_primary_lfno_arrayAccess_lf_primaryContext ctx);

  /// Enter a parse tree produced by [Java9Parser.primaryNoNewArray_lfno_primary].
  /// [ctx] the parse tree
  void enterPrimaryNoNewArray_lfno_primary(PrimaryNoNewArray_lfno_primaryContext ctx);
  /// Exit a parse tree produced by [Java9Parser.primaryNoNewArray_lfno_primary].
  /// [ctx] the parse tree
  void exitPrimaryNoNewArray_lfno_primary(PrimaryNoNewArray_lfno_primaryContext ctx);

  /// Enter a parse tree produced by [Java9Parser.primaryNoNewArray_lfno_primary_lf_arrayAccess_lfno_primary].
  /// [ctx] the parse tree
  void enterPrimaryNoNewArray_lfno_primary_lf_arrayAccess_lfno_primary(PrimaryNoNewArray_lfno_primary_lf_arrayAccess_lfno_primaryContext ctx);
  /// Exit a parse tree produced by [Java9Parser.primaryNoNewArray_lfno_primary_lf_arrayAccess_lfno_primary].
  /// [ctx] the parse tree
  void exitPrimaryNoNewArray_lfno_primary_lf_arrayAccess_lfno_primary(PrimaryNoNewArray_lfno_primary_lf_arrayAccess_lfno_primaryContext ctx);

  /// Enter a parse tree produced by [Java9Parser.primaryNoNewArray_lfno_primary_lfno_arrayAccess_lfno_primary].
  /// [ctx] the parse tree
  void enterPrimaryNoNewArray_lfno_primary_lfno_arrayAccess_lfno_primary(PrimaryNoNewArray_lfno_primary_lfno_arrayAccess_lfno_primaryContext ctx);
  /// Exit a parse tree produced by [Java9Parser.primaryNoNewArray_lfno_primary_lfno_arrayAccess_lfno_primary].
  /// [ctx] the parse tree
  void exitPrimaryNoNewArray_lfno_primary_lfno_arrayAccess_lfno_primary(PrimaryNoNewArray_lfno_primary_lfno_arrayAccess_lfno_primaryContext ctx);

  /// Enter a parse tree produced by [Java9Parser.classLiteral].
  /// [ctx] the parse tree
  void enterClassLiteral(ClassLiteralContext ctx);
  /// Exit a parse tree produced by [Java9Parser.classLiteral].
  /// [ctx] the parse tree
  void exitClassLiteral(ClassLiteralContext ctx);

  /// Enter a parse tree produced by [Java9Parser.classInstanceCreationExpression].
  /// [ctx] the parse tree
  void enterClassInstanceCreationExpression(ClassInstanceCreationExpressionContext ctx);
  /// Exit a parse tree produced by [Java9Parser.classInstanceCreationExpression].
  /// [ctx] the parse tree
  void exitClassInstanceCreationExpression(ClassInstanceCreationExpressionContext ctx);

  /// Enter a parse tree produced by [Java9Parser.classInstanceCreationExpression_lf_primary].
  /// [ctx] the parse tree
  void enterClassInstanceCreationExpression_lf_primary(ClassInstanceCreationExpression_lf_primaryContext ctx);
  /// Exit a parse tree produced by [Java9Parser.classInstanceCreationExpression_lf_primary].
  /// [ctx] the parse tree
  void exitClassInstanceCreationExpression_lf_primary(ClassInstanceCreationExpression_lf_primaryContext ctx);

  /// Enter a parse tree produced by [Java9Parser.classInstanceCreationExpression_lfno_primary].
  /// [ctx] the parse tree
  void enterClassInstanceCreationExpression_lfno_primary(ClassInstanceCreationExpression_lfno_primaryContext ctx);
  /// Exit a parse tree produced by [Java9Parser.classInstanceCreationExpression_lfno_primary].
  /// [ctx] the parse tree
  void exitClassInstanceCreationExpression_lfno_primary(ClassInstanceCreationExpression_lfno_primaryContext ctx);

  /// Enter a parse tree produced by [Java9Parser.typeArgumentsOrDiamond].
  /// [ctx] the parse tree
  void enterTypeArgumentsOrDiamond(TypeArgumentsOrDiamondContext ctx);
  /// Exit a parse tree produced by [Java9Parser.typeArgumentsOrDiamond].
  /// [ctx] the parse tree
  void exitTypeArgumentsOrDiamond(TypeArgumentsOrDiamondContext ctx);

  /// Enter a parse tree produced by [Java9Parser.fieldAccess].
  /// [ctx] the parse tree
  void enterFieldAccess(FieldAccessContext ctx);
  /// Exit a parse tree produced by [Java9Parser.fieldAccess].
  /// [ctx] the parse tree
  void exitFieldAccess(FieldAccessContext ctx);

  /// Enter a parse tree produced by [Java9Parser.fieldAccess_lf_primary].
  /// [ctx] the parse tree
  void enterFieldAccess_lf_primary(FieldAccess_lf_primaryContext ctx);
  /// Exit a parse tree produced by [Java9Parser.fieldAccess_lf_primary].
  /// [ctx] the parse tree
  void exitFieldAccess_lf_primary(FieldAccess_lf_primaryContext ctx);

  /// Enter a parse tree produced by [Java9Parser.fieldAccess_lfno_primary].
  /// [ctx] the parse tree
  void enterFieldAccess_lfno_primary(FieldAccess_lfno_primaryContext ctx);
  /// Exit a parse tree produced by [Java9Parser.fieldAccess_lfno_primary].
  /// [ctx] the parse tree
  void exitFieldAccess_lfno_primary(FieldAccess_lfno_primaryContext ctx);

  /// Enter a parse tree produced by [Java9Parser.arrayAccess].
  /// [ctx] the parse tree
  void enterArrayAccess(ArrayAccessContext ctx);
  /// Exit a parse tree produced by [Java9Parser.arrayAccess].
  /// [ctx] the parse tree
  void exitArrayAccess(ArrayAccessContext ctx);

  /// Enter a parse tree produced by [Java9Parser.arrayAccess_lf_primary].
  /// [ctx] the parse tree
  void enterArrayAccess_lf_primary(ArrayAccess_lf_primaryContext ctx);
  /// Exit a parse tree produced by [Java9Parser.arrayAccess_lf_primary].
  /// [ctx] the parse tree
  void exitArrayAccess_lf_primary(ArrayAccess_lf_primaryContext ctx);

  /// Enter a parse tree produced by [Java9Parser.arrayAccess_lfno_primary].
  /// [ctx] the parse tree
  void enterArrayAccess_lfno_primary(ArrayAccess_lfno_primaryContext ctx);
  /// Exit a parse tree produced by [Java9Parser.arrayAccess_lfno_primary].
  /// [ctx] the parse tree
  void exitArrayAccess_lfno_primary(ArrayAccess_lfno_primaryContext ctx);

  /// Enter a parse tree produced by [Java9Parser.methodInvocation].
  /// [ctx] the parse tree
  void enterMethodInvocation(MethodInvocationContext ctx);
  /// Exit a parse tree produced by [Java9Parser.methodInvocation].
  /// [ctx] the parse tree
  void exitMethodInvocation(MethodInvocationContext ctx);

  /// Enter a parse tree produced by [Java9Parser.methodInvocation_lf_primary].
  /// [ctx] the parse tree
  void enterMethodInvocation_lf_primary(MethodInvocation_lf_primaryContext ctx);
  /// Exit a parse tree produced by [Java9Parser.methodInvocation_lf_primary].
  /// [ctx] the parse tree
  void exitMethodInvocation_lf_primary(MethodInvocation_lf_primaryContext ctx);

  /// Enter a parse tree produced by [Java9Parser.methodInvocation_lfno_primary].
  /// [ctx] the parse tree
  void enterMethodInvocation_lfno_primary(MethodInvocation_lfno_primaryContext ctx);
  /// Exit a parse tree produced by [Java9Parser.methodInvocation_lfno_primary].
  /// [ctx] the parse tree
  void exitMethodInvocation_lfno_primary(MethodInvocation_lfno_primaryContext ctx);

  /// Enter a parse tree produced by [Java9Parser.argumentList].
  /// [ctx] the parse tree
  void enterArgumentList(ArgumentListContext ctx);
  /// Exit a parse tree produced by [Java9Parser.argumentList].
  /// [ctx] the parse tree
  void exitArgumentList(ArgumentListContext ctx);

  /// Enter a parse tree produced by [Java9Parser.methodReference].
  /// [ctx] the parse tree
  void enterMethodReference(MethodReferenceContext ctx);
  /// Exit a parse tree produced by [Java9Parser.methodReference].
  /// [ctx] the parse tree
  void exitMethodReference(MethodReferenceContext ctx);

  /// Enter a parse tree produced by [Java9Parser.methodReference_lf_primary].
  /// [ctx] the parse tree
  void enterMethodReference_lf_primary(MethodReference_lf_primaryContext ctx);
  /// Exit a parse tree produced by [Java9Parser.methodReference_lf_primary].
  /// [ctx] the parse tree
  void exitMethodReference_lf_primary(MethodReference_lf_primaryContext ctx);

  /// Enter a parse tree produced by [Java9Parser.methodReference_lfno_primary].
  /// [ctx] the parse tree
  void enterMethodReference_lfno_primary(MethodReference_lfno_primaryContext ctx);
  /// Exit a parse tree produced by [Java9Parser.methodReference_lfno_primary].
  /// [ctx] the parse tree
  void exitMethodReference_lfno_primary(MethodReference_lfno_primaryContext ctx);

  /// Enter a parse tree produced by [Java9Parser.arrayCreationExpression].
  /// [ctx] the parse tree
  void enterArrayCreationExpression(ArrayCreationExpressionContext ctx);
  /// Exit a parse tree produced by [Java9Parser.arrayCreationExpression].
  /// [ctx] the parse tree
  void exitArrayCreationExpression(ArrayCreationExpressionContext ctx);

  /// Enter a parse tree produced by [Java9Parser.dimExprs].
  /// [ctx] the parse tree
  void enterDimExprs(DimExprsContext ctx);
  /// Exit a parse tree produced by [Java9Parser.dimExprs].
  /// [ctx] the parse tree
  void exitDimExprs(DimExprsContext ctx);

  /// Enter a parse tree produced by [Java9Parser.dimExpr].
  /// [ctx] the parse tree
  void enterDimExpr(DimExprContext ctx);
  /// Exit a parse tree produced by [Java9Parser.dimExpr].
  /// [ctx] the parse tree
  void exitDimExpr(DimExprContext ctx);

  /// Enter a parse tree produced by [Java9Parser.constantExpression].
  /// [ctx] the parse tree
  void enterConstantExpression(ConstantExpressionContext ctx);
  /// Exit a parse tree produced by [Java9Parser.constantExpression].
  /// [ctx] the parse tree
  void exitConstantExpression(ConstantExpressionContext ctx);

  /// Enter a parse tree produced by [Java9Parser.expression].
  /// [ctx] the parse tree
  void enterExpression(ExpressionContext ctx);
  /// Exit a parse tree produced by [Java9Parser.expression].
  /// [ctx] the parse tree
  void exitExpression(ExpressionContext ctx);

  /// Enter a parse tree produced by [Java9Parser.lambdaExpression].
  /// [ctx] the parse tree
  void enterLambdaExpression(LambdaExpressionContext ctx);
  /// Exit a parse tree produced by [Java9Parser.lambdaExpression].
  /// [ctx] the parse tree
  void exitLambdaExpression(LambdaExpressionContext ctx);

  /// Enter a parse tree produced by [Java9Parser.lambdaParameters].
  /// [ctx] the parse tree
  void enterLambdaParameters(LambdaParametersContext ctx);
  /// Exit a parse tree produced by [Java9Parser.lambdaParameters].
  /// [ctx] the parse tree
  void exitLambdaParameters(LambdaParametersContext ctx);

  /// Enter a parse tree produced by [Java9Parser.inferredFormalParameterList].
  /// [ctx] the parse tree
  void enterInferredFormalParameterList(InferredFormalParameterListContext ctx);
  /// Exit a parse tree produced by [Java9Parser.inferredFormalParameterList].
  /// [ctx] the parse tree
  void exitInferredFormalParameterList(InferredFormalParameterListContext ctx);

  /// Enter a parse tree produced by [Java9Parser.lambdaBody].
  /// [ctx] the parse tree
  void enterLambdaBody(LambdaBodyContext ctx);
  /// Exit a parse tree produced by [Java9Parser.lambdaBody].
  /// [ctx] the parse tree
  void exitLambdaBody(LambdaBodyContext ctx);

  /// Enter a parse tree produced by [Java9Parser.assignmentExpression].
  /// [ctx] the parse tree
  void enterAssignmentExpression(AssignmentExpressionContext ctx);
  /// Exit a parse tree produced by [Java9Parser.assignmentExpression].
  /// [ctx] the parse tree
  void exitAssignmentExpression(AssignmentExpressionContext ctx);

  /// Enter a parse tree produced by [Java9Parser.assignment].
  /// [ctx] the parse tree
  void enterAssignment(AssignmentContext ctx);
  /// Exit a parse tree produced by [Java9Parser.assignment].
  /// [ctx] the parse tree
  void exitAssignment(AssignmentContext ctx);

  /// Enter a parse tree produced by [Java9Parser.leftHandSide].
  /// [ctx] the parse tree
  void enterLeftHandSide(LeftHandSideContext ctx);
  /// Exit a parse tree produced by [Java9Parser.leftHandSide].
  /// [ctx] the parse tree
  void exitLeftHandSide(LeftHandSideContext ctx);

  /// Enter a parse tree produced by [Java9Parser.assignmentOperator].
  /// [ctx] the parse tree
  void enterAssignmentOperator(AssignmentOperatorContext ctx);
  /// Exit a parse tree produced by [Java9Parser.assignmentOperator].
  /// [ctx] the parse tree
  void exitAssignmentOperator(AssignmentOperatorContext ctx);

  /// Enter a parse tree produced by [Java9Parser.conditionalExpression].
  /// [ctx] the parse tree
  void enterConditionalExpression(ConditionalExpressionContext ctx);
  /// Exit a parse tree produced by [Java9Parser.conditionalExpression].
  /// [ctx] the parse tree
  void exitConditionalExpression(ConditionalExpressionContext ctx);

  /// Enter a parse tree produced by [Java9Parser.conditionalOrExpression].
  /// [ctx] the parse tree
  void enterConditionalOrExpression(ConditionalOrExpressionContext ctx);
  /// Exit a parse tree produced by [Java9Parser.conditionalOrExpression].
  /// [ctx] the parse tree
  void exitConditionalOrExpression(ConditionalOrExpressionContext ctx);

  /// Enter a parse tree produced by [Java9Parser.conditionalAndExpression].
  /// [ctx] the parse tree
  void enterConditionalAndExpression(ConditionalAndExpressionContext ctx);
  /// Exit a parse tree produced by [Java9Parser.conditionalAndExpression].
  /// [ctx] the parse tree
  void exitConditionalAndExpression(ConditionalAndExpressionContext ctx);

  /// Enter a parse tree produced by [Java9Parser.inclusiveOrExpression].
  /// [ctx] the parse tree
  void enterInclusiveOrExpression(InclusiveOrExpressionContext ctx);
  /// Exit a parse tree produced by [Java9Parser.inclusiveOrExpression].
  /// [ctx] the parse tree
  void exitInclusiveOrExpression(InclusiveOrExpressionContext ctx);

  /// Enter a parse tree produced by [Java9Parser.exclusiveOrExpression].
  /// [ctx] the parse tree
  void enterExclusiveOrExpression(ExclusiveOrExpressionContext ctx);
  /// Exit a parse tree produced by [Java9Parser.exclusiveOrExpression].
  /// [ctx] the parse tree
  void exitExclusiveOrExpression(ExclusiveOrExpressionContext ctx);

  /// Enter a parse tree produced by [Java9Parser.andExpression].
  /// [ctx] the parse tree
  void enterAndExpression(AndExpressionContext ctx);
  /// Exit a parse tree produced by [Java9Parser.andExpression].
  /// [ctx] the parse tree
  void exitAndExpression(AndExpressionContext ctx);

  /// Enter a parse tree produced by [Java9Parser.equalityExpression].
  /// [ctx] the parse tree
  void enterEqualityExpression(EqualityExpressionContext ctx);
  /// Exit a parse tree produced by [Java9Parser.equalityExpression].
  /// [ctx] the parse tree
  void exitEqualityExpression(EqualityExpressionContext ctx);

  /// Enter a parse tree produced by [Java9Parser.relationalExpression].
  /// [ctx] the parse tree
  void enterRelationalExpression(RelationalExpressionContext ctx);
  /// Exit a parse tree produced by [Java9Parser.relationalExpression].
  /// [ctx] the parse tree
  void exitRelationalExpression(RelationalExpressionContext ctx);

  /// Enter a parse tree produced by [Java9Parser.shiftExpression].
  /// [ctx] the parse tree
  void enterShiftExpression(ShiftExpressionContext ctx);
  /// Exit a parse tree produced by [Java9Parser.shiftExpression].
  /// [ctx] the parse tree
  void exitShiftExpression(ShiftExpressionContext ctx);

  /// Enter a parse tree produced by [Java9Parser.additiveExpression].
  /// [ctx] the parse tree
  void enterAdditiveExpression(AdditiveExpressionContext ctx);
  /// Exit a parse tree produced by [Java9Parser.additiveExpression].
  /// [ctx] the parse tree
  void exitAdditiveExpression(AdditiveExpressionContext ctx);

  /// Enter a parse tree produced by [Java9Parser.multiplicativeExpression].
  /// [ctx] the parse tree
  void enterMultiplicativeExpression(MultiplicativeExpressionContext ctx);
  /// Exit a parse tree produced by [Java9Parser.multiplicativeExpression].
  /// [ctx] the parse tree
  void exitMultiplicativeExpression(MultiplicativeExpressionContext ctx);

  /// Enter a parse tree produced by [Java9Parser.unaryExpression].
  /// [ctx] the parse tree
  void enterUnaryExpression(UnaryExpressionContext ctx);
  /// Exit a parse tree produced by [Java9Parser.unaryExpression].
  /// [ctx] the parse tree
  void exitUnaryExpression(UnaryExpressionContext ctx);

  /// Enter a parse tree produced by [Java9Parser.preIncrementExpression].
  /// [ctx] the parse tree
  void enterPreIncrementExpression(PreIncrementExpressionContext ctx);
  /// Exit a parse tree produced by [Java9Parser.preIncrementExpression].
  /// [ctx] the parse tree
  void exitPreIncrementExpression(PreIncrementExpressionContext ctx);

  /// Enter a parse tree produced by [Java9Parser.preDecrementExpression].
  /// [ctx] the parse tree
  void enterPreDecrementExpression(PreDecrementExpressionContext ctx);
  /// Exit a parse tree produced by [Java9Parser.preDecrementExpression].
  /// [ctx] the parse tree
  void exitPreDecrementExpression(PreDecrementExpressionContext ctx);

  /// Enter a parse tree produced by [Java9Parser.unaryExpressionNotPlusMinus].
  /// [ctx] the parse tree
  void enterUnaryExpressionNotPlusMinus(UnaryExpressionNotPlusMinusContext ctx);
  /// Exit a parse tree produced by [Java9Parser.unaryExpressionNotPlusMinus].
  /// [ctx] the parse tree
  void exitUnaryExpressionNotPlusMinus(UnaryExpressionNotPlusMinusContext ctx);

  /// Enter a parse tree produced by [Java9Parser.postfixExpression].
  /// [ctx] the parse tree
  void enterPostfixExpression(PostfixExpressionContext ctx);
  /// Exit a parse tree produced by [Java9Parser.postfixExpression].
  /// [ctx] the parse tree
  void exitPostfixExpression(PostfixExpressionContext ctx);

  /// Enter a parse tree produced by [Java9Parser.postIncrementExpression].
  /// [ctx] the parse tree
  void enterPostIncrementExpression(PostIncrementExpressionContext ctx);
  /// Exit a parse tree produced by [Java9Parser.postIncrementExpression].
  /// [ctx] the parse tree
  void exitPostIncrementExpression(PostIncrementExpressionContext ctx);

  /// Enter a parse tree produced by [Java9Parser.postIncrementExpression_lf_postfixExpression].
  /// [ctx] the parse tree
  void enterPostIncrementExpression_lf_postfixExpression(PostIncrementExpression_lf_postfixExpressionContext ctx);
  /// Exit a parse tree produced by [Java9Parser.postIncrementExpression_lf_postfixExpression].
  /// [ctx] the parse tree
  void exitPostIncrementExpression_lf_postfixExpression(PostIncrementExpression_lf_postfixExpressionContext ctx);

  /// Enter a parse tree produced by [Java9Parser.postDecrementExpression].
  /// [ctx] the parse tree
  void enterPostDecrementExpression(PostDecrementExpressionContext ctx);
  /// Exit a parse tree produced by [Java9Parser.postDecrementExpression].
  /// [ctx] the parse tree
  void exitPostDecrementExpression(PostDecrementExpressionContext ctx);

  /// Enter a parse tree produced by [Java9Parser.postDecrementExpression_lf_postfixExpression].
  /// [ctx] the parse tree
  void enterPostDecrementExpression_lf_postfixExpression(PostDecrementExpression_lf_postfixExpressionContext ctx);
  /// Exit a parse tree produced by [Java9Parser.postDecrementExpression_lf_postfixExpression].
  /// [ctx] the parse tree
  void exitPostDecrementExpression_lf_postfixExpression(PostDecrementExpression_lf_postfixExpressionContext ctx);

  /// Enter a parse tree produced by [Java9Parser.castExpression].
  /// [ctx] the parse tree
  void enterCastExpression(CastExpressionContext ctx);
  /// Exit a parse tree produced by [Java9Parser.castExpression].
  /// [ctx] the parse tree
  void exitCastExpression(CastExpressionContext ctx);

  /// Enter a parse tree produced by [Java9Parser.identifier].
  /// [ctx] the parse tree
  void enterIdentifier(IdentifierContext ctx);
  /// Exit a parse tree produced by [Java9Parser.identifier].
  /// [ctx] the parse tree
  void exitIdentifier(IdentifierContext ctx);
}