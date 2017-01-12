testing
testTransform

	| transformation class |
	self assert: self class category equals: #'Refactoring2-Refactorings-Tests'.
	
	transformation := (RBMoveClassRefactoring
		move: self class name
		to: #'Refactoring2-Transformations-Tests')
		transform.
	
	self assert: transformation model changes changes size equals: 1.
	
	class := transformation model classNamed: self class name. 
	self assert: class category equals: #'Refactoring2-Transformations-Tests'