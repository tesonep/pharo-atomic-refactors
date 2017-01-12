testing
testVariableDoesNotExist

	self shouldFail: (RBAddAssignmentRefactoring
							variable: 'variable1'
							value: '1 asString'
							inMethod: #methodBefore
							inClass: #RBAddAssignmentTransformationTest)