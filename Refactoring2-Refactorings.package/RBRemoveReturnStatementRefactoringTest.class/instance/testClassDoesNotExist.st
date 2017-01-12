testing
testClassDoesNotExist

	self shouldFail: (RBRemoveReturnStatementRefactoring
							return: '^ variable'
							inMethod: #methodBefore
							inClass: #RBReturnStatementTransformationTest)