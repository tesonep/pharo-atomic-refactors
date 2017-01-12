testing
testTransform

	| refactoring class |
	refactoring := (RBRemoveReturnStatementRefactoring
						return: '^ variable'
						inMethod: #methodBefore
						inClass: #RBRemoveReturnStatementTransformationTest)
						transform.
	
	self assert: refactoring model changes changes size equals: 1.
	
	class := refactoring model classNamed: #RBRemoveReturnStatementTransformationTest.
	self assert: (class parseTreeFor: #methodBefore) body
			equals: (class parseTreeFor: #methodAfter) body.