testing
testClassDoesNotExist

	self shouldFail: (RBRemovePragmaRefactoring
							pragma: '<gtInspectorPresentationOrder: 34>'
							inMethod: #methodBefore
							inClass: #RBPragmaTransformationTest)