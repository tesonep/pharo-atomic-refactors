testing
testTransform

	| transformation class |
	transformation := (RBAddAccessorsForClassTransformation
		className: self changeMock name)
		transform.
	
	self assert: transformation model changes changes size equals: 2.
	
	class := transformation model classNamed: self changeMock name asSymbol.
	self assert: (class parseTreeFor: #instVar) = (RBParser parseMethod: 'instVar ^instVar').
	self assert: (class parseTreeFor: #instVar:) = (RBParser parseMethod: 'instVar: anObject instVar := anObject')