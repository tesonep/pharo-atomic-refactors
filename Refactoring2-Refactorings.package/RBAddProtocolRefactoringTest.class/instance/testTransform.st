testing
testTransform
	
	| refactoring |
	refactoring := (RBAddProtocolRefactoring
		protocol: 'transforming'
		inClass: #RBDummyEmptyClass)
		transform.
		
	self assert: refactoring model changes changes size equals: 1