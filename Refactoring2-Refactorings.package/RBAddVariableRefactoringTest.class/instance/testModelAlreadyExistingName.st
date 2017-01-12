testing
testModelAlreadyExistingName

	self 
		shouldFail: (RBAddVariableRefactoring 
				model: model
				instanceVariable: 'instVarName1'
				class: (model classNamed: #Bar));
		shouldFail: (RBAddVariableRefactoring 
				model: model
				classVariable: #ClassVarName2
				class: (model classNamed: #Bar))