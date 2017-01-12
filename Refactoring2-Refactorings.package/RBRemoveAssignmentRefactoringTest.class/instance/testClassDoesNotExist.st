testing
testClassDoesNotExist

	self shouldFail: (RBRemoveAssignmentRefactoring
							variable: 'variable'
							value: '1 asString'
							inMethod: #methodBefore
							inClass: #RBAssignmentTransformationTest)