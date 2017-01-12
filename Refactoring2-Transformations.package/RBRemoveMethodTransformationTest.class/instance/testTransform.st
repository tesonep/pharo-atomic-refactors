testing
testTransform

	| transformation class |
	transformation := (RBRemoveMethodTransformation 
		selector: #one
		from: self changeMock name)
		transform. 
	
	self assert: transformation model changes changes size equals: 1.
	
	class := transformation model classNamed: self changeMock name asSymbol.
	self deny: (class directlyDefinesMethod: #one).