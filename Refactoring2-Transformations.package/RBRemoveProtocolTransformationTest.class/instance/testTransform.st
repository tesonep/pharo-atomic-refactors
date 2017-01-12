testing
testTransform
	
	| transformation |
	transformation := (RBAddProtocolTransformation new
		protocol: 'transforming'
		inClass: #RBDummyEmptyClass)
		transform.
		
	transformation := (RBRemoveProtocolTransformation new
		model: transformation model;
		protocol: 'transforming'
		inClass: #RBDummyEmptyClass)
		transform.
		
	self assert: transformation model changes changes size equals: 2