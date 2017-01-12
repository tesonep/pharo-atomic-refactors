testing
testTransform

	| refactoring class |
	refactoring := (RBAddReturnStatementRefactoring
						return: '^ variable'
						inMethod: #methodBefore
						inClass: #RBAddReturnStatementTransformationTest)
						transform.
	
	self assert: refactoring model changes changes size equals: 1.
	
	class := refactoring model classNamed: #RBAddReturnStatementTransformationTest.
	self assert: (class parseTreeFor: #methodBefore) body
			equals: (class parseTreeFor: #methodAfter) body.