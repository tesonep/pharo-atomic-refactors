testing
testClassDoesNotExist

	self shouldFail: (RBAddAssignmentRefactoring
							variable: 'variable'
							value: '1 asString'
							inMethod: #methodBefore
							inClass: #RBAssignmentTransformationTest)