testing
testClassDoesNotExist

	self shouldFail: (RBAddPragmaRefactoring
							pragma: '<gtInspectorPresentationOrder: 56>'
							inMethod: #methodBefore
							inClass: #RBPragmaTransformationTest)