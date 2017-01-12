testing
testMetaclassFailure

	self shouldFail: (RBRenameVariableRefactoring 
			rename: #RecursiveSelfRule
			to: #Foo
			in: RBTransformationRuleTest class
			classVariable: true)