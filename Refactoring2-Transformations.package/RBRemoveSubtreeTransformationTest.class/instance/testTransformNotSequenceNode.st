testing
testTransformNotSequenceNode

	| transformation class |
	transformation := RBCompositeTransformation new
		transformations: (OrderedCollection
		with: (RBAddMethodTransformation
				sourceCode: 'printString1 super printString'
				in: self changeMock name
				withProtocol: #accessing)
		with: (RBRemoveSubtreeTransformation
				code: 'super printString'
				from: #printString1
				in: self changeMock name)).
	transformation transform.
	
	self assert: transformation model changes changes size equals: 2.
	
	class := transformation model classNamed: self changeMock name asSymbol.
	self assert: (class directlyDefinesMethod: #printString1).
	self assert: (class parseTreeFor: #printString1) body statements isEmpty