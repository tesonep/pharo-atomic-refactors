testing
testParseFailure

	self shouldFail: (RBReplaceSubtreeRefactoring
		replace: 'selector := aSelector'
		to: ':= 123'
		inMethod: #selector:from:
		inClass: #RBRemoveMethodTransformation)