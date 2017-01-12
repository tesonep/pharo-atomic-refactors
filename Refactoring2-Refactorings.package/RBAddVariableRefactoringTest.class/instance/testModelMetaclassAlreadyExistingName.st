testing
testModelMetaclassAlreadyExistingName

	(model metaclassNamed: #Foo)
		addInstanceVariable: 'instVarName1'.
		
	self shouldFail: (RBAddVariableRefactoring 
				model: model
				instanceVariable: 'instVarName1'
				class: (model classNamed: #Bar))