testing
testClassDoesNotExist

	self shouldFail: (RBRemoveMessageSendRefactoring
							messageSend: #byteAt:
							inMethod: #methodBefore
							inClass: #RBMessageSendTransformationTest)