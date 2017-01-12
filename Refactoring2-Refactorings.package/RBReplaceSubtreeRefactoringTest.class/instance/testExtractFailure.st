testing
testExtractFailure

	self shouldFail: (RBReplaceSubtreeRefactoring
		replace: ':= aSelector'
		to: '^ selector'
		inMethod: #selector:from:
		inClass: #RBRemoveMethodTransformation)