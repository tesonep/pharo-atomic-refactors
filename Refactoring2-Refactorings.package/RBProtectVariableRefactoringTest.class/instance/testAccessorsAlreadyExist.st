testing
testAccessorsAlreadyExist

	| refactoring class |
	refactoring := (RBProtectVariableRefactoring 
				model: model
				instanceVariable: 'instVarName1'
				class: #Foo)
				transform.
	
	class := model classNamed: #Foo.
	self assert: (class parseTreeFor: #bar)
		equals: (RBParser parseMethod: 'bar
			"Add one to instVarName1"
			self instVarName11: self instVarName11 + 1').
	self assert: (class parseTreeFor: #instVarName11:) 
		equals: (RBParser parseMethod: 'instVarName11: anObject
			instVarName1 := anObject').
	self assert: (class parseTreeFor: #instVarName11) 
		equals: (RBParser parseMethod: 'instVarName11 ^instVarName1').
		
	self assert: ((model classNamed: #Bar) parseTreeFor: #foo) 
		equals: (RBParser parseMethod: 'foo
			self instVarName11: self instVarName11 + instVarName2 + ClassVarName1')