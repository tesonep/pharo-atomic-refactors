testing
testTransform

	| refactoring class |
	refactoring := (RBAddTemporaryVariableRefactoring
						variable: 'variable2'
						inMethod: #methodBefore
						inClass: #RBAddReturnStatementTransformationTest)
						transform.
	
	self assert: refactoring model changes changes size equals: 1.
	
	class := refactoring model classNamed: #RBAddReturnStatementTransformationTest.
	self assert: (class directlyDefinesMethod: #methodBefore).
	self assert: (class parseTreeFor: #methodBefore) temporaries size equals: 2