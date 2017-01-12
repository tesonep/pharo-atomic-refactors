testing
testTransform

	| transformation class |
	transformation := (RBReplaceSubtreeTransformation
		replace: '^ 1'
		to: '^ 123'
		inMethod: #one
		inClass: self changeMock name)
		transform. 
	
	self assert: transformation model changes changes size equals: 1.
	
	class := transformation model classNamed: self changeMock name asSymbol.
	self assert: (class directlyDefinesMethod: #one).
	self assert: (class parseTreeFor: #one) body statements size equals: 1.
	self assert: (class parseTreeFor: #one) body statements first isReturn.
	self assert: (class parseTreeFor: #one) body statements first value value equals: 123