as yet unclassified
testRenameClassInstanceVariable
	| x refactor |
	x := example new.
	x oneClassVariable: 10.
	
	self assert: x oneClassVariable equals: 10.
	
	refactor := 	RBRenameClassVariableRefactoring rename: 'OneClassVariable' to: 'AnotherName' in: example.
	refactor execute.
		
	self assert: x oneClassVariable equals: 10.