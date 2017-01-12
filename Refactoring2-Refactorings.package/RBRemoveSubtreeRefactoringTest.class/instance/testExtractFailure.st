testing
testExtractFailure

	self shouldFail: (RBRemoveSubtreeRefactoring
		code: ':= aSelector' 
		from: #selector:from:
		in: #RBRemoveMethodTransformation)