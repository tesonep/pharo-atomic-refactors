testing
testWithAssignment

	| refactoring class |
	refactoring := (RBProtectVariableRefactoring 
				model: model
				instanceVariable: 'instVarName2'
				class: #Foo)
				transform.
	
	class := model classNamed: #Foo.
	self assert: (class parseTreeFor: #instVarName2:)
		equals: (RBParser parseMethod: 'instVarName2: anObject instVarName2 := anObject').
	self assert: (class parseTreeFor: #instVarName2) 
		equals: (RBParser parseMethod: 'instVarName2 ^instVarName2').
	
	self assert: (class parseTreeFor: #foo)
		equals: (RBParser parseMethod: 'foo ^self instVarName2: 3').
	self assert: ((model classNamed: #Bar) parseTreeFor: #foo)
		equals: (RBParser parseMethod: 'foo
			instVarName1 := instVarName1 + self instVarName2 + ClassVarName1')