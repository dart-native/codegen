var ObjectiveCParserListener = require('../parser/ObjectiveCParserListener').ObjectiveCParserListener

// This class defines a complete listener for a parse tree produced by ObjectiveCParser.
function DNObjectiveCParserListener(cb) {
    ObjectiveCParserListener.call(this);

    //success callack
    this.cb = cb;
	return this;
}

DNObjectiveCParserListener.prototype = Object.create(ObjectiveCParserListener.prototype);

DNObjectiveCParserListener.prototype.buildDart = function() {
    // TODO: parse
    this.cb();
}

DNObjectiveCParserListener.prototype.constructor = DNObjectiveCParserListener;

// Enter a parse tree produced by ObjectiveCParser#translationUnit.
DNObjectiveCParserListener.prototype.enterTranslationUnit = function(ctx) {
};

// Exit a parse tree produced by ObjectiveCParser#translationUnit.
DNObjectiveCParserListener.prototype.exitTranslationUnit = function(ctx) {
};


// Enter a parse tree produced by ObjectiveCParser#topLevelDeclaration.
DNObjectiveCParserListener.prototype.enterTopLevelDeclaration = function(ctx) {
};

// Exit a parse tree produced by ObjectiveCParser#topLevelDeclaration.
DNObjectiveCParserListener.prototype.exitTopLevelDeclaration = function(ctx) {
    this.buildDart();
};


// Enter a parse tree produced by ObjectiveCParser#importDeclaration.
DNObjectiveCParserListener.prototype.enterImportDeclaration = function(ctx) {
};

// Exit a parse tree produced by ObjectiveCParser#importDeclaration.
DNObjectiveCParserListener.prototype.exitImportDeclaration = function(ctx) {
};


// Enter a parse tree produced by ObjectiveCParser#classInterface.
DNObjectiveCParserListener.prototype.enterClassInterface = function(ctx) {
};

// Exit a parse tree produced by ObjectiveCParser#classInterface.
DNObjectiveCParserListener.prototype.exitClassInterface = function(ctx) {
};


// Enter a parse tree produced by ObjectiveCParser#categoryInterface.
DNObjectiveCParserListener.prototype.enterCategoryInterface = function(ctx) {
};

// Exit a parse tree produced by ObjectiveCParser#categoryInterface.
DNObjectiveCParserListener.prototype.exitCategoryInterface = function(ctx) {
};


// Enter a parse tree produced by ObjectiveCParser#classImplementation.
DNObjectiveCParserListener.prototype.enterClassImplementation = function(ctx) {
};

// Exit a parse tree produced by ObjectiveCParser#classImplementation.
DNObjectiveCParserListener.prototype.exitClassImplementation = function(ctx) {
};


// Enter a parse tree produced by ObjectiveCParser#categoryImplementation.
DNObjectiveCParserListener.prototype.enterCategoryImplementation = function(ctx) {
};

// Exit a parse tree produced by ObjectiveCParser#categoryImplementation.
DNObjectiveCParserListener.prototype.exitCategoryImplementation = function(ctx) {
};


// Enter a parse tree produced by ObjectiveCParser#genericTypeSpecifier.
DNObjectiveCParserListener.prototype.enterGenericTypeSpecifier = function(ctx) {
};

// Exit a parse tree produced by ObjectiveCParser#genericTypeSpecifier.
DNObjectiveCParserListener.prototype.exitGenericTypeSpecifier = function(ctx) {
};


// Enter a parse tree produced by ObjectiveCParser#protocolDeclaration.
DNObjectiveCParserListener.prototype.enterProtocolDeclaration = function(ctx) {
};

// Exit a parse tree produced by ObjectiveCParser#protocolDeclaration.
DNObjectiveCParserListener.prototype.exitProtocolDeclaration = function(ctx) {
};


// Enter a parse tree produced by ObjectiveCParser#protocolDeclarationSection.
DNObjectiveCParserListener.prototype.enterProtocolDeclarationSection = function(ctx) {
};

// Exit a parse tree produced by ObjectiveCParser#protocolDeclarationSection.
DNObjectiveCParserListener.prototype.exitProtocolDeclarationSection = function(ctx) {
};


// Enter a parse tree produced by ObjectiveCParser#protocolDeclarationList.
DNObjectiveCParserListener.prototype.enterProtocolDeclarationList = function(ctx) {
};

// Exit a parse tree produced by ObjectiveCParser#protocolDeclarationList.
DNObjectiveCParserListener.prototype.exitProtocolDeclarationList = function(ctx) {
};


// Enter a parse tree produced by ObjectiveCParser#classDeclarationList.
DNObjectiveCParserListener.prototype.enterClassDeclarationList = function(ctx) {
};

// Exit a parse tree produced by ObjectiveCParser#classDeclarationList.
DNObjectiveCParserListener.prototype.exitClassDeclarationList = function(ctx) {
};


// Enter a parse tree produced by ObjectiveCParser#protocolList.
DNObjectiveCParserListener.prototype.enterProtocolList = function(ctx) {
};

// Exit a parse tree produced by ObjectiveCParser#protocolList.
DNObjectiveCParserListener.prototype.exitProtocolList = function(ctx) {
};


// Enter a parse tree produced by ObjectiveCParser#propertyDeclaration.
DNObjectiveCParserListener.prototype.enterPropertyDeclaration = function(ctx) {
};

// Exit a parse tree produced by ObjectiveCParser#propertyDeclaration.
DNObjectiveCParserListener.prototype.exitPropertyDeclaration = function(ctx) {
};


// Enter a parse tree produced by ObjectiveCParser#propertyAttributesList.
DNObjectiveCParserListener.prototype.enterPropertyAttributesList = function(ctx) {
};

// Exit a parse tree produced by ObjectiveCParser#propertyAttributesList.
DNObjectiveCParserListener.prototype.exitPropertyAttributesList = function(ctx) {
};


// Enter a parse tree produced by ObjectiveCParser#propertyAttribute.
DNObjectiveCParserListener.prototype.enterPropertyAttribute = function(ctx) {
};

// Exit a parse tree produced by ObjectiveCParser#propertyAttribute.
DNObjectiveCParserListener.prototype.exitPropertyAttribute = function(ctx) {
};


