testing
testClassDoesNotExist

	self shouldFail: (RBAddMessageSendRefactoring
							messageSend: 'variable byteAt: 1'
							inMethod: #methodBefore
							inClass: #RBMessageSendTransformationTest)