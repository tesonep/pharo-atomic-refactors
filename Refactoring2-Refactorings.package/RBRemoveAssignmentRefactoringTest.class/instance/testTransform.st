testing
testTransform

	| refactoring class |
	refactoring := (RBRemoveAssignmentRefactoring
						variable: 'variable'
						value: '1 asString'
						inMethod: #methodBefore
						inClass: #RBRemoveAssignmentTransformationTest)
						transform.
	
	self assert: refactoring model changes changes size equals: 1.
	
	class := refactoring model classNamed: #RBRemoveAssignmentTransformationTest.
	self assert: (class parseTreeFor: #methodBefore) body
			equals: (class parseTreeFor: #methodAfter) body.