import 'package:dart_native_codegen/parser/java/Java9BaseListener.dart';
import 'package:dart_native_codegen/parser/java/Java9Parser.dart';

import '../common.dart';
import 'dn_java_context.dart';
import 'dn_java_generater.dart';

class DNJavaParserListener extends Java9BaseListener {
  JavaFile javaFile;
  Callback callback;
  DNRootContext rootContext;
  DNContext currentContext;

  DNJavaParserListener(JavaFile javaFile, Callback callback) {
    this.javaFile = javaFile;
    this.callback = callback;
  }

  buildDart() {
    var dart = this.rootContext.parse();
    this.callback(dart);
  }

  @override
  void enterCompilationUnit(CompilationUnitContext ctx) {
    this.rootContext = DNRootContext(ctx, javaFile);
    this.currentContext = rootContext.enter(currentContext);
  }

  @override
  void exitCompilationUnit(CompilationUnitContext ctx) {
    buildDart();
  }

  @override
  void enterPackageDeclaration(PackageDeclarationContext ctx) {
    rootContext.setPackageName(ctx.packageName().text);
  }

  @override
  void enterClassDeclaration(ClassDeclarationContext ctx) {
    DNClassContext context = new DNClassContext(ctx);
    currentContext = context.enter(currentContext);
  }

  @override
  void exitClassDeclaration(ClassDeclarationContext ctx) {
    this.currentContext = currentContext.exit();
  }

  @override
  void enterFieldDeclaration(FieldDeclarationContext ctx) {
    DNFieldContext context = new DNFieldContext(ctx);
    currentContext = context.enter(currentContext);
  }

  @override
  void exitFieldDeclaration(FieldDeclarationContext ctx) {
    currentContext = currentContext.exit();
  }

  @override
  void enterInterfaceDeclaration(InterfaceDeclarationContext ctx) {
    DNInterfaceContext context = new DNInterfaceContext(ctx);
    currentContext = context.enter(currentContext);
  }

  @override
  void exitInterfaceDeclaration(InterfaceDeclarationContext ctx) {
    currentContext.exit();
  }

  @override
  void enterMethodDeclaration(MethodDeclarationContext ctx) {
    DNMethodContext methodContext = new DNMethodContext(ctx);
    currentContext = methodContext.enter(currentContext);
  }

  @override
  void exitMethodDeclaration(MethodDeclarationContext ctx) {
    currentContext = currentContext.exit();
  }

  @override
  void enterImportDeclaration(ImportDeclarationContext ctx) {
    rootContext.addImport(ctx);
  }

  @override
  void enterInterfaceMethodDeclaration(InterfaceMethodDeclarationContext ctx) {
    DNInterfaceMethodDeclaration context =
        new DNInterfaceMethodDeclaration(ctx);
    currentContext = context.enter(currentContext);
  }

  @override
  void exitInterfaceMethodDeclaration(InterfaceMethodDeclarationContext ctx) {
    currentContext = currentContext.exit();
  }
}
