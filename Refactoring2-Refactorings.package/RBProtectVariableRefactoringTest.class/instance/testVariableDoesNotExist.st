testing
testVariableDoesNotExist

	self
		shouldFail: (RBProtectVariableRefactoring 
			instanceVariable: 'foo'
			class: #RBBasicLintRuleTest);
		shouldFail: (RBProtectVariableRefactoring 
			classVariable: #Foo
			class: #RBBasicLintRuleTest)