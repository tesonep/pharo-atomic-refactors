testing
testMethodDoesNotExist

	self shouldFail: (RBRemoveSubtreeRefactoring
		code: 'selector := aSelector'
		from: #selector:for:
		in: #RBRemoveMethodTransformation)