// Enter a parse tree produced by ObjectiveCParser#protocolName.
DNObjectiveCParserListener.prototype.enterProtocolName = function(ctx) {
};

// Exit a parse tree produced by ObjectiveCParser#protocolName.
DNObjectiveCParserListener.prototype.exitProtocolName = function(ctx) {
};


// Enter a parse tree produced by ObjectiveCParser#instanceVariables.
DNObjectiveCParserListener.prototype.enterInstanceVariables = function(ctx) {
};

// Exit a parse tree produced by ObjectiveCParser#instanceVariables.
DNObjectiveCParserListener.prototype.exitInstanceVariables = function(ctx) {
};


// Enter a parse tree produced by ObjectiveCParser#visibilitySection.
DNObjectiveCParserListener.prototype.enterVisibilitySection = function(ctx) {
};

// Exit a parse tree produced by ObjectiveCParser#visibilitySection.
DNObjectiveCParserListener.prototype.exitVisibilitySection = function(ctx) {
};


// Enter a parse tree produced by ObjectiveCParser#accessModifier.
DNObjectiveCParserListener.prototype.enterAccessModifier = function(ctx) {
};

// Exit a parse tree produced by ObjectiveCParser#accessModifier.
DNObjectiveCParserListener.prototype.exitAccessModifier = function(ctx) {
};


// Enter a parse tree produced by ObjectiveCParser#interfaceDeclarationList.
DNObjectiveCParserListener.prototype.enterInterfaceDeclarationList = function(ctx) {
};

// Exit a parse tree produced by ObjectiveCParser#interfaceDeclarationList.
DNObjectiveCParserListener.prototype.exitInterfaceDeclarationList = function(ctx) {
};


// Enter a parse tree produced by ObjectiveCParser#classMethodDeclaration.
DNObjectiveCParserListener.prototype.enterClassMethodDeclaration = function(ctx) {
};

// Exit a parse tree produced by ObjectiveCParser#classMethodDeclaration.
DNObjectiveCParserListener.prototype.exitClassMethodDeclaration = function(ctx) {
};


// Enter a parse tree produced by ObjectiveCParser#instanceMethodDeclaration.
DNObjectiveCParserListener.prototype.enterInstanceMethodDeclaration = function(ctx) {
};

// Exit a parse tree produced by ObjectiveCParser#instanceMethodDeclaration.
DNObjectiveCParserListener.prototype.exitInstanceMethodDeclaration = function(ctx) {
};


// Enter a parse tree produced by ObjectiveCParser#methodDeclaration.
DNObjectiveCParserListener.prototype.enterMethodDeclaration = function(ctx) {
};

// Exit a parse tree produced by ObjectiveCParser#methodDeclaration.
DNObjectiveCParserListener.prototype.exitMethodDeclaration = function(ctx) {
};


// Enter a parse tree produced by ObjectiveCParser#implementationDefinitionList.
DNObjectiveCParserListener.prototype.enterImplementationDefinitionList = function(ctx) {
};

// Exit a parse tree produced by ObjectiveCParser#implementationDefinitionList.
DNObjectiveCParserListener.prototype.exitImplementationDefinitionList = function(ctx) {
};


// Enter a parse tree produced by ObjectiveCParser#classMethodDefinition.
DNObjectiveCParserListener.prototype.enterClassMethodDefinition = function(ctx) {
};

// Exit a parse tree produced by ObjectiveCParser#classMethodDefinition.
DNObjectiveCParserListener.prototype.exitClassMethodDefinition = function(ctx) {
};


// Enter a parse tree produced by ObjectiveCParser#instanceMethodDefinition.
DNObjectiveCParserListener.prototype.enterInstanceMethodDefinition = function(ctx) {
};

// Exit a parse tree produced by ObjectiveCParser#instanceMethodDefinition.
DNObjectiveCParserListener.prototype.exitInstanceMethodDefinition = function(ctx) {
};


// Enter a parse tree produced by ObjectiveCParser#methodDefinition.
DNObjectiveCParserListener.prototype.enterMethodDefinition = function(ctx) {
};

// Exit a parse tree produced by ObjectiveCParser#methodDefinition.
DNObjectiveCParserListener.prototype.exitMethodDefinition = function(ctx) {
};


// Enter a parse tree produced by ObjectiveCParser#methodSelector.
DNObjectiveCParserListener.prototype.enterMethodSelector = function(ctx) {
};

// Exit a parse tree produced by ObjectiveCParser#methodSelector.
DNObjectiveCParserListener.prototype.exitMethodSelector = function(ctx) {
};


// Enter a parse tree produced by ObjectiveCParser#keywordDeclarator.
DNObjectiveCParserListener.prototype.enterKeywordDeclarator = function(ctx) {
};

// Exit a parse tree produced by ObjectiveCParser#keywordDeclarator.
DNObjectiveCParserListener.prototype.exitKeywordDeclarator = function(ctx) {
};


// Enter a parse tree produced by ObjectiveCParser#selector.
DNObjectiveCParserListener.prototype.enterSelector = function(ctx) {
};

// Exit a parse tree produced by ObjectiveCParser#selector.
DNObjectiveCParserListener.prototype.exitSelector = function(ctx) {
};


// Enter a parse tree produced by ObjectiveCParser#methodType.
DNObjectiveCParserListener.prototype.enterMethodType = function(ctx) {
};

// Exit a parse tree produced by ObjectiveCParser#methodType.
DNObjectiveCParserListener.prototype.exitMethodType = function(ctx) {
};


// Enter a parse tree produced by ObjectiveCParser#propertyImplementation.
DNObjectiveCParserListener.prototype.enterPropertyImplementation = function(ctx) {
};

// Exit a parse tree produced by ObjectiveCParser#propertyImplementation.
DNObjectiveCParserListener.prototype.exitPropertyImplementation = function(ctx) {
};


// Enter a parse tree produced by ObjectiveCParser#propertySynthesizeList.
DNObjectiveCParserListener.prototype.enterPropertySynthesizeList = function(ctx) {
};

// Exit a parse tree produced by ObjectiveCParser#propertySynthesizeList.
DNObjectiveCParserListener.prototype.exitPropertySynthesizeList = function(ctx) {
};


