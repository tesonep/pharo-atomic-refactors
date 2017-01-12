testing
testMethodDoesNotExist

	self shouldFail: (RBAddPragmaRefactoring
							pragma: '<gtInspectorPresentationOrder: 56>'
							inMethod: #method
							inClass: #RBAddPragmaTransformationTest)