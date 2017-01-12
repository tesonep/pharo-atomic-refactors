testing
testTransform

	| transformation class |
	self assert: self changeMock category equals: #'Refactoring-Tests-Changes'.
	
	transformation := (RBMoveClassTransformation
		move: self changeMock name
		to: #'Refactoring2-Transformations-Test')
		transform.
	
	self assert: transformation model changes changes size equals: 1.
	
	class := transformation model classNamed: self changeMock name asSymbol. 
	self assert: class category equals: #'Refactoring2-Transformations-Test'