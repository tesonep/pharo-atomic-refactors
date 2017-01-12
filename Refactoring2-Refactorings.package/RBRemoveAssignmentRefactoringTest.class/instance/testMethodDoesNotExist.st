testing
testMethodDoesNotExist

	self shouldFail: (RBRemoveAssignmentRefactoring
							variable: 'variable'
							value: '1 asString'
							inMethod: #method
							inClass: #RBRemoveAssignmentTransformationTest)