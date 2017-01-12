testing
testTransform

	| refactoring class |
	refactoring := (RBAddMessageSendRefactoring new
						messageSend: 'variable byteAt: 1'
						inMethod: #methodBefore
						inClass: #RBAddMessageSendTransformationTest)
						transform.
	
	self assert: refactoring model changes changes size equals: 1.
	
	class := refactoring model classNamed: #RBAddMessageSendTransformationTest.
	self assert: (class parseTreeFor: #methodBefore) body
			equals: (class parseTreeFor: #methodAfter) body.