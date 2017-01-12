testing
testMethodDoesNotExist

	self shouldFail: (RBAddReturnStatementRefactoring
							return: '^ variable'
							inMethod: #method
							inClass: #RBAddReturnStatementTransformationTest)