// Enter a parse tree produced by ObjectiveCParser#propertySynthesizeItem.
DNObjectiveCParserListener.prototype.enterPropertySynthesizeItem = function(ctx) {
};

// Exit a parse tree produced by ObjectiveCParser#propertySynthesizeItem.
DNObjectiveCParserListener.prototype.exitPropertySynthesizeItem = function(ctx) {
};


// Enter a parse tree produced by ObjectiveCParser#blockType.
DNObjectiveCParserListener.prototype.enterBlockType = function(ctx) {
};

// Exit a parse tree produced by ObjectiveCParser#blockType.
DNObjectiveCParserListener.prototype.exitBlockType = function(ctx) {
};


// Enter a parse tree produced by ObjectiveCParser#genericsSpecifier.
DNObjectiveCParserListener.prototype.enterGenericsSpecifier = function(ctx) {
};

// Exit a parse tree produced by ObjectiveCParser#genericsSpecifier.
DNObjectiveCParserListener.prototype.exitGenericsSpecifier = function(ctx) {
};


// Enter a parse tree produced by ObjectiveCParser#typeSpecifierWithPrefixes.
DNObjectiveCParserListener.prototype.enterTypeSpecifierWithPrefixes = function(ctx) {
};

// Exit a parse tree produced by ObjectiveCParser#typeSpecifierWithPrefixes.
DNObjectiveCParserListener.prototype.exitTypeSpecifierWithPrefixes = function(ctx) {
};


// Enter a parse tree produced by ObjectiveCParser#dictionaryExpression.
DNObjectiveCParserListener.prototype.enterDictionaryExpression = function(ctx) {
};

// Exit a parse tree produced by ObjectiveCParser#dictionaryExpression.
DNObjectiveCParserListener.prototype.exitDictionaryExpression = function(ctx) {
};


// Enter a parse tree produced by ObjectiveCParser#dictionaryPair.
DNObjectiveCParserListener.prototype.enterDictionaryPair = function(ctx) {
};

// Exit a parse tree produced by ObjectiveCParser#dictionaryPair.
DNObjectiveCParserListener.prototype.exitDictionaryPair = function(ctx) {
};


// Enter a parse tree produced by ObjectiveCParser#arrayExpression.
DNObjectiveCParserListener.prototype.enterArrayExpression = function(ctx) {
};

// Exit a parse tree produced by ObjectiveCParser#arrayExpression.
DNObjectiveCParserListener.prototype.exitArrayExpression = function(ctx) {
};


// Enter a parse tree produced by ObjectiveCParser#boxExpression.
DNObjectiveCParserListener.prototype.enterBoxExpression = function(ctx) {
};

// Exit a parse tree produced by ObjectiveCParser#boxExpression.
DNObjectiveCParserListener.prototype.exitBoxExpression = function(ctx) {
};


// Enter a parse tree produced by ObjectiveCParser#blockParameters.
DNObjectiveCParserListener.prototype.enterBlockParameters = function(ctx) {
};

// Exit a parse tree produced by ObjectiveCParser#blockParameters.
DNObjectiveCParserListener.prototype.exitBlockParameters = function(ctx) {
};


// Enter a parse tree produced by ObjectiveCParser#typeVariableDeclaratorOrName.
DNObjectiveCParserListener.prototype.enterTypeVariableDeclaratorOrName = function(ctx) {
};

// Exit a parse tree produced by ObjectiveCParser#typeVariableDeclaratorOrName.
DNObjectiveCParserListener.prototype.exitTypeVariableDeclaratorOrName = function(ctx) {
};


// Enter a parse tree produced by ObjectiveCParser#blockExpression.
DNObjectiveCParserListener.prototype.enterBlockExpression = function(ctx) {
};

// Exit a parse tree produced by ObjectiveCParser#blockExpression.
DNObjectiveCParserListener.prototype.exitBlockExpression = function(ctx) {
};


// Enter a parse tree produced by ObjectiveCParser#messageExpression.
DNObjectiveCParserListener.prototype.enterMessageExpression = function(ctx) {
};

// Exit a parse tree produced by ObjectiveCParser#messageExpression.
DNObjectiveCParserListener.prototype.exitMessageExpression = function(ctx) {
};


// Enter a parse tree produced by ObjectiveCParser#receiver.
DNObjectiveCParserListener.prototype.enterReceiver = function(ctx) {
};

// Exit a parse tree produced by ObjectiveCParser#receiver.
DNObjectiveCParserListener.prototype.exitReceiver = function(ctx) {
};


// Enter a parse tree produced by ObjectiveCParser#messageSelector.
DNObjectiveCParserListener.prototype.enterMessageSelector = function(ctx) {
};

// Exit a parse tree produced by ObjectiveCParser#messageSelector.
DNObjectiveCParserListener.prototype.exitMessageSelector = function(ctx) {
};


// Enter a parse tree produced by ObjectiveCParser#keywordArgument.
DNObjectiveCParserListener.prototype.enterKeywordArgument = function(ctx) {
};

// Exit a parse tree produced by ObjectiveCParser#keywordArgument.
DNObjectiveCParserListener.prototype.exitKeywordArgument = function(ctx) {
};


// Enter a parse tree produced by ObjectiveCParser#keywordArgumentType.
DNObjectiveCParserListener.prototype.enterKeywordArgumentType = function(ctx) {
};

// Exit a parse tree produced by ObjectiveCParser#keywordArgumentType.
DNObjectiveCParserListener.prototype.exitKeywordArgumentType = function(ctx) {
};


// Enter a parse tree produced by ObjectiveCParser#selectorExpression.
DNObjectiveCParserListener.prototype.enterSelectorExpression = function(ctx) {
};

// Exit a parse tree produced by ObjectiveCParser#selectorExpression.
DNObjectiveCParserListener.prototype.exitSelectorExpression = function(ctx) {
};


// Enter a parse tree produced by ObjectiveCParser#selectorName.
DNObjectiveCParserListener.prototype.enterSelectorName = function(ctx) {
};

// Exit a parse tree produced by ObjectiveCParser#selectorName.
DNObjectiveCParserListener.prototype.exitSelectorName = function(ctx) {
};


