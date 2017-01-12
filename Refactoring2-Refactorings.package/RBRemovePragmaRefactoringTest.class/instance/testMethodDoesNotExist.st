testing
testMethodDoesNotExist

	self shouldFail: (RBRemovePragmaRefactoring
							pragma: '<gtInspectorPresentationOrder: 34>'
							inMethod: #method
							inClass: #RBRemovePragmaTransformationTest)