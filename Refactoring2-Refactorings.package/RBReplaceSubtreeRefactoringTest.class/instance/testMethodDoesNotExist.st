testing
testMethodDoesNotExist

	self shouldFail: (RBReplaceSubtreeRefactoring
		replace: 'selector := aSelector'
		to: '^ selector'
		inMethod: #selector:for:
		inClass: #RBRemoveMethodTransformation)