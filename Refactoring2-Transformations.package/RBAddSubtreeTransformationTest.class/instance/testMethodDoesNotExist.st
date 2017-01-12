testing
testMethodDoesNotExist

	| transformation |
	transformation := (RBAddSubtreeTransformation
		interval: (0 to: 1)
		with: 'self printString'
		from: #two
		in: self changeMock name)
		transform. 
	
	self assert: transformation model changes changes isEmpty