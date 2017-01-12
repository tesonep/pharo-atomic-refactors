testing
testPragmaDoesNotExist

	self shouldFail: (RBRemovePragmaRefactoring
							pragma: '<gtPresentationOrder: 34>'
							inMethod: #methodBefore
							inClass: #RBRemovePragmaTransformationTest)