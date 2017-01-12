testing
testInstanceVariable

	| refactoring class |
	refactoring := (RBRemoveDirectAccessToVariableRefactoring 
			model: model
			instanceVariable: 'instVarName2'
			class: #Foo)
			transform.
	
	class := model classNamed: #Foo.
	self assert: (class parseTreeFor: #foo) 
			equals: (RBParser parseMethod: 'foo ^ self instVarName2: 3')