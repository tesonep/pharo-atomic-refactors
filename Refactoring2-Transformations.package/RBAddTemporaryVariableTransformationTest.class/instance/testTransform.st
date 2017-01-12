testing
testTransform

	| transformation class |
	transformation := (RBAddTemporaryVariableTransformation
							variable: 'variable'
							inMethod: #one
							inClass: self changeMock name)
							transform.
	
	self assert: transformation model changes changes size equals: 1.
	
	class := transformation model classNamed: self changeMock name asSymbol.
	self assert: (class directlyDefinesMethod: #one).
	self assert: (class parseTreeFor: #one) temporaries size equals: 1