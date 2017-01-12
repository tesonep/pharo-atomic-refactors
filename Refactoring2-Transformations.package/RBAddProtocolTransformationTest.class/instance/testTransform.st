testing
testTransform
	
	| transformation |
	transformation := (RBAddProtocolTransformation new
		protocol: 'transforming'
		inClass: #RBDummyEmptyClass)
		transform.
		
	self assert: transformation model changes changes size equals: 1