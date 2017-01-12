testing
testVariableDoesNotExist

	self
		shouldFail: (RBRenameVariableRefactoring 
			rename: 'foo'
			to: 'newFoo'
			in: #RBBasicLintRuleTest
			classVariable: false);
		shouldFail: (RBRenameVariableRefactoring 
			rename: #foo
			to: #newFoo
			in: #RBBasicLintRuleTest
			classVariable: true)