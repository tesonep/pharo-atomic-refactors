testing
testTransform

	| transformation class |
	transformation := (RBAddSubtreeTransformation
		interval: (0 to: 1)
		with: 'self printString'
		from: #one
		in: self changeMock name)
		transform. 
	
	self assert: transformation model changes changes size equals: 1.
	
	class := transformation model classNamed: self changeMock name asSymbol.
	self assert: (class directlyDefinesMethod: #one).
	self assert: (class parseTreeFor: #one) body statements size equals: 2