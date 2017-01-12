testing
testTransform

	| refactoring class |
	refactoring := (RBAddAccessorsForClassRefactoring 
		className: #RBVariableTransformation)
		transform.
	
	self assert: refactoring model changes changes size equals: 4.
	
	class := refactoring model classNamed: #RBVariableTransformation.
	self assert: (class parseTreeFor: #variableName)
		equals: (RBParser parseMethod: 'variableName ^variableName').
	self assert: (class parseTreeFor: #variableName:)
		equals: (RBParser parseMethod: 'variableName: anObject variableName := anObject')