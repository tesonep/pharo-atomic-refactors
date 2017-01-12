testing
testDoesNotDefineVariable

	self
		shouldFail: (RBRemoveDirectAccessToVariableRefactoring
			model: model
			instanceVariable: 'instVarName1'
			class: #Bar);
		shouldFail: (RBRemoveDirectAccessToVariableRefactoring
			classVariable: 'Foo1'
			class: #RBFooLintRuleTest)