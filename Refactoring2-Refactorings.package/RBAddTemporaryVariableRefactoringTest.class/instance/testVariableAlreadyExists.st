testing
testVariableAlreadyExists

	self shouldFail: (RBAddTemporaryVariableRefactoring
							variable: 'variable'
							inMethod: #methodBefore
							inClass: #RBAddReturnStatementTransformationTest)