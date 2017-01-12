testing
testTransform

	| transformation class |
	transformation := (RBRemoveSubtreeTransformation
		code: '^ 1'
		from: #one
		in: self changeMock name)
		transform. 
	
	self assert: transformation model changes changes size equals: 1.
	
	class := transformation model classNamed: self changeMock name asSymbol.
	self assert: (class directlyDefinesMethod: #one).
	self assert: (class parseTreeFor: #one) body statements isEmpty