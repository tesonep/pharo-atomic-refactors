testing
testTransform

	| transformation class |
	transformation := (RBRemovePragmaTransformation new
		pragma: '<gtInspectorPresentationOrder: 34>'
		inMethod: #methodBefore
		inClass: self class name)
		transform.
	
	self assert: transformation model changes changes size equals: 1.
	
	class := transformation model classNamed: self class name.
	self assert: (class parseTreeFor: #methodBefore) body
			equals: (class parseTreeFor: #methodAfter) body.