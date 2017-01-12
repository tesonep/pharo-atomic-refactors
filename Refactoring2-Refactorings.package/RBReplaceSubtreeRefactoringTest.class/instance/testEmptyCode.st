testing
testEmptyCode

	self shouldFail: (RBReplaceSubtreeRefactoring
		replace: ''
		to: '^ selector'
		inMethod: #selector:from:
		inClass: #RBRemoveMethodTransformation)