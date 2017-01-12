testing
testVariableDoesNotExist

	self shouldFail: (RBRemoveAssignmentRefactoring
							variable: 'variable1'
							value: '1 asString'
							inMethod: #methodBefore
							inClass: #RBRemoveAssignmentTransformationTest)