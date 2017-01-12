testing
testEmptyCode

	| transformation |
	transformation := (RBRemoveSubtreeTransformation
		code: ''
		from: #one
		in: self changeMock name)
		transform. 
	
	self assert: transformation model changes changes isEmpty