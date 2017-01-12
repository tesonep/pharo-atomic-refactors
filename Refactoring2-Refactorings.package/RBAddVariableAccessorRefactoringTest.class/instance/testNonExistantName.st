testing
testNonExistantName

	self
		shouldFail: (RBAddVariableAccessorRefactoring 
			classVariable: #Foo
			class: #RBBasicLintRuleTest);
		shouldFail: (RBAddVariableAccessorRefactoring 
			instanceVariable: 'foo'
			class: #RBBasicLintRuleTest)