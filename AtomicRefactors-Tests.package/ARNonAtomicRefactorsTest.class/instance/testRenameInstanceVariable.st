as yet unclassified
testRenameInstanceVariable
	| x refactor |
	x := example new.
	x oneInstanceVariable: 23.
	
	self assert: x usingInstanceVariable equals: 23.
	
	refactor := 	RBRenameInstanceVariableRefactoring rename: 'oneInstanceVariable' to: 'anotherName' in: example.
	refactor execute.
		
	self assert: x usingInstanceVariable equals: 23.