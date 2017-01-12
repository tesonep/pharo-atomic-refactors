testing
testReturnDoesNotExist

	self shouldFail: (RBRemoveReturnStatementRefactoring
							return: '^ variable'
							inMethod: #methodAfter
							inClass: #RBRemoveReturnStatementTransformationTest)