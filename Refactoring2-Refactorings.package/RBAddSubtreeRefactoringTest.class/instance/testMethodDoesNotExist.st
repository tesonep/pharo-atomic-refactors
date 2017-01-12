testing
testMethodDoesNotExist

	self shouldFail: (RBAddSubtreeRefactoring
		interval: (0 to: 1)
		with: '^ selector'
		from: #selector:for:
		in: #RBRemoveMethodTransformation)