// Enter a parse tree produced by ObjectiveCParser#protocolExpression.
DNObjectiveCParserListener.prototype.enterProtocolExpression = function(ctx) {
};

// Exit a parse tree produced by ObjectiveCParser#protocolExpression.
DNObjectiveCParserListener.prototype.exitProtocolExpression = function(ctx) {
};


// Enter a parse tree produced by ObjectiveCParser#encodeExpression.
DNObjectiveCParserListener.prototype.enterEncodeExpression = function(ctx) {
};

// Exit a parse tree produced by ObjectiveCParser#encodeExpression.
DNObjectiveCParserListener.prototype.exitEncodeExpression = function(ctx) {
};


// Enter a parse tree produced by ObjectiveCParser#typeVariableDeclarator.
DNObjectiveCParserListener.prototype.enterTypeVariableDeclarator = function(ctx) {
};

// Exit a parse tree produced by ObjectiveCParser#typeVariableDeclarator.
DNObjectiveCParserListener.prototype.exitTypeVariableDeclarator = function(ctx) {
};


// Enter a parse tree produced by ObjectiveCParser#throwStatement.
DNObjectiveCParserListener.prototype.enterThrowStatement = function(ctx) {
};

// Exit a parse tree produced by ObjectiveCParser#throwStatement.
DNObjectiveCParserListener.prototype.exitThrowStatement = function(ctx) {
};


// Enter a parse tree produced by ObjectiveCParser#tryBlock.
DNObjectiveCParserListener.prototype.enterTryBlock = function(ctx) {
};

// Exit a parse tree produced by ObjectiveCParser#tryBlock.
DNObjectiveCParserListener.prototype.exitTryBlock = function(ctx) {
};


// Enter a parse tree produced by ObjectiveCParser#catchStatement.
DNObjectiveCParserListener.prototype.enterCatchStatement = function(ctx) {
};

// Exit a parse tree produced by ObjectiveCParser#catchStatement.
DNObjectiveCParserListener.prototype.exitCatchStatement = function(ctx) {
};


// Enter a parse tree produced by ObjectiveCParser#synchronizedStatement.
DNObjectiveCParserListener.prototype.enterSynchronizedStatement = function(ctx) {
};

// Exit a parse tree produced by ObjectiveCParser#synchronizedStatement.
DNObjectiveCParserListener.prototype.exitSynchronizedStatement = function(ctx) {
};


// Enter a parse tree produced by ObjectiveCParser#autoreleaseStatement.
DNObjectiveCParserListener.prototype.enterAutoreleaseStatement = function(ctx) {
};

// Exit a parse tree produced by ObjectiveCParser#autoreleaseStatement.
DNObjectiveCParserListener.prototype.exitAutoreleaseStatement = function(ctx) {
};


// Enter a parse tree produced by ObjectiveCParser#functionDeclaration.
DNObjectiveCParserListener.prototype.enterFunctionDeclaration = function(ctx) {
};

// Exit a parse tree produced by ObjectiveCParser#functionDeclaration.
DNObjectiveCParserListener.prototype.exitFunctionDeclaration = function(ctx) {
};


// Enter a parse tree produced by ObjectiveCParser#functionDefinition.
DNObjectiveCParserListener.prototype.enterFunctionDefinition = function(ctx) {
};

// Exit a parse tree produced by ObjectiveCParser#functionDefinition.
DNObjectiveCParserListener.prototype.exitFunctionDefinition = function(ctx) {
};


// Enter a parse tree produced by ObjectiveCParser#functionSignature.
DNObjectiveCParserListener.prototype.enterFunctionSignature = function(ctx) {
};

// Exit a parse tree produced by ObjectiveCParser#functionSignature.
DNObjectiveCParserListener.prototype.exitFunctionSignature = function(ctx) {
};


// Enter a parse tree produced by ObjectiveCParser#attribute.
DNObjectiveCParserListener.prototype.enterAttribute = function(ctx) {
};

// Exit a parse tree produced by ObjectiveCParser#attribute.
DNObjectiveCParserListener.prototype.exitAttribute = function(ctx) {
};


// Enter a parse tree produced by ObjectiveCParser#attributeName.
DNObjectiveCParserListener.prototype.enterAttributeName = function(ctx) {
};

// Exit a parse tree produced by ObjectiveCParser#attributeName.
DNObjectiveCParserListener.prototype.exitAttributeName = function(ctx) {
};


// Enter a parse tree produced by ObjectiveCParser#attributeParameters.
DNObjectiveCParserListener.prototype.enterAttributeParameters = function(ctx) {
};

// Exit a parse tree produced by ObjectiveCParser#attributeParameters.
DNObjectiveCParserListener.prototype.exitAttributeParameters = function(ctx) {
};


// Enter a parse tree produced by ObjectiveCParser#attributeParameterList.
DNObjectiveCParserListener.prototype.enterAttributeParameterList = function(ctx) {
};

// Exit a parse tree produced by ObjectiveCParser#attributeParameterList.
DNObjectiveCParserListener.prototype.exitAttributeParameterList = function(ctx) {
};


// Enter a parse tree produced by ObjectiveCParser#attributeParameter.
DNObjectiveCParserListener.prototype.enterAttributeParameter = function(ctx) {
};

// Exit a parse tree produced by ObjectiveCParser#attributeParameter.
DNObjectiveCParserListener.prototype.exitAttributeParameter = function(ctx) {
};


// Enter a parse tree produced by ObjectiveCParser#attributeParameterAssignment.
DNObjectiveCParserListener.prototype.enterAttributeParameterAssignment = function(ctx) {
};

// Exit a parse tree produced by ObjectiveCParser#attributeParameterAssignment.
DNObjectiveCParserListener.prototype.exitAttributeParameterAssignment = function(ctx) {
};


// Enter a parse tree produced by ObjectiveCParser#declaration.
DNObjectiveCParserListener.prototype.enterDeclaration = function(ctx) {
};

// Exit a parse tree produced by ObjectiveCParser#declaration.
DNObjectiveCParserListener.prototype.exitDeclaration = function(ctx) {
};


// Enter a parse tree produced by ObjectiveCParser#functionCallExpression.
DNObjectiveCParserListener.prototype.enterFunctionCallExpression = function(ctx) {
};

