testing
testClassDoesNotExist

	self shouldFail: (RBAddTemporaryVariableRefactoring
							variable: 'variable2'
							inMethod: #methodBefore
							inClass: #RBReturnStatementTransformationTest)