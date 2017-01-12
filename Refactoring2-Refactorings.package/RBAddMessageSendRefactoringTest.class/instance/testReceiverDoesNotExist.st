testing
testReceiverDoesNotExist

	self shouldFail: (RBAddMessageSendRefactoring
							messageSend: 'variable2 byteAt: 1'
							inMethod: #methodBefore
							inClass: #RBAddMessageSendTransformationTest)