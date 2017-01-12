testing
testTransform

	| refactoring class |
	refactoring := (RBAddAssignmentRefactoring
						variable: 'variable'
						value: '1 asString'
						inMethod: #methodBefore
						inClass: #RBAddAssignmentTransformationTest)
						transform.
	
	self assert: refactoring model changes changes size equals: 1.
	
	class := refactoring model classNamed: #RBAddAssignmentTransformationTest.
	self assert: (class directlyDefinesMethod: #methodBefore).
	self assert: (class parseTreeFor: #methodBefore) body statements size equals: 2.
	self assert: (class parseTreeFor: #methodBefore) body statements last value sourceCode equals: '1 asString'