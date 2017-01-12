testing
testAccessIsNotDefined

	self shouldFail: (RBAddReturnStatementRefactoring
							return: '^ variable2'
							inMethod: #methodBefore
							inClass: #RBAddReturnStatementTransformationTest)