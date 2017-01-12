testing
testTransform
	
	| refactoring |		
	refactoring := (RBAddProtocolTransformation
						protocol: 'empty protocol'
						inClass: #RBDummyEmptyClass)
						execute.
						
	refactoring := (RBRemoveProtocolRefactoring
						protocol: 'empty protocol'
						inClass: #RBDummyEmptyClass)
						transform.
		
	self assert: refactoring model changes changes size equals: 1