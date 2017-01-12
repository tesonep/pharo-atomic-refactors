testing
testMetaclassFailure

	self shouldFail: (RBProtectVariableRefactoring 
			classVariable: #RecursiveSelfRule
			class: RBTransformationRuleTest class)