testing
testExtractFailure

	| transformation |
	transformation := (RBRemoveSubtreeTransformation
		code: ':= anInterval'
		from: #one
		in: self changeMock name)
		transform. 
	
	self assert: transformation model changes changes isEmpty