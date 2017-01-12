testing
testMethodDoesNotExist

	| transformation |
	transformation := (RBRemoveSubtreeTransformation
		code: 'selector := aSelector'
		from: #two
		in: self changeMock name)
		transform. 
	
	self assert: transformation model changes changes isEmpty