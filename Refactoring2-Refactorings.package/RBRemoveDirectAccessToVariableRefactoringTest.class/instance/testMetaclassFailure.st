testing
testMetaclassFailure

	self shouldFail: (RBRemoveDirectAccessToVariableRefactoring 
			classVariable: #RecursiveSelfRule
			class: RBTransformationRuleTest class)