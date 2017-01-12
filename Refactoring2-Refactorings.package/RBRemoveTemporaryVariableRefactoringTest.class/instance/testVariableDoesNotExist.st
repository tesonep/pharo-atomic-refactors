testing
testVariableDoesNotExist

	self shouldFail: (RBRemoveTemporaryVariableRefactoring
							variable: 'temp123'
							inMethod: #foo
							inClass: #RBRemoveTemporaryVariableTransformationTest)