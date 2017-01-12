testing
testTransform

	| transformation class |
	transformation := (RBRemoveSubtreeRefactoring new
		code: 'selector := aSelector' 
		from: #selector:from:
		in: #RBRemoveMethodTransformation)
		transform. 
	
	self assert: transformation model changes changes size equals: 1.
	
	class := transformation model classNamed: #RBRemoveMethodTransformation.
	self assert: (class directlyDefinesMethod: #selector:from:).
	self assert: (class parseTreeFor: #selector:from:) body statements size equals: 1