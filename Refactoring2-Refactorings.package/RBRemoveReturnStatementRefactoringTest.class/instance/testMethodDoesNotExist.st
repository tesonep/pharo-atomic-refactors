testing
testMethodDoesNotExist

	self shouldFail: (RBRemoveReturnStatementRefactoring
							return: '^ variable'
							inMethod: #method
							inClass: #RBRemoveReturnStatementTransformationTest)