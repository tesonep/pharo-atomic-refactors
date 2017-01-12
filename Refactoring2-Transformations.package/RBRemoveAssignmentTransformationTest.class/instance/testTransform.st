testing
testTransform

	| transformation class |
	transformation := (RBRemoveAssignmentTransformation new
		variable: 'variable'
		value: '1 asString'
		inMethod: #methodBefore
		inClass: self class name)
		transform.
	
	self assert: transformation model changes changes size equals: 1.
	
	class := transformation model classNamed: self class name.
	self assert: (class parseTreeFor: #methodBefore) body
			equals: (class parseTreeFor: #methodAfter) body.