testing
testTransform

	| transformation class |
	transformation := (RBDeprecateClassTransformation 
		class: self changeMock name)
		transform. 

	self assert: transformation model changes changes size equals: 4.
	
	class := transformation model classNamed: self changeMock name asSymbol.
	self assert: class comment equals: 'Deprecated!!! Use superclass'.