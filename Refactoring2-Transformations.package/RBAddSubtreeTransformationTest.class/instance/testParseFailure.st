testing
testParseFailure

	| transformation |
	transformation := (RBAddSubtreeTransformation
		interval: (0 to: 1)
		with: ':= 123'
		from: #one
		in: self changeMock name)
		transform. 
	
	self assert: transformation model changes changes isEmpty