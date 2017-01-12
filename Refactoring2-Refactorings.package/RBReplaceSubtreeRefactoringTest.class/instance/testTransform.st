testing
testTransform

	| transformation class |
	transformation := (RBReplaceSubtreeRefactoring
		replace: 'selector := aSelector'
		to: '^ selector'
		inMethod: #selector:from:
		inClass: #RBRemoveMethodTransformation)
		transform. 
	
	self assert: transformation model changes changes size equals: 1.
	
	class := transformation model classNamed: #RBRemoveMethodTransformation.
	self assert: (class directlyDefinesMethod: #selector:from:).
	self assert: (class parseTreeFor: #selector:from:) body statements size equals: 2.
	self assert: (class parseTreeFor: #selector:from:) body statements last isReturn.