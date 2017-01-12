testing
testTransform

	| transformation class |
	transformation := (RBRemoveVariableTransformation 
		instanceVariable: 'instVar'
		class: self changeMock name)
		transform. 
	
	self assert: transformation model changes changes size equals: 1.
	
	class := transformation model classNamed: self changeMock name asSymbol.
	self deny: (class directlyDefinesInstanceVariable: 'instVar').