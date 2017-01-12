testing
testAlreadyExistingName

	self
		shouldFail: (RBAddVariableRefactoring 
				instanceVariable: 'class'
				class: #RBTransformationRuleTest);
		shouldFail: (RBAddVariableRefactoring 
				instanceVariable: 'name'
				class: #RBTransformationRuleTest);
		shouldFail: (RBAddVariableRefactoring 
				classVariable: #RecursiveSelfRule
				class: #RBTransformationRuleTest);
		shouldFail: (RBAddVariableRefactoring 
				classVariable: self objectClassVariable
				class: #RBTransformationRuleTest)