testing
testMethodDoesNotExist

	self shouldFail: (RBAddTemporaryVariableRefactoring
							variable: 'variable2'
							inMethod: #method
							inClass: #RBAddReturnStatementTransformationTest)