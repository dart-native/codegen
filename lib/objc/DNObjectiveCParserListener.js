var ObjectiveCParserListener = require('../../parser/objc/ObjectiveCParserListener').ObjectiveCParserListener
var ObjectiveCParser = require('../../parser/objc/ObjectiveCParser').ObjectiveCParser
var DNObjectiveCTypeConverter = require('./DNObjectiveCTypeConverter').DNObjectiveCTypeConverter
var TC = new DNObjectiveCTypeConverter
var c = require('./DNObjectiveCContext')
var DNRootContext = c.DNRootContext,
    DNImportContext = c.DNImportContext,
    DNBlockDefContext = c.DNBlockDefContext,
    DNEnumDefContext = c.DNEnumDefContext,
    DNClassContext = c.DNClassContext,
    DNCategoryContext = c.DNCategoryContext,
    DNProtocolContext = c.DNProtocolContext,
    DNMethodContext = c.DNMethodContext,
    DNMethodDeclarationContext = c.DNMethodDeclarationContext,
    DNPropertyContext = c.DNPropertyContext,
    DNArgumentContext = c.DNArgumentContext


// This class defines a complete listener for a parse tree produced by ObjectiveCParser.
class DNObjectiveCParserListener extends ObjectiveCParserListener {
    constructor(cb,path) {
        super()
        ObjectiveCParserListener.call(this)
        //success callack
        this.cb = cb
        this.path = path
    }

    buildDart() {
        var dart = this.rootContext.parse()
        this.cb(dart,this.path,null)
    }
    
