testing
testMethodDoesNotExist

	self shouldFail: (RBRemoveTemporaryVariableRefactoring
							variable: 'temp'
							inMethod: #foofoo
							inClass: #RBRemoveTemporaryVariableTransformationTest)