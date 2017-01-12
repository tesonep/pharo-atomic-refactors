testing
testMethodDoesNotExist

	self shouldFail: (RBRemoveMessageSendRefactoring
							messageSend: #byteAt:
							inMethod: #method
							inClass: #RBRemoveMessageSendTransformationTest)