    // Enter a parse tree produced by ObjectiveCParser#translationUnit.
    enterTranslationUnit(ctx) {
        this.rootContext = new DNRootContext(ctx)
        this.currentContext = this.rootContext
    }
    // Exit a parse tree produced by ObjectiveCParser#translationUnit.
    exitTranslationUnit(ctx) {
        this.buildDart()
    }
    // Enter a parse tree produced by ObjectiveCParser#topLevelDeclaration.
    enterTopLevelDeclaration(ctx) {
    }
    // Exit a parse tree produced by ObjectiveCParser#topLevelDeclaration.
    exitTopLevelDeclaration(ctx) {
    }
    // Enter a parse tree produced by ObjectiveCParser#importDeclaration.
    enterImportDeclaration(ctx) {
        var importDecl = new DNImportContext(ctx)
        this.currentContext.addChild(importDecl)
    }
    // Exit a parse tree produced by ObjectiveCParser#importDeclaration.
    exitImportDeclaration(ctx) {
    }
    // Enter a parse tree produced by ObjectiveCParser#classInterface.
    enterClassInterface(ctx) {
        var classInterface = new DNClassContext(ctx)
        this.currentContext.addChild(classInterface)
        this.currentContext = classInterface
    }
    // Exit a parse tree produced by ObjectiveCParser#classInterface.
    exitClassInterface(ctx) {
        this.currentContext = this.currentContext.parent
    }
    // Enter a parse tree produced by ObjectiveCParser#categoryInterface.
    enterCategoryInterface(ctx) {
        var categoryInterface = new DNCategoryContext(ctx)
        this.currentContext.addChild(categoryInterface)
        this.currentContext = categoryInterface
    }
    // Exit a parse tree produced by ObjectiveCParser#categoryInterface.
    exitCategoryInterface(ctx) {
        this.currentContext = this.currentContext.parent
    }
    // Enter a parse tree produced by ObjectiveCParser#classImplementation.
    enterClassImplementation(ctx) {
    }
    // Exit a parse tree produced by ObjectiveCParser#classImplementation.
    exitClassImplementation(ctx) {
    }
    // Enter a parse tree produced by ObjectiveCParser#categoryImplementation.
    enterCategoryImplementation(ctx) {
    }
    // Exit a parse tree produced by ObjectiveCParser#categoryImplementation.
    exitCategoryImplementation(ctx) {
    }
    // Enter a parse tree produced by ObjectiveCParser#genericTypeSpecifier.
    enterGenericTypeSpecifier(ctx) {
    }
    // Exit a parse tree produced by ObjectiveCParser#genericTypeSpecifier.
    exitGenericTypeSpecifier(ctx) {
    }
    // Enter a parse tree produced by ObjectiveCParser#protocolDeclaration.
    enterProtocolDeclaration(ctx) {
        var protocol = new DNProtocolContext(ctx)
        this.currentContext.addChild(protocol)
        this.currentContext = protocol
    }
    // Exit a parse tree produced by ObjectiveCParser#protocolDeclaration.
    exitProtocolDeclaration(ctx) {
        this.currentContext = this.currentContext.parent
    }
    // Enter a parse tree produced by ObjectiveCParser#protocolDeclarationSection.
    enterProtocolDeclarationSection(ctx) {
    }
    // Exit a parse tree produced by ObjectiveCParser#protocolDeclarationSection.
    exitProtocolDeclarationSection(ctx) {
    }
    // Enter a parse tree produced by ObjectiveCParser#protocolDeclarationList.
    enterProtocolDeclarationList(ctx) {
    }
    // Exit a parse tree produced by ObjectiveCParser#protocolDeclarationList.
    exitProtocolDeclarationList(ctx) {
    }
    // Enter a parse tree produced by ObjectiveCParser#classDeclarationList.
    enterClassDeclarationList(ctx) {
    }
    // Exit a parse tree produced by ObjectiveCParser#classDeclarationList.
    exitClassDeclarationList(ctx) {
    }
    // Enter a parse tree produced by ObjectiveCParser#protocolList.
    enterProtocolList(ctx) {
        ctx.children.forEach(element => {
            if (element instanceof ObjectiveCParser.ProtocolNameContext) {
                if (this.currentContext instanceof DNArgumentContext) {
                    this.currentContext.type = element.start.text
                } else if (this.currentContext instanceof DNPropertyContext) {
                    this.currentContext.type = element.start.text
                } else {
                    this.currentContext.protocols.push(element.start.text)
                }
            }
        })
    }
    // Exit a parse tree produced by ObjectiveCParser#protocolList.
    exitProtocolList(ctx) {
    }
    // Enter a parse tree produced by ObjectiveCParser#propertyDeclaration.
    enterPropertyDeclaration(ctx) {
        var property = new DNPropertyContext(ctx)
        this.currentContext.addChild(property)
        this.currentContext = property
    }
    // Exit a parse tree produced by ObjectiveCParser#propertyDeclaration.
    exitPropertyDeclaration(ctx) {
        var property = this.currentContext
        this.currentContext = this.currentContext.parent
        this.currentContext.properties.push(property)
    }
    // Enter a parse tree produced by ObjectiveCParser#propertyAttributesList.
    enterPropertyAttributesList(ctx) {
    }
    // Exit a parse tree produced by ObjectiveCParser#propertyAttributesList.
    exitPropertyAttributesList(ctx) {
    }
    // Enter a parse tree produced by ObjectiveCParser#propertyAttribute.
    enterPropertyAttribute(ctx) {
        if (ctx.start.text == 'class') {
            this.currentContext.isClassProperty = true
        }
    }
    // Exit a parse tree produced by ObjectiveCParser#propertyAttribute.
    exitPropertyAttribute(ctx) {
    }
    // Enter a parse tree produced by ObjectiveCParser#protocolName.
    enterProtocolName(ctx) {
    }
    // Exit a parse tree produced by ObjectiveCParser#protocolName.
    exitProtocolName(ctx) {
    }
    // Enter a parse tree produced by ObjectiveCParser#instanceVariables.
    enterInstanceVariables(ctx) {
    }
    // Exit a parse tree produced by ObjectiveCParser#instanceVariables.
    exitInstanceVariables(ctx) {
    }
    // Enter a parse tree produced by ObjectiveCParser#visibilitySection.
    enterVisibilitySection(ctx) {
    }
    // Exit a parse tree produced by ObjectiveCParser#visibilitySection.
    exitVisibilitySection(ctx) {
    }
    // Enter a parse tree produced by ObjectiveCParser#accessModifier.
    enterAccessModifier(ctx) {
    }
    // Exit a parse tree produced by ObjectiveCParser#accessModifier.
    exitAccessModifier(ctx) {
    }
    // Enter a parse tree produced by ObjectiveCParser#interfaceDeclarationList.
    enterInterfaceDeclarationList(ctx) {
    }
    // Exit a parse tree produced by ObjectiveCParser#interfaceDeclarationList.
    exitInterfaceDeclarationList(ctx) {
    }
    // Enter a parse tree produced by ObjectiveCParser#classMethodDeclaration.
    enterClassMethodDeclaration(ctx) {
        var isProtocolCtx = this.currentContext instanceof DNProtocolContext
        var method = isProtocolCtx ? new DNMethodDeclarationContext(ctx) : new DNMethodContext(ctx);
        method.isClassMethod = true
        this.currentContext.addChild(method)
        this.currentContext = method
    }
    // Exit a parse tree produced by ObjectiveCParser#classMethodDeclaration.
    exitClassMethodDeclaration(ctx) {
        var method = this.currentContext
        this.currentContext = this.currentContext.parent
        this.currentContext.methods.push(method)
    }
    // Enter a parse tree produced by ObjectiveCParser#instanceMethodDeclaration.
    enterInstanceMethodDeclaration(ctx) {
        var isProtocolCtx = this.currentContext instanceof DNProtocolContext
        var method = isProtocolCtx ? new DNMethodDeclarationContext(ctx) : new DNMethodContext(ctx);
        this.currentContext.addChild(method)
        this.currentContext = method
    }
    // Exit a parse tree produced by ObjectiveCParser#instanceMethodDeclaration.
    exitInstanceMethodDeclaration(ctx) {
        var method = this.currentContext
        this.currentContext = this.currentContext.parent
        this.currentContext.methods.push(method)
    }
    // Enter a parse tree produced by ObjectiveCParser#methodDeclaration.
    enterMethodDeclaration(ctx) {
    }
    // Exit a parse tree produced by ObjectiveCParser#methodDeclaration.
    exitMethodDeclaration(ctx) {
    }
    // Enter a parse tree produced by ObjectiveCParser#implementationDefinitionList.
    enterImplementationDefinitionList(ctx) {
    }
    // Exit a parse tree produced by ObjectiveCParser#implementationDefinitionList.
    exitImplementationDefinitionList(ctx) {
    }
    // Enter a parse tree produced by ObjectiveCParser#classMethodDefinition.
    enterClassMethodDefinition(ctx) {
    }
    // Exit a parse tree produced by ObjectiveCParser#classMethodDefinition.
    exitClassMethodDefinition(ctx) {
    }
    // Enter a parse tree produced by ObjectiveCParser#instanceMethodDefinition.
    enterInstanceMethodDefinition(ctx) {
    }
    // Exit a parse tree produced by ObjectiveCParser#instanceMethodDefinition.
    exitInstanceMethodDefinition(ctx) {
    }
    // Enter a parse tree produced by ObjectiveCParser#methodDefinition.
    enterMethodDefinition(ctx) {
    }
    // Exit a parse tree produced by ObjectiveCParser#methodDefinition.
    exitMethodDefinition(ctx) {
    }
    // Enter a parse tree produced by ObjectiveCParser#methodSelector.
    enterMethodSelector(ctx) {
        if (this.currentContext instanceof DNMethodContext) {
            this.currentContext.methodName = ctx.children[0].start.text
        }
    }
    // Exit a parse tree produced by ObjectiveCParser#methodSelector.
    exitMethodSelector(ctx) { 
    }
    // Enter a parse tree produced by ObjectiveCParser#keywordDeclarator.
    enterKeywordDeclarator(ctx) {
        if (this.currentContext instanceof DNMethodContext) {
            // Add method names.
            this.currentContext.names.push(ctx.children[0].start.text)
            var argument = new DNArgumentContext(ctx)
            argument.name = ctx.children[3].start.text
            this.currentContext.addChild(argument)
            this.currentContext = argument
        }
    }
    // Exit a parse tree produced by ObjectiveCParser#keywordDeclarator.
    exitKeywordDeclarator(ctx) {
        if (this.currentContext instanceof DNArgumentContext) {
            var argument = this.currentContext
            this.currentContext = this.currentContext.parent
            this.currentContext.args.push(argument)
        }
    }
    // Enter a parse tree produced by ObjectiveCParser#selector.
    enterSelector(ctx) {
    }
    // Exit a parse tree produced by ObjectiveCParser#selector.
    exitSelector(ctx) {
    }
    // Enter a parse tree produced by ObjectiveCParser#methodType.
    enterMethodType(ctx) {
    }
    // Exit a parse tree produced by ObjectiveCParser#methodType.
    exitMethodType(ctx) {
    }
    // Enter a parse tree produced by ObjectiveCParser#propertyImplementation.
    enterPropertyImplementation(ctx) {
    }
    // Exit a parse tree produced by ObjectiveCParser#propertyImplementation.
    exitPropertyImplementation(ctx) {
    }
    // Enter a parse tree produced by ObjectiveCParser#propertySynthesizeList.
    enterPropertySynthesizeList(ctx) {
    }
    // Exit a parse tree produced by ObjectiveCParser#propertySynthesizeList.
    exitPropertySynthesizeList(ctx) {
    }
    // Enter a parse tree produced by ObjectiveCParser#propertySynthesizeItem.
    enterPropertySynthesizeItem(ctx) {
    }
    // Exit a parse tree produced by ObjectiveCParser#propertySynthesizeItem.
    exitPropertySynthesizeItem(ctx) {
    }
    // Enter a parse tree produced by ObjectiveCParser#blockType.
    enterBlockType(ctx) {
    }
    // Exit a parse tree produced by ObjectiveCParser#blockType.
    exitBlockType(ctx) {
    }
    // Enter a parse tree produced by ObjectiveCParser#genericsSpecifier.
    enterGenericsSpecifier(ctx) {
    }
    // Exit a parse tree produced by ObjectiveCParser#genericsSpecifier.
    exitGenericsSpecifier(ctx) {
    }
    // Enter a parse tree produced by ObjectiveCParser#typeSpecifierWithPrefixes.
    enterTypeSpecifierWithPrefixes(ctx) {
        if(this.currentContext instanceof DNMethodContext || this.currentContext instanceof DNBlockDefContext) {
            this.currentContext.returnType = this.currentContext.returnType + '<' + TC.convert(ctx.start.text) + '>'
        }else if(this.currentContext instanceof DNArgumentContext) {
            this.currentContext.type = this.currentContext.type + '<' + TC.convert(ctx.start.text) + '>'
        }
    }
    // Exit a parse tree produced by ObjectiveCParser#typeSpecifierWithPrefixes.
    exitTypeSpecifierWithPrefixes(ctx) {
    }
    // Enter a parse tree produced by ObjectiveCParser#dictionaryExpression.
    enterDictionaryExpression(ctx) {
    }
    // Exit a parse tree produced by ObjectiveCParser#dictionaryExpression.
    exitDictionaryExpression(ctx) {
    }
    // Enter a parse tree produced by ObjectiveCParser#dictionaryPair.
    enterDictionaryPair(ctx) {
    }
    // Exit a parse tree produced by ObjectiveCParser#dictionaryPair.
    exitDictionaryPair(ctx) {
    }
    // Enter a parse tree produced by ObjectiveCParser#arrayExpression.
    enterArrayExpression(ctx) {
    }
    // Exit a parse tree produced by ObjectiveCParser#arrayExpression.
    exitArrayExpression(ctx) {
    }
    // Enter a parse tree produced by ObjectiveCParser#boxExpression.
    enterBoxExpression(ctx) {
    }
    // Exit a parse tree produced by ObjectiveCParser#boxExpression.
    exitBoxExpression(ctx) {
    }
    // Enter a parse tree produced by ObjectiveCParser#blockParameters.
    enterBlockParameters(ctx) {
    }
    // Exit a parse tree produced by ObjectiveCParser#blockParameters.
    exitBlockParameters(ctx) {
    }
    // Enter a parse tree produced by ObjectiveCParser#typeVariableDeclaratorOrName.
    enterTypeVariableDeclaratorOrName(ctx) {
        if (this.currentContext instanceof DNBlockDefContext) {
            var argument = new DNArgumentContext(ctx)
            argument.type = TC.convert(ctx.start.text)
            argument.name = ctx.stop.text
            if(argument.type != 'void'){
                this.currentContext.args.push(argument)
            }
            this.currentContext.addChild(argument)
            this.currentContext = argument
        }
    }
    // Exit a parse tree produced by ObjectiveCParser#typeVariableDeclaratorOrName.
    exitTypeVariableDeclaratorOrName(ctx) {
        this.currentContext = this.currentContext.parent
    }
    // Enter a parse tree produced by ObjectiveCParser#blockExpression.
    enterBlockExpression(ctx) {
    }
    // Exit a parse tree produced by ObjectiveCParser#blockExpression.
    exitBlockExpression(ctx) {
    }
    // Enter a parse tree produced by ObjectiveCParser#messageExpression.
    enterMessageExpression(ctx) {
    }
    // Exit a parse tree produced by ObjectiveCParser#messageExpression.
    exitMessageExpression(ctx) {
    }
    // Enter a parse tree produced by ObjectiveCParser#receiver.
    enterReceiver(ctx) {
    }
    // Exit a parse tree produced by ObjectiveCParser#receiver.
    exitReceiver(ctx) {
    }
    // Enter a parse tree produced by ObjectiveCParser#messageSelector.
    enterMessageSelector(ctx) {
    }
    // Exit a parse tree produced by ObjectiveCParser#messageSelector.
    exitMessageSelector(ctx) {
    }
    // Enter a parse tree produced by ObjectiveCParser#keywordArgument.
    enterKeywordArgument(ctx) {
    }
    // Exit a parse tree produced by ObjectiveCParser#keywordArgument.
    exitKeywordArgument(ctx) {
    }
    // Enter a parse tree produced by ObjectiveCParser#keywordArgumentType.
    enterKeywordArgumentType(ctx) {
    }
    // Exit a parse tree produced by ObjectiveCParser#keywordArgumentType.
    exitKeywordArgumentType(ctx) {
    }
    // Enter a parse tree produced by ObjectiveCParser#selectorExpression.
    enterSelectorExpression(ctx) {
    }
    // Exit a parse tree produced by ObjectiveCParser#selectorExpression.
    exitSelectorExpression(ctx) {
    }
    // Enter a parse tree produced by ObjectiveCParser#selectorName.
    enterSelectorName(ctx) {
    }
    // Exit a parse tree produced by ObjectiveCParser#selectorName.
    exitSelectorName(ctx) {
    }
    // Enter a parse tree produced by ObjectiveCParser#protocolExpression.
    enterProtocolExpression(ctx) {
    }
    // Exit a parse tree produced by ObjectiveCParser#protocolExpression.
    exitProtocolExpression(ctx) {
    }
    // Enter a parse tree produced by ObjectiveCParser#encodeExpression.
    enterEncodeExpression(ctx) {
    }
    // Exit a parse tree produced by ObjectiveCParser#encodeExpression.
    exitEncodeExpression(ctx) {
    }
    // Enter a parse tree produced by ObjectiveCParser#typeVariableDeclarator.
    enterTypeVariableDeclarator(ctx) {
    }
    // Exit a parse tree produced by ObjectiveCParser#typeVariableDeclarator.
    exitTypeVariableDeclarator(ctx) {
    }
    // Enter a parse tree produced by ObjectiveCParser#throwStatement.
    enterThrowStatement(ctx) {
    }
    // Exit a parse tree produced by ObjectiveCParser#throwStatement.
    exitThrowStatement(ctx) {
    }
    // Enter a parse tree produced by ObjectiveCParser#tryBlock.
    enterTryBlock(ctx) {
    }
    // Exit a parse tree produced by ObjectiveCParser#tryBlock.
    exitTryBlock(ctx) {
    }
    // Enter a parse tree produced by ObjectiveCParser#catchStatement.
    enterCatchStatement(ctx) {
    }
    // Exit a parse tree produced by ObjectiveCParser#catchStatement.
    exitCatchStatement(ctx) {
    }
    // Enter a parse tree produced by ObjectiveCParser#synchronizedStatement.
    enterSynchronizedStatement(ctx) {
    }
    // Exit a parse tree produced by ObjectiveCParser#synchronizedStatement.
    exitSynchronizedStatement(ctx) {
    }
    // Enter a parse tree produced by ObjectiveCParser#autoreleaseStatement.
    enterAutoreleaseStatement(ctx) {
    }
    // Exit a parse tree produced by ObjectiveCParser#autoreleaseStatement.
    exitAutoreleaseStatement(ctx) {
    }
    // Enter a parse tree produced by ObjectiveCParser#functionDeclaration.
    enterFunctionDeclaration(ctx) {
    }
    // Exit a parse tree produced by ObjectiveCParser#functionDeclaration.
    exitFunctionDeclaration(ctx) {
    }
    // Enter a parse tree produced by ObjectiveCParser#functionDefinition.
    enterFunctionDefinition(ctx) {
    }
    // Exit a parse tree produced by ObjectiveCParser#functionDefinition.
    exitFunctionDefinition(ctx) {
    }
    // Enter a parse tree produced by ObjectiveCParser#functionSignature.
    enterFunctionSignature(ctx) {
    }
    // Exit a parse tree produced by ObjectiveCParser#functionSignature.
    exitFunctionSignature(ctx) {
    }
    // Enter a parse tree produced by ObjectiveCParser#attribute.
    enterAttribute(ctx) {
    }
    // Exit a parse tree produced by ObjectiveCParser#attribute.
    exitAttribute(ctx) {
    }
    // Enter a parse tree produced by ObjectiveCParser#attributeName.
    enterAttributeName(ctx) {
    }
    // Exit a parse tree produced by ObjectiveCParser#attributeName.
    exitAttributeName(ctx) {
    }
    // Enter a parse tree produced by ObjectiveCParser#attributeParameters.
    enterAttributeParameters(ctx) {
    }
    // Exit a parse tree produced by ObjectiveCParser#attributeParameters.
    exitAttributeParameters(ctx) {
    }
    // Enter a parse tree produced by ObjectiveCParser#attributeParameterList.
    enterAttributeParameterList(ctx) {
    }
    // Exit a parse tree produced by ObjectiveCParser#attributeParameterList.
    exitAttributeParameterList(ctx) {
    }
    // Enter a parse tree produced by ObjectiveCParser#attributeParameter.
    enterAttributeParameter(ctx) {
    }
    // Exit a parse tree produced by ObjectiveCParser#attributeParameter.
    exitAttributeParameter(ctx) {
    }
    // Enter a parse tree produced by ObjectiveCParser#attributeParameterAssignment.
    enterAttributeParameterAssignment(ctx) {
    }
    // Exit a parse tree produced by ObjectiveCParser#attributeParameterAssignment.
    exitAttributeParameterAssignment(ctx) {
    }
    // Enter a parse tree produced by ObjectiveCParser#declaration.
    enterDeclaration(ctx) {
    }
    // Exit a parse tree produced by ObjectiveCParser#declaration.
    exitDeclaration(ctx) {
    }
    // Enter a parse tree produced by ObjectiveCParser#functionCallExpression.
    enterFunctionCallExpression(ctx) {
    }
    // Exit a parse tree produced by ObjectiveCParser#functionCallExpression.
    exitFunctionCallExpression(ctx) {
    }
    // Enter a parse tree produced by ObjectiveCParser#enumDeclaration.
    enterEnumDeclaration(ctx) {
        if (this.currentContext instanceof DNRootContext) {
            var enumDef = new DNEnumDefContext(ctx)
            this.currentContext.addChild(enumDef)
            this.currentContext = enumDef
        }
    }
    // Exit a parse tree produced by ObjectiveCParser#enumDeclaration.
    exitEnumDeclaration(ctx) {
        this.currentContext = this.currentContext.parent
    }
    // Enter a parse tree produced by ObjectiveCParser#varDeclaration.
    enterVarDeclaration(ctx) {
    }
    // Exit a parse tree produced by ObjectiveCParser#varDeclaration.
    exitVarDeclaration(ctx) {
    }
    // Enter a parse tree produced by ObjectiveCParser#typedefDeclaration.
    enterTypedefDeclaration(ctx) {
        if (this.currentContext instanceof DNRootContext) {
            var blockDef = new DNBlockDefContext(ctx)
            blockDef.returnType = TC.convert(ctx.children[1].start.text)
            this.currentContext.addChild(blockDef)
            this.currentContext = blockDef
        }
    }
    // Exit a parse tree produced by ObjectiveCParser#typedefDeclaration.
    exitTypedefDeclaration(ctx) {
        this.currentContext = this.currentContext.parent
    }
    // Enter a parse tree produced by ObjectiveCParser#typeDeclaratorList.
    enterTypeDeclaratorList(ctx) {
    }
    // Exit a parse tree produced by ObjectiveCParser#typeDeclaratorList.
    exitTypeDeclaratorList(ctx) {
    }
    // Enter a parse tree produced by ObjectiveCParser#typeDeclarator.
    enterTypeDeclarator(ctx) {
    }
    // Exit a parse tree produced by ObjectiveCParser#typeDeclarator.
    exitTypeDeclarator(ctx) {
    }
    // Enter a parse tree produced by ObjectiveCParser#declarationSpecifiers.
    enterDeclarationSpecifiers(ctx) {
    }
    // Exit a parse tree produced by ObjectiveCParser#declarationSpecifiers.
    exitDeclarationSpecifiers(ctx) {
    }
    // Enter a parse tree produced by ObjectiveCParser#attributeSpecifier.
    enterAttributeSpecifier(ctx) {
    }
    // Exit a parse tree produced by ObjectiveCParser#attributeSpecifier.
    exitAttributeSpecifier(ctx) {
    }
    // Enter a parse tree produced by ObjectiveCParser#initDeclaratorList.
    enterInitDeclaratorList(ctx) {
    }
    // Exit a parse tree produced by ObjectiveCParser#initDeclaratorList.
    exitInitDeclaratorList(ctx) {
    }
    // Enter a parse tree produced by ObjectiveCParser#initDeclarator.
    enterInitDeclarator(ctx) {
    }
    // Exit a parse tree produced by ObjectiveCParser#initDeclarator.
    exitInitDeclarator(ctx) {
    }
    // Enter a parse tree produced by ObjectiveCParser#structOrUnionSpecifier.
    enterStructOrUnionSpecifier(ctx) {
    }
    // Exit a parse tree produced by ObjectiveCParser#structOrUnionSpecifier.
    exitStructOrUnionSpecifier(ctx) {
    }
    // Enter a parse tree produced by ObjectiveCParser#fieldDeclaration.
    enterFieldDeclaration(ctx) {
    }
    // Exit a parse tree produced by ObjectiveCParser#fieldDeclaration.
    exitFieldDeclaration(ctx) {
    }
    // Enter a parse tree produced by ObjectiveCParser#specifierQualifierList.
    enterSpecifierQualifierList(ctx) {
        if (this.currentContext instanceof DNPropertyContext) {
            this.currentContext.type = TC.convert(ctx.start.text)
        }
    }
    // Exit a parse tree produced by ObjectiveCParser#specifierQualifierList.
    exitSpecifierQualifierList(ctx) {
    }
    // Enter a parse tree produced by ObjectiveCParser#ibOutletQualifier.
    enterIbOutletQualifier(ctx) {
    }
    // Exit a parse tree produced by ObjectiveCParser#ibOutletQualifier.
    exitIbOutletQualifier(ctx) {
    }
    // Enter a parse tree produced by ObjectiveCParser#arcBehaviourSpecifier.
    enterArcBehaviourSpecifier(ctx) {
    }
    // Exit a parse tree produced by ObjectiveCParser#arcBehaviourSpecifier.
    exitArcBehaviourSpecifier(ctx) {
    }
    // Enter a parse tree produced by ObjectiveCParser#nullabilitySpecifier.
    enterNullabilitySpecifier(ctx) {
    }
    // Exit a parse tree produced by ObjectiveCParser#nullabilitySpecifier.
    exitNullabilitySpecifier(ctx) {
    }
    // Enter a parse tree produced by ObjectiveCParser#storageClassSpecifier.
    enterStorageClassSpecifier(ctx) {
    }
    // Exit a parse tree produced by ObjectiveCParser#storageClassSpecifier.
    exitStorageClassSpecifier(ctx) {
    }
    // Enter a parse tree produced by ObjectiveCParser#typePrefix.
    enterTypePrefix(ctx) {
    }
    // Exit a parse tree produced by ObjectiveCParser#typePrefix.
    exitTypePrefix(ctx) {
    }
    // Enter a parse tree produced by ObjectiveCParser#typeQualifier.
    enterTypeQualifier(ctx) {
    }
    // Exit a parse tree produced by ObjectiveCParser#typeQualifier.
    exitTypeQualifier(ctx) {
    }
    // Enter a parse tree produced by ObjectiveCParser#protocolQualifier.
    enterProtocolQualifier(ctx) {
    }
    // Exit a parse tree produced by ObjectiveCParser#protocolQualifier.
    exitProtocolQualifier(ctx) {
    }
    // Enter a parse tree produced by ObjectiveCParser#typeSpecifier.
    enterTypeSpecifier(ctx) {
    }
    // Exit a parse tree produced by ObjectiveCParser#typeSpecifier.
    exitTypeSpecifier(ctx) {
    }
    // Enter a parse tree produced by ObjectiveCParser#typeofExpression.
    enterTypeofExpression(ctx) {
    }
    // Exit a parse tree produced by ObjectiveCParser#typeofExpression.
    exitTypeofExpression(ctx) {
    }
    // Enter a parse tree produced by ObjectiveCParser#fieldDeclaratorList.
    enterFieldDeclaratorList(ctx) {
    }
    // Exit a parse tree produced by ObjectiveCParser#fieldDeclaratorList.
    exitFieldDeclaratorList(ctx) {
    }
    // Enter a parse tree produced by ObjectiveCParser#fieldDeclarator.
    enterFieldDeclarator(ctx) {
        if (this.currentContext instanceof DNPropertyContext) {
            var array = ctx.children[0].children
            this.currentContext.name = array[array.length - 1].start.text
        }
    }
    // Exit a parse tree produced by ObjectiveCParser#fieldDeclarator.
    exitFieldDeclarator(ctx) {
    }
    // Enter a parse tree produced by ObjectiveCParser#enumSpecifier.
    enterEnumSpecifier(ctx) {
        if (this.currentContext instanceof DNEnumDefContext) {
            this.currentContext.defName = ctx.children[4].start.text
        }
    }
    // Exit a parse tree produced by ObjectiveCParser#enumSpecifier.
    exitEnumSpecifier(ctx) {
    }
    // Enter a parse tree produced by ObjectiveCParser#enumeratorList.
    enterEnumeratorList(ctx) {
        if (this.currentContext instanceof DNEnumDefContext) {
            ctx.children.forEach(element => {
                if(element instanceof ObjectiveCParser.EnumeratorContext){
                    this.currentContext.enumNames.push(element.start.text)
                }
            })
        }
    }
    // Exit a parse tree produced by ObjectiveCParser#enumeratorList.
    exitEnumeratorList(ctx) {
    }
    // Enter a parse tree produced by ObjectiveCParser#enumerator.
    enterEnumerator(ctx) {
    }
    // Exit a parse tree produced by ObjectiveCParser#enumerator.
    exitEnumerator(ctx) {
    }
    // Enter a parse tree produced by ObjectiveCParser#enumeratorIdentifier.
    enterEnumeratorIdentifier(ctx) {
    }
    // Exit a parse tree produced by ObjectiveCParser#enumeratorIdentifier.
    exitEnumeratorIdentifier(ctx) {
    }
    // Enter a parse tree produced by ObjectiveCParser#directDeclarator.
    enterDirectDeclarator(ctx) {
        if (this.currentContext instanceof DNBlockDefContext) {
            if(ctx.children.length == 5){
                this.currentContext.defName = ctx.children[2].start.text
            }
        }
    }
    // Exit a parse tree produced by ObjectiveCParser#directDeclarator.
    exitDirectDeclarator(ctx) {
    }
    // Enter a parse tree produced by ObjectiveCParser#declaratorSuffix.
    enterDeclaratorSuffix(ctx) {
    }
    // Exit a parse tree produced by ObjectiveCParser#declaratorSuffix.
    exitDeclaratorSuffix(ctx) {
    }
    // Enter a parse tree produced by ObjectiveCParser#parameterList.
    enterParameterList(ctx) {
    }
    // Exit a parse tree produced by ObjectiveCParser#parameterList.
    exitParameterList(ctx) {
    }
    // Enter a parse tree produced by ObjectiveCParser#pointer.
    enterPointer(ctx) {
    }
    // Exit a parse tree produced by ObjectiveCParser#pointer.
    exitPointer(ctx) {
    }
    // Enter a parse tree produced by ObjectiveCParser#macro.
    enterMacro(ctx) {
    }
    // Exit a parse tree produced by ObjectiveCParser#macro.
    exitMacro(ctx) {
    }
    // Enter a parse tree produced by ObjectiveCParser#arrayInitializer.
    enterArrayInitializer(ctx) {
    }
    // Exit a parse tree produced by ObjectiveCParser#arrayInitializer.
    exitArrayInitializer(ctx) {
    }
    // Enter a parse tree produced by ObjectiveCParser#structInitializer.
    enterStructInitializer(ctx) {
    }
    // Exit a parse tree produced by ObjectiveCParser#structInitializer.
    exitStructInitializer(ctx) {
    }
    // Enter a parse tree produced by ObjectiveCParser#initializerList.
    enterInitializerList(ctx) {
    }
    // Exit a parse tree produced by ObjectiveCParser#initializerList.
    exitInitializerList(ctx) {
    }
    // Enter a parse tree produced by ObjectiveCParser#typeName.
    enterTypeName(ctx) {
        if (this.currentContext instanceof DNMethodContext) {
            this.currentContext.returnType = TC.convert(ctx.start.text == 'instancetype' ? this.currentContext.parent.name : ctx.start.text) 
        } else if (this.currentContext instanceof DNArgumentContext) {
            this.currentContext.type = TC.convert(ctx.start.text)
        }
    }
    // Exit a parse tree produced by ObjectiveCParser#typeName.
    exitTypeName(ctx) {
    }
    // Enter a parse tree produced by ObjectiveCParser#abstractDeclarator.
    enterAbstractDeclarator(ctx) {
    }
    // Exit a parse tree produced by ObjectiveCParser#abstractDeclarator.
    exitAbstractDeclarator(ctx) {
    }
    // Enter a parse tree produced by ObjectiveCParser#abstractDeclaratorSuffix.
    enterAbstractDeclaratorSuffix(ctx) {
    }
    // Exit a parse tree produced by ObjectiveCParser#abstractDeclaratorSuffix.
    exitAbstractDeclaratorSuffix(ctx) {
    }
    // Enter a parse tree produced by ObjectiveCParser#parameterDeclarationList.
    enterParameterDeclarationList(ctx) {
    }
    // Exit a parse tree produced by ObjectiveCParser#parameterDeclarationList.
    exitParameterDeclarationList(ctx) {
    }
    // Enter a parse tree produced by ObjectiveCParser#parameterDeclaration.
    enterParameterDeclaration(ctx) {
    }
    // Exit a parse tree produced by ObjectiveCParser#parameterDeclaration.
    exitParameterDeclaration(ctx) {
    }
    // Enter a parse tree produced by ObjectiveCParser#declarator.
    enterDeclarator(ctx) {
    }
    // Exit a parse tree produced by ObjectiveCParser#declarator.
    exitDeclarator(ctx) {
    }
    // Enter a parse tree produced by ObjectiveCParser#statement.
    enterStatement(ctx) {
    }
    // Exit a parse tree produced by ObjectiveCParser#statement.
    exitStatement(ctx) {
    }
    // Enter a parse tree produced by ObjectiveCParser#labeledStatement.
    enterLabeledStatement(ctx) {
    }
    // Exit a parse tree produced by ObjectiveCParser#labeledStatement.
    exitLabeledStatement(ctx) {
    }
    // Enter a parse tree produced by ObjectiveCParser#rangeExpression.
    enterRangeExpression(ctx) {
    }
    // Exit a parse tree produced by ObjectiveCParser#rangeExpression.
    exitRangeExpression(ctx) {
    }
    // Enter a parse tree produced by ObjectiveCParser#compoundStatement.
    enterCompoundStatement(ctx) {
    }
    // Exit a parse tree produced by ObjectiveCParser#compoundStatement.
    exitCompoundStatement(ctx) {
    }
    // Enter a parse tree produced by ObjectiveCParser#selectionStatement.
    enterSelectionStatement(ctx) {
    }
    // Exit a parse tree produced by ObjectiveCParser#selectionStatement.
    exitSelectionStatement(ctx) {
    }
    // Enter a parse tree produced by ObjectiveCParser#switchStatement.
    enterSwitchStatement(ctx) {
    }
    // Exit a parse tree produced by ObjectiveCParser#switchStatement.
    exitSwitchStatement(ctx) {
    }
    // Enter a parse tree produced by ObjectiveCParser#switchBlock.
    enterSwitchBlock(ctx) {
    }
    // Exit a parse tree produced by ObjectiveCParser#switchBlock.
    exitSwitchBlock(ctx) {
    }
    // Enter a parse tree produced by ObjectiveCParser#switchSection.
    enterSwitchSection(ctx) {
    }
    // Exit a parse tree produced by ObjectiveCParser#switchSection.
    exitSwitchSection(ctx) {
    }
    // Enter a parse tree produced by ObjectiveCParser#switchLabel.
    enterSwitchLabel(ctx) {
    }
    // Exit a parse tree produced by ObjectiveCParser#switchLabel.
    exitSwitchLabel(ctx) {
    }
    // Enter a parse tree produced by ObjectiveCParser#iterationStatement.
    enterIterationStatement(ctx) {
    }
    // Exit a parse tree produced by ObjectiveCParser#iterationStatement.
    exitIterationStatement(ctx) {
    }
    // Enter a parse tree produced by ObjectiveCParser#whileStatement.
    enterWhileStatement(ctx) {
    }
    // Exit a parse tree produced by ObjectiveCParser#whileStatement.
    exitWhileStatement(ctx) {
    }
    // Enter a parse tree produced by ObjectiveCParser#doStatement.
    enterDoStatement(ctx) {
    }
    // Exit a parse tree produced by ObjectiveCParser#doStatement.
    exitDoStatement(ctx) {
    }
    // Enter a parse tree produced by ObjectiveCParser#forStatement.
    enterForStatement(ctx) {
    }
    // Exit a parse tree produced by ObjectiveCParser#forStatement.
    exitForStatement(ctx) {
    }
    // Enter a parse tree produced by ObjectiveCParser#forLoopInitializer.
    enterForLoopInitializer(ctx) {
    }
    // Exit a parse tree produced by ObjectiveCParser#forLoopInitializer.
    exitForLoopInitializer(ctx) {
    }
    // Enter a parse tree produced by ObjectiveCParser#forInStatement.
    enterForInStatement(ctx) {
    }
    // Exit a parse tree produced by ObjectiveCParser#forInStatement.
    exitForInStatement(ctx) {
    }
    // Enter a parse tree produced by ObjectiveCParser#jumpStatement.
    enterJumpStatement(ctx) {
    }
    // Exit a parse tree produced by ObjectiveCParser#jumpStatement.
    exitJumpStatement(ctx) {
    }
    // Enter a parse tree produced by ObjectiveCParser#expressions.
    enterExpressions(ctx) {
    }
    // Exit a parse tree produced by ObjectiveCParser#expressions.
    exitExpressions(ctx) {
    }
    // Enter a parse tree produced by ObjectiveCParser#expression.
    enterExpression(ctx) {
    }
    // Exit a parse tree produced by ObjectiveCParser#expression.
    exitExpression(ctx) {
    }
    // Enter a parse tree produced by ObjectiveCParser#assignmentOperator.
    enterAssignmentOperator(ctx) {
    }
    // Exit a parse tree produced by ObjectiveCParser#assignmentOperator.
    exitAssignmentOperator(ctx) {
    }
    // Enter a parse tree produced by ObjectiveCParser#castExpression.
    enterCastExpression(ctx) {
    }
    // Exit a parse tree produced by ObjectiveCParser#castExpression.
    exitCastExpression(ctx) {
    }
    // Enter a parse tree produced by ObjectiveCParser#initializer.
    enterInitializer(ctx) {
    }
    // Exit a parse tree produced by ObjectiveCParser#initializer.
    exitInitializer(ctx) {
    }
    // Enter a parse tree produced by ObjectiveCParser#constantExpression.
    enterConstantExpression(ctx) {
    }
    // Exit a parse tree produced by ObjectiveCParser#constantExpression.
    exitConstantExpression(ctx) {
    }
    // Enter a parse tree produced by ObjectiveCParser#unaryExpression.
    enterUnaryExpression(ctx) {
    }
    // Exit a parse tree produced by ObjectiveCParser#unaryExpression.
    exitUnaryExpression(ctx) {
    }
    // Enter a parse tree produced by ObjectiveCParser#unaryOperator.
    enterUnaryOperator(ctx) {
    }
    // Exit a parse tree produced by ObjectiveCParser#unaryOperator.
    exitUnaryOperator(ctx) {
    }
    // Enter a parse tree produced by ObjectiveCParser#postfixExpression.
    enterPostfixExpression(ctx) {
    }
    // Exit a parse tree produced by ObjectiveCParser#postfixExpression.
    exitPostfixExpression(ctx) {
    }
    // Enter a parse tree produced by ObjectiveCParser#postfix.
    enterPostfix(ctx) {
    }
    // Exit a parse tree produced by ObjectiveCParser#postfix.
    exitPostfix(ctx) {
    }
    // Enter a parse tree produced by ObjectiveCParser#argumentExpressionList.
    enterArgumentExpressionList(ctx) {
    }
    // Exit a parse tree produced by ObjectiveCParser#argumentExpressionList.
    exitArgumentExpressionList(ctx) {
    }
    // Enter a parse tree produced by ObjectiveCParser#argumentExpression.
    enterArgumentExpression(ctx) {
    }
    // Exit a parse tree produced by ObjectiveCParser#argumentExpression.
    exitArgumentExpression(ctx) {
    }
    // Enter a parse tree produced by ObjectiveCParser#primaryExpression.
    enterPrimaryExpression(ctx) {
    }
    // Exit a parse tree produced by ObjectiveCParser#primaryExpression.
    exitPrimaryExpression(ctx) {
    }
    // Enter a parse tree produced by ObjectiveCParser#constant.
    enterConstant(ctx) {
    }
    // Exit a parse tree produced by ObjectiveCParser#constant.
    exitConstant(ctx) {
    }
    // Enter a parse tree produced by ObjectiveCParser#stringLiteral.
    enterStringLiteral(ctx) {
    }
    // Exit a parse tree produced by ObjectiveCParser#stringLiteral.
    exitStringLiteral(ctx) {
    }
    // Enter a parse tree produced by ObjectiveCParser#identifier.
    enterIdentifier(ctx) {
    }
    // Exit a parse tree produced by ObjectiveCParser#identifier.
    exitIdentifier(ctx) {
    }
}

exports.DNObjectiveCParserListener = DNObjectiveCParserListener