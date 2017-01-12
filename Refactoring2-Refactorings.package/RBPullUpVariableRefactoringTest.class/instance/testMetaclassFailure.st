testing
testMetaclassFailure

	self shouldFail: (RBPullUpVariableRefactoring 
			classVariable: #RecursiveSelfRule
			class: RBDummyLintRuleTest class)