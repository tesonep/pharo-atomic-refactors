testing
testClassDoesNotExist

	self shouldFail: (RBAddReturnStatementRefactoring
							return: '^ variable'
							inMethod: #methodBefore
							inClass: #RBReturnStatementTransformationTest)