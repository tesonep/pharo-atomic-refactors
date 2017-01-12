testing
testMessageDoesNotExist

	self shouldFail: (RBRemoveMessageSendRefactoring
							messageSend: #byteAt123:
							inMethod: #methodBefore
							inClass: #RBRemoveMessageSendTransformationTest)