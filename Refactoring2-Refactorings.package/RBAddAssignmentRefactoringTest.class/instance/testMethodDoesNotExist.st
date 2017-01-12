testing
testMethodDoesNotExist

	self shouldFail: (RBAddAssignmentRefactoring
							variable: 'variable'
							value: '1 asString'
							inMethod: #method
							inClass: #RBAddAssignmentTransformationTest)