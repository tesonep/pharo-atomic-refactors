testing
testAlreadyDefinesReturn

	self shouldFail: (RBAddReturnStatementRefactoring
							return: '^ variable'
							inMethod: #methodAfter
							inClass: #RBAddReturnStatementTransformationTest)