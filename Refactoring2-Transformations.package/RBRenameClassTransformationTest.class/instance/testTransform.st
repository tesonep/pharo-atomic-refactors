testing
testTransform

	| transformation class |
	transformation := (RBRenameClassTransformation
							rename: 'RBDummyClassToRename' asSymbol
							to: 'RBNewDummyClassName' asSymbol)
							transform.
							
	self assert: transformation model changes changes size equals: 1.
	
	class := transformation model classNamed: 'RBNewDummyClassName' asSymbol.
	self assert: (class parseTreeFor: #method1)
		  equals: (RBParser parseMethod: 'method1 ^ self method2').
	self deny: (transformation model includesClassNamed: 'RBDummyClassToRename' asSymbol).
				
	class := transformation model classNamed: 'RBDummySubclassOfClassToRename' asSymbol.
	self assert: class superclass 
		  equals: (transformation model classNamed: 'RBNewDummyClassName' asSymbol).
	self assert: (class parseTreeFor: #symbolReference) 
		  equals: (RBParser parseMethod: 'symbolReference ^ #RBNewDummyClassName').
	self assert: (class parseTreeFor: #reference) 
		  equals: (RBParser parseMethod: 'reference ^ RBNewDummyClassName new')