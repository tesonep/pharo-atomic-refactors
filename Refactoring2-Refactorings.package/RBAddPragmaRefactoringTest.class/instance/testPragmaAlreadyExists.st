testing
testPragmaAlreadyExists

	self shouldFail: (RBAddPragmaRefactoring
							pragma: '<gtInspectorPresentationOrder: 56>'
							inMethod: #methodAfter
							inClass: #RBAddPragmaTransformationTest)