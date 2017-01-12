testing
testDoesNotUnderstandAccessors

	self
		shouldFail: (RBRemoveDirectAccessToVariableRefactoring
			model: model
			instanceVariable: 'instVarName1'
			class: #Foo);
		shouldFail: (RBRemoveDirectAccessToVariableRefactoring
			classVariable: 'RecursiveSelfRule'
			class: #RBTransformationRuleTest)