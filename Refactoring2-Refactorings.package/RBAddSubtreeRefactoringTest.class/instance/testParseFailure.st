testing
testParseFailure

	self shouldFail: (RBAddSubtreeRefactoring
		interval: (0 to: 1)
		with: ':= 123'
		from: #selector:from:
		in: #RBRemoveMethodTransformation)