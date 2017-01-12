testing
testVariableAlreadyExists

	self
		shouldFail: (RBRenameVariableRefactoring 
			rename: 'classBlock'
			to: 'name'
			in: #RBBasicLintRuleTest
			classVariable: false);
		shouldFail: (RBRenameVariableRefactoring 
			rename: #RecursiveSelfRule
			to: self objectClassVariable
			in: #RBTransformationRuleTest
			classVariable: true)