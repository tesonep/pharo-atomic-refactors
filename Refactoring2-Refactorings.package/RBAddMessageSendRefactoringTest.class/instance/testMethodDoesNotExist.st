testing
testMethodDoesNotExist

	self shouldFail: (RBAddMessageSendRefactoring
							messageSend: 'variable byteAt: 1'
							inMethod: #method
							inClass: #RBAddMessageSendTransformationTest)