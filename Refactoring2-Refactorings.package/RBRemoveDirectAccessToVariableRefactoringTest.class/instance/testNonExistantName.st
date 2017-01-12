testing
testNonExistantName

	self
		shouldFail: (RBRemoveDirectAccessToVariableRefactoring 
			instanceVariable: 'foo'
			class: #RBBasicLintRuleTest);
		shouldFail: (RBRemoveDirectAccessToVariableRefactoring 
			classVariable: #Foo
			class: #RBBasicLintRuleTest)