// Exit a parse tree produced by ObjectiveCParser#functionCallExpression.
DNObjectiveCParserListener.prototype.exitFunctionCallExpression = function(ctx) {
};


// Enter a parse tree produced by ObjectiveCParser#enumDeclaration.
DNObjectiveCParserListener.prototype.enterEnumDeclaration = function(ctx) {
};

// Exit a parse tree produced by ObjectiveCParser#enumDeclaration.
DNObjectiveCParserListener.prototype.exitEnumDeclaration = function(ctx) {
};


// Enter a parse tree produced by ObjectiveCParser#varDeclaration.
DNObjectiveCParserListener.prototype.enterVarDeclaration = function(ctx) {
};

// Exit a parse tree produced by ObjectiveCParser#varDeclaration.
DNObjectiveCParserListener.prototype.exitVarDeclaration = function(ctx) {
};


// Enter a parse tree produced by ObjectiveCParser#typedefDeclaration.
DNObjectiveCParserListener.prototype.enterTypedefDeclaration = function(ctx) {
};

// Exit a parse tree produced by ObjectiveCParser#typedefDeclaration.
DNObjectiveCParserListener.prototype.exitTypedefDeclaration = function(ctx) {
};


// Enter a parse tree produced by ObjectiveCParser#typeDeclaratorList.
DNObjectiveCParserListener.prototype.enterTypeDeclaratorList = function(ctx) {
};

// Exit a parse tree produced by ObjectiveCParser#typeDeclaratorList.
DNObjectiveCParserListener.prototype.exitTypeDeclaratorList = function(ctx) {
};


// Enter a parse tree produced by ObjectiveCParser#typeDeclarator.
DNObjectiveCParserListener.prototype.enterTypeDeclarator = function(ctx) {
};

// Exit a parse tree produced by ObjectiveCParser#typeDeclarator.
DNObjectiveCParserListener.prototype.exitTypeDeclarator = function(ctx) {
};


// Enter a parse tree produced by ObjectiveCParser#declarationSpecifiers.
DNObjectiveCParserListener.prototype.enterDeclarationSpecifiers = function(ctx) {
};

// Exit a parse tree produced by ObjectiveCParser#declarationSpecifiers.
DNObjectiveCParserListener.prototype.exitDeclarationSpecifiers = function(ctx) {
};


// Enter a parse tree produced by ObjectiveCParser#attributeSpecifier.
DNObjectiveCParserListener.prototype.enterAttributeSpecifier = function(ctx) {
};

// Exit a parse tree produced by ObjectiveCParser#attributeSpecifier.
DNObjectiveCParserListener.prototype.exitAttributeSpecifier = function(ctx) {
};


// Enter a parse tree produced by ObjectiveCParser#initDeclaratorList.
DNObjectiveCParserListener.prototype.enterInitDeclaratorList = function(ctx) {
};

// Exit a parse tree produced by ObjectiveCParser#initDeclaratorList.
DNObjectiveCParserListener.prototype.exitInitDeclaratorList = function(ctx) {
};


// Enter a parse tree produced by ObjectiveCParser#initDeclarator.
DNObjectiveCParserListener.prototype.enterInitDeclarator = function(ctx) {
};

// Exit a parse tree produced by ObjectiveCParser#initDeclarator.
DNObjectiveCParserListener.prototype.exitInitDeclarator = function(ctx) {
};


// Enter a parse tree produced by ObjectiveCParser#structOrUnionSpecifier.
DNObjectiveCParserListener.prototype.enterStructOrUnionSpecifier = function(ctx) {
};

// Exit a parse tree produced by ObjectiveCParser#structOrUnionSpecifier.
DNObjectiveCParserListener.prototype.exitStructOrUnionSpecifier = function(ctx) {
};


// Enter a parse tree produced by ObjectiveCParser#fieldDeclaration.
DNObjectiveCParserListener.prototype.enterFieldDeclaration = function(ctx) {
};

// Exit a parse tree produced by ObjectiveCParser#fieldDeclaration.
DNObjectiveCParserListener.prototype.exitFieldDeclaration = function(ctx) {
};


// Enter a parse tree produced by ObjectiveCParser#specifierQualifierList.
DNObjectiveCParserListener.prototype.enterSpecifierQualifierList = function(ctx) {
};

// Exit a parse tree produced by ObjectiveCParser#specifierQualifierList.
DNObjectiveCParserListener.prototype.exitSpecifierQualifierList = function(ctx) {
};


// Enter a parse tree produced by ObjectiveCParser#ibOutletQualifier.
DNObjectiveCParserListener.prototype.enterIbOutletQualifier = function(ctx) {
};

// Exit a parse tree produced by ObjectiveCParser#ibOutletQualifier.
DNObjectiveCParserListener.prototype.exitIbOutletQualifier = function(ctx) {
};


// Enter a parse tree produced by ObjectiveCParser#arcBehaviourSpecifier.
DNObjectiveCParserListener.prototype.enterArcBehaviourSpecifier = function(ctx) {
};

// Exit a parse tree produced by ObjectiveCParser#arcBehaviourSpecifier.
DNObjectiveCParserListener.prototype.exitArcBehaviourSpecifier = function(ctx) {
};


// Enter a parse tree produced by ObjectiveCParser#nullabilitySpecifier.
DNObjectiveCParserListener.prototype.enterNullabilitySpecifier = function(ctx) {
};

// Exit a parse tree produced by ObjectiveCParser#nullabilitySpecifier.
DNObjectiveCParserListener.prototype.exitNullabilitySpecifier = function(ctx) {
};


// Enter a parse tree produced by ObjectiveCParser#storageClassSpecifier.
DNObjectiveCParserListener.prototype.enterStorageClassSpecifier = function(ctx) {
};

// Exit a parse tree produced by ObjectiveCParser#storageClassSpecifier.
DNObjectiveCParserListener.prototype.exitStorageClassSpecifier = function(ctx) {
};


// Enter a parse tree produced by ObjectiveCParser#typePrefix.
DNObjectiveCParserListener.prototype.enterTypePrefix = function(ctx) {
};

// Exit a parse tree produced by ObjectiveCParser#typePrefix.
DNObjectiveCParserListener.prototype.exitTypePrefix = function(ctx) {
};


// Enter a parse tree produced by ObjectiveCParser#typeQualifier.
DNObjectiveCParserListener.prototype.enterTypeQualifier = function(ctx) {
};

// Exit a parse tree produced by ObjectiveCParser#typeQualifier.
DNObjectiveCParserListener.prototype.exitTypeQualifier = function(ctx) {
};


// Enter a parse tree produced by ObjectiveCParser#protocolQualifier.
DNObjectiveCParserListener.prototype.enterProtocolQualifier = function(ctx) {
};

// Exit a parse tree produced by ObjectiveCParser#protocolQualifier.
DNObjectiveCParserListener.prototype.exitProtocolQualifier = function(ctx) {
};


// Enter a parse tree produced by ObjectiveCParser#typeSpecifier.
DNObjectiveCParserListener.prototype.enterTypeSpecifier = function(ctx) {
};

// Exit a parse tree produced by ObjectiveCParser#typeSpecifier.
DNObjectiveCParserListener.prototype.exitTypeSpecifier = function(ctx) {
};


// Enter a parse tree produced by ObjectiveCParser#typeofExpression.
DNObjectiveCParserListener.prototype.enterTypeofExpression = function(ctx) {
};

// Exit a parse tree produced by ObjectiveCParser#typeofExpression.
DNObjectiveCParserListener.prototype.exitTypeofExpression = function(ctx) {
};


// Enter a parse tree produced by ObjectiveCParser#fieldDeclaratorList.
DNObjectiveCParserListener.prototype.enterFieldDeclaratorList = function(ctx) {
};

// Exit a parse tree produced by ObjectiveCParser#fieldDeclaratorList.
DNObjectiveCParserListener.prototype.exitFieldDeclaratorList = function(ctx) {
};


// Enter a parse tree produced by ObjectiveCParser#fieldDeclarator.
DNObjectiveCParserListener.prototype.enterFieldDeclarator = function(ctx) {
};

// Exit a parse tree produced by ObjectiveCParser#fieldDeclarator.
DNObjectiveCParserListener.prototype.exitFieldDeclarator = function(ctx) {
};


// Enter a parse tree produced by ObjectiveCParser#enumSpecifier.
DNObjectiveCParserListener.prototype.enterEnumSpecifier = function(ctx) {
};

// Exit a parse tree produced by ObjectiveCParser#enumSpecifier.
DNObjectiveCParserListener.prototype.exitEnumSpecifier = function(ctx) {
};


// Enter a parse tree produced by ObjectiveCParser#enumeratorList.
DNObjectiveCParserListener.prototype.enterEnumeratorList = function(ctx) {
};

// Exit a parse tree produced by ObjectiveCParser#enumeratorList.
DNObjectiveCParserListener.prototype.exitEnumeratorList = function(ctx) {
};


// Enter a parse tree produced by ObjectiveCParser#enumerator.
DNObjectiveCParserListener.prototype.enterEnumerator = function(ctx) {
};

// Exit a parse tree produced by ObjectiveCParser#enumerator.
DNObjectiveCParserListener.prototype.exitEnumerator = function(ctx) {
};


// Enter a parse tree produced by ObjectiveCParser#enumeratorIdentifier.
DNObjectiveCParserListener.prototype.enterEnumeratorIdentifier = function(ctx) {
};

// Exit a parse tree produced by ObjectiveCParser#enumeratorIdentifier.
DNObjectiveCParserListener.prototype.exitEnumeratorIdentifier = function(ctx) {
};


// Enter a parse tree produced by ObjectiveCParser#directDeclarator.
DNObjectiveCParserListener.prototype.enterDirectDeclarator = function(ctx) {
};

// Exit a parse tree produced by ObjectiveCParser#directDeclarator.
DNObjectiveCParserListener.prototype.exitDirectDeclarator = function(ctx) {
};


// Enter a parse tree produced by ObjectiveCParser#declaratorSuffix.
DNObjectiveCParserListener.prototype.enterDeclaratorSuffix = function(ctx) {
};

// Exit a parse tree produced by ObjectiveCParser#declaratorSuffix.
DNObjectiveCParserListener.prototype.exitDeclaratorSuffix = function(ctx) {
};


// Enter a parse tree produced by ObjectiveCParser#parameterList.
DNObjectiveCParserListener.prototype.enterParameterList = function(ctx) {
};

// Exit a parse tree produced by ObjectiveCParser#parameterList.
DNObjectiveCParserListener.prototype.exitParameterList = function(ctx) {
};


// Enter a parse tree produced by ObjectiveCParser#pointer.
DNObjectiveCParserListener.prototype.enterPointer = function(ctx) {
};

// Exit a parse tree produced by ObjectiveCParser#pointer.
DNObjectiveCParserListener.prototype.exitPointer = function(ctx) {
};


// Enter a parse tree produced by ObjectiveCParser#macro.
DNObjectiveCParserListener.prototype.enterMacro = function(ctx) {
};

// Exit a parse tree produced by ObjectiveCParser#macro.
DNObjectiveCParserListener.prototype.exitMacro = function(ctx) {
};


// Enter a parse tree produced by ObjectiveCParser#arrayInitializer.
DNObjectiveCParserListener.prototype.enterArrayInitializer = function(ctx) {
};

// Exit a parse tree produced by ObjectiveCParser#arrayInitializer.
DNObjectiveCParserListener.prototype.exitArrayInitializer = function(ctx) {
};


// Enter a parse tree produced by ObjectiveCParser#structInitializer.
DNObjectiveCParserListener.prototype.enterStructInitializer = function(ctx) {
};

// Exit a parse tree produced by ObjectiveCParser#structInitializer.
DNObjectiveCParserListener.prototype.exitStructInitializer = function(ctx) {
};


// Enter a parse tree produced by ObjectiveCParser#initializerList.
DNObjectiveCParserListener.prototype.enterInitializerList = function(ctx) {
};

// Exit a parse tree produced by ObjectiveCParser#initializerList.
DNObjectiveCParserListener.prototype.exitInitializerList = function(ctx) {
};


// Enter a parse tree produced by ObjectiveCParser#typeName.
DNObjectiveCParserListener.prototype.enterTypeName = function(ctx) {
};

// Exit a parse tree produced by ObjectiveCParser#typeName.
DNObjectiveCParserListener.prototype.exitTypeName = function(ctx) {
};


// Enter a parse tree produced by ObjectiveCParser#abstractDeclarator.
DNObjectiveCParserListener.prototype.enterAbstractDeclarator = function(ctx) {
};

// Exit a parse tree produced by ObjectiveCParser#abstractDeclarator.
DNObjectiveCParserListener.prototype.exitAbstractDeclarator = function(ctx) {
};


// Enter a parse tree produced by ObjectiveCParser#abstractDeclaratorSuffix.
DNObjectiveCParserListener.prototype.enterAbstractDeclaratorSuffix = function(ctx) {
};

// Exit a parse tree produced by ObjectiveCParser#abstractDeclaratorSuffix.
DNObjectiveCParserListener.prototype.exitAbstractDeclaratorSuffix = function(ctx) {
};


// Enter a parse tree produced by ObjectiveCParser#parameterDeclarationList.
DNObjectiveCParserListener.prototype.enterParameterDeclarationList = function(ctx) {
};

// Exit a parse tree produced by ObjectiveCParser#parameterDeclarationList.
DNObjectiveCParserListener.prototype.exitParameterDeclarationList = function(ctx) {
};


// Enter a parse tree produced by ObjectiveCParser#parameterDeclaration.
DNObjectiveCParserListener.prototype.enterParameterDeclaration = function(ctx) {
};

// Exit a parse tree produced by ObjectiveCParser#parameterDeclaration.
DNObjectiveCParserListener.prototype.exitParameterDeclaration = function(ctx) {
};


// Enter a parse tree produced by ObjectiveCParser#declarator.
DNObjectiveCParserListener.prototype.enterDeclarator = function(ctx) {
};

// Exit a parse tree produced by ObjectiveCParser#declarator.
DNObjectiveCParserListener.prototype.exitDeclarator = function(ctx) {
};


// Enter a parse tree produced by ObjectiveCParser#statement.
DNObjectiveCParserListener.prototype.enterStatement = function(ctx) {
};

// Exit a parse tree produced by ObjectiveCParser#statement.
DNObjectiveCParserListener.prototype.exitStatement = function(ctx) {
};


// Enter a parse tree produced by ObjectiveCParser#labeledStatement.
DNObjectiveCParserListener.prototype.enterLabeledStatement = function(ctx) {
};

// Exit a parse tree produced by ObjectiveCParser#labeledStatement.
DNObjectiveCParserListener.prototype.exitLabeledStatement = function(ctx) {
};


// Enter a parse tree produced by ObjectiveCParser#rangeExpression.
DNObjectiveCParserListener.prototype.enterRangeExpression = function(ctx) {
};

// Exit a parse tree produced by ObjectiveCParser#rangeExpression.
DNObjectiveCParserListener.prototype.exitRangeExpression = function(ctx) {
};


// Enter a parse tree produced by ObjectiveCParser#compoundStatement.
DNObjectiveCParserListener.prototype.enterCompoundStatement = function(ctx) {
};

// Exit a parse tree produced by ObjectiveCParser#compoundStatement.
DNObjectiveCParserListener.prototype.exitCompoundStatement = function(ctx) {
};


// Enter a parse tree produced by ObjectiveCParser#selectionStatement.
DNObjectiveCParserListener.prototype.enterSelectionStatement = function(ctx) {
};

// Exit a parse tree produced by ObjectiveCParser#selectionStatement.
DNObjectiveCParserListener.prototype.exitSelectionStatement = function(ctx) {
};


// Enter a parse tree produced by ObjectiveCParser#switchStatement.
DNObjectiveCParserListener.prototype.enterSwitchStatement = function(ctx) {
};

// Exit a parse tree produced by ObjectiveCParser#switchStatement.
DNObjectiveCParserListener.prototype.exitSwitchStatement = function(ctx) {
};


// Enter a parse tree produced by ObjectiveCParser#switchBlock.
DNObjectiveCParserListener.prototype.enterSwitchBlock = function(ctx) {
};

// Exit a parse tree produced by ObjectiveCParser#switchBlock.
DNObjectiveCParserListener.prototype.exitSwitchBlock = function(ctx) {
};


// Enter a parse tree produced by ObjectiveCParser#switchSection.
DNObjectiveCParserListener.prototype.enterSwitchSection = function(ctx) {
};

// Exit a parse tree produced by ObjectiveCParser#switchSection.
DNObjectiveCParserListener.prototype.exitSwitchSection = function(ctx) {
};


// Enter a parse tree produced by ObjectiveCParser#switchLabel.
DNObjectiveCParserListener.prototype.enterSwitchLabel = function(ctx) {
};

// Exit a parse tree produced by ObjectiveCParser#switchLabel.
DNObjectiveCParserListener.prototype.exitSwitchLabel = function(ctx) {
};


// Enter a parse tree produced by ObjectiveCParser#iterationStatement.
DNObjectiveCParserListener.prototype.enterIterationStatement = function(ctx) {
};

// Exit a parse tree produced by ObjectiveCParser#iterationStatement.
DNObjectiveCParserListener.prototype.exitIterationStatement = function(ctx) {
};


// Enter a parse tree produced by ObjectiveCParser#whileStatement.
DNObjectiveCParserListener.prototype.enterWhileStatement = function(ctx) {
};

// Exit a parse tree produced by ObjectiveCParser#whileStatement.
DNObjectiveCParserListener.prototype.exitWhileStatement = function(ctx) {
};


// Enter a parse tree produced by ObjectiveCParser#doStatement.
DNObjectiveCParserListener.prototype.enterDoStatement = function(ctx) {
};

// Exit a parse tree produced by ObjectiveCParser#doStatement.
DNObjectiveCParserListener.prototype.exitDoStatement = function(ctx) {
};


// Enter a parse tree produced by ObjectiveCParser#forStatement.
DNObjectiveCParserListener.prototype.enterForStatement = function(ctx) {
};

// Exit a parse tree produced by ObjectiveCParser#forStatement.
DNObjectiveCParserListener.prototype.exitForStatement = function(ctx) {
};


// Enter a parse tree produced by ObjectiveCParser#forLoopInitializer.
DNObjectiveCParserListener.prototype.enterForLoopInitializer = function(ctx) {
};

// Exit a parse tree produced by ObjectiveCParser#forLoopInitializer.
DNObjectiveCParserListener.prototype.exitForLoopInitializer = function(ctx) {
};


// Enter a parse tree produced by ObjectiveCParser#forInStatement.
DNObjectiveCParserListener.prototype.enterForInStatement = function(ctx) {
};

// Exit a parse tree produced by ObjectiveCParser#forInStatement.
DNObjectiveCParserListener.prototype.exitForInStatement = function(ctx) {
};


// Enter a parse tree produced by ObjectiveCParser#jumpStatement.
DNObjectiveCParserListener.prototype.enterJumpStatement = function(ctx) {
};

// Exit a parse tree produced by ObjectiveCParser#jumpStatement.
DNObjectiveCParserListener.prototype.exitJumpStatement = function(ctx) {
};


// Enter a parse tree produced by ObjectiveCParser#expressions.
DNObjectiveCParserListener.prototype.enterExpressions = function(ctx) {
};

// Exit a parse tree produced by ObjectiveCParser#expressions.
DNObjectiveCParserListener.prototype.exitExpressions = function(ctx) {
};


// Enter a parse tree produced by ObjectiveCParser#expression.
DNObjectiveCParserListener.prototype.enterExpression = function(ctx) {
};

// Exit a parse tree produced by ObjectiveCParser#expression.
DNObjectiveCParserListener.prototype.exitExpression = function(ctx) {
};


// Enter a parse tree produced by ObjectiveCParser#assignmentOperator.
DNObjectiveCParserListener.prototype.enterAssignmentOperator = function(ctx) {
};

// Exit a parse tree produced by ObjectiveCParser#assignmentOperator.
DNObjectiveCParserListener.prototype.exitAssignmentOperator = function(ctx) {
};


// Enter a parse tree produced by ObjectiveCParser#castExpression.
DNObjectiveCParserListener.prototype.enterCastExpression = function(ctx) {
};

// Exit a parse tree produced by ObjectiveCParser#castExpression.
DNObjectiveCParserListener.prototype.exitCastExpression = function(ctx) {
};


// Enter a parse tree produced by ObjectiveCParser#initializer.
DNObjectiveCParserListener.prototype.enterInitializer = function(ctx) {
};

// Exit a parse tree produced by ObjectiveCParser#initializer.
DNObjectiveCParserListener.prototype.exitInitializer = function(ctx) {
};


// Enter a parse tree produced by ObjectiveCParser#constantExpression.
DNObjectiveCParserListener.prototype.enterConstantExpression = function(ctx) {
};

// Exit a parse tree produced by ObjectiveCParser#constantExpression.
DNObjectiveCParserListener.prototype.exitConstantExpression = function(ctx) {
};


// Enter a parse tree produced by ObjectiveCParser#unaryExpression.
DNObjectiveCParserListener.prototype.enterUnaryExpression = function(ctx) {
};

// Exit a parse tree produced by ObjectiveCParser#unaryExpression.
DNObjectiveCParserListener.prototype.exitUnaryExpression = function(ctx) {
};


// Enter a parse tree produced by ObjectiveCParser#unaryOperator.
DNObjectiveCParserListener.prototype.enterUnaryOperator = function(ctx) {
};

// Exit a parse tree produced by ObjectiveCParser#unaryOperator.
DNObjectiveCParserListener.prototype.exitUnaryOperator = function(ctx) {
};


// Enter a parse tree produced by ObjectiveCParser#postfixExpression.
DNObjectiveCParserListener.prototype.enterPostfixExpression = function(ctx) {
};

// Exit a parse tree produced by ObjectiveCParser#postfixExpression.
DNObjectiveCParserListener.prototype.exitPostfixExpression = function(ctx) {
};


// Enter a parse tree produced by ObjectiveCParser#postfix.
DNObjectiveCParserListener.prototype.enterPostfix = function(ctx) {
};

// Exit a parse tree produced by ObjectiveCParser#postfix.
DNObjectiveCParserListener.prototype.exitPostfix = function(ctx) {
};


// Enter a parse tree produced by ObjectiveCParser#argumentExpressionList.
DNObjectiveCParserListener.prototype.enterArgumentExpressionList = function(ctx) {
};

// Exit a parse tree produced by ObjectiveCParser#argumentExpressionList.
DNObjectiveCParserListener.prototype.exitArgumentExpressionList = function(ctx) {
};


// Enter a parse tree produced by ObjectiveCParser#argumentExpression.
DNObjectiveCParserListener.prototype.enterArgumentExpression = function(ctx) {
};

// Exit a parse tree produced by ObjectiveCParser#argumentExpression.
DNObjectiveCParserListener.prototype.exitArgumentExpression = function(ctx) {
};


// Enter a parse tree produced by ObjectiveCParser#primaryExpression.
DNObjectiveCParserListener.prototype.enterPrimaryExpression = function(ctx) {
};

// Exit a parse tree produced by ObjectiveCParser#primaryExpression.
DNObjectiveCParserListener.prototype.exitPrimaryExpression = function(ctx) {
};


// Enter a parse tree produced by ObjectiveCParser#constant.
DNObjectiveCParserListener.prototype.enterConstant = function(ctx) {
};

// Exit a parse tree produced by ObjectiveCParser#constant.
DNObjectiveCParserListener.prototype.exitConstant = function(ctx) {
};


// Enter a parse tree produced by ObjectiveCParser#stringLiteral.
DNObjectiveCParserListener.prototype.enterStringLiteral = function(ctx) {
};

// Exit a parse tree produced by ObjectiveCParser#stringLiteral.
DNObjectiveCParserListener.prototype.exitStringLiteral = function(ctx) {
};


// Enter a parse tree produced by ObjectiveCParser#identifier.
DNObjectiveCParserListener.prototype.enterIdentifier = function(ctx) {
};

// Exit a parse tree produced by ObjectiveCParser#identifier.
DNObjectiveCParserListener.prototype.exitIdentifier = function(ctx) {
};



exports.DNObjectiveCParserListener = DNObjectiveCParserListener;