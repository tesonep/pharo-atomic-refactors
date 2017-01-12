testing
testTransform

	| transformation class |
	transformation := (RBAddSubtreeRefactoring
		interval: (0 to: 1)
		with: '^ selector'
		from: #selector:from:
		in: #RBRemoveMethodTransformation)
		transform. 
	
	self assert: transformation model changes changes size equals: 1.
	
	class := transformation model classNamed: #RBRemoveMethodTransformation.
	self assert: (class directlyDefinesMethod: #selector:from:).
	self assert: (class parseTreeFor: #selector:from:) body statements size equals: 3.
	self assert: (class parseTreeFor: #selector:from:) body statements last isReturn