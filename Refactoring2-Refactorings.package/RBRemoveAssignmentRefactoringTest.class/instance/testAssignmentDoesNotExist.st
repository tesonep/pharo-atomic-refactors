testing
testAssignmentDoesNotExist

	| refactoring |
	refactoring := (RBAddTemporaryVariableRefactoring
						variable: 'variable2'
						inMethod: #methodBefore
						inClass: #RBRemoveAssignmentTransformationTest)
						transform.

	self shouldFail: (RBRemoveAssignmentRefactoring
							model: refactoring model
							variable: 'variable2'
							value: '1 asString'
							inMethod: #methodBefore
							inClass: #RBRemoveAssignmentTransformationTest)