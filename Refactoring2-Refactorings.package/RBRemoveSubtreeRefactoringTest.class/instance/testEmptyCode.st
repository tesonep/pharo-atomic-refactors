testing
testEmptyCode

	self shouldFail: (RBRemoveSubtreeRefactoring
		code: ''
		from: #selector:from:
		in: #RBRemoveMethodTransformation)