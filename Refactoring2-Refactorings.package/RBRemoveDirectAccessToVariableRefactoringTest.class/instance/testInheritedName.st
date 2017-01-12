testing
testInheritedName

	self
		shouldFail: (RBRemoveDirectAccessToVariableRefactoring 
			instanceVariable: 'name'
			class: #RBBasicLintRuleTest);
		shouldFail: (RBRemoveDirectAccessToVariableRefactoring 
			classVariable: #DependentsFields
			class: #RBBasicLintRuleTest)