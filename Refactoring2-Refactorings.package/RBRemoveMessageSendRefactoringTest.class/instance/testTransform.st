testing
testTransform

	| refactoring class |
	refactoring := (RBRemoveMessageSendRefactoring
						messageSend: #byteAt:
						inMethod: #methodBefore
						inClass: #RBRemoveMessageSendTransformationTest)
						transform.
	
	self assert: refactoring model changes changes size equals: 1.
	
	class := refactoring model classNamed: #RBRemoveMessageSendTransformationTest.
	self assert: (class parseTreeFor: #methodBefore) body
			equals: (class parseTreeFor: #methodAfter) body.