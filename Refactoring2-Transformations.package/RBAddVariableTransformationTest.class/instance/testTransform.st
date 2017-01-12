testing
testTransform

	| transformation class |
	transformation := (RBAddVariableTransformation 
		instanceVariable: 'asdf'
		class: self changeMock name)
		transform. 
	
	self assert: transformation model changes changes size equals: 1.
	
	class := transformation model classNamed: self changeMock name asSymbol.
	self assert: (class directlyDefinesInstanceVariable: 'asdf').