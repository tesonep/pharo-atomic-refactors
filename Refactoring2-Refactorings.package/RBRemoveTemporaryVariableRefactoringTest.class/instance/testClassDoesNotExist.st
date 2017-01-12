testing
testClassDoesNotExist

	self shouldFail: (RBRemoveTemporaryVariableRefactoring
							variable: 'temp'
							inMethod: #foo
							inClass: #RBTemporaryVariableTransformationTest)