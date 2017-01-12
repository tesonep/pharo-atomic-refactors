testing
testNonExistantName

	self 
		shouldFail: (RBRemoveVariableRefactoring 
			instanceVariable: 'name1'
			class: #RBDummyLintRuleTest);
		shouldFail: (RBRemoveVariableRefactoring 
			classVariable: #RecursiveSelfRule1
			class: #RBTransformationDummyRuleTest)