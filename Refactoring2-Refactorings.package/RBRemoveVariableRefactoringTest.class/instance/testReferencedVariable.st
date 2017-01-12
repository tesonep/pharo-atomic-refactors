testing
testReferencedVariable

	self 
		shouldFail: (RBRemoveVariableRefactoring 
			instanceVariable: 'name'
			class: #RBDummyLintRuleTest);
		shouldFail: (RBRemoveVariableRefactoring 
			classVariable: #RecursiveSelfRule
			class: #RBTransformationDummyRuleTest)