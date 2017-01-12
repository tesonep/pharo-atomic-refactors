testing
testTransform

	| transformation |
	self assert: ( RBDummyEmptyClass
		organization protocolOrganizer
		protocolNamed: 'empty protocol 2' ) isEmpty.
	
	transformation := (RBMethodProtocolTransformation new
		protocol: 'empty protocol 2'
		inMethod: #someMethod
		inClass: #RBDummyEmptyClass)
		execute.

	self assert: ( RBDummyEmptyClass
		organization protocolOrganizer
		protocolNamed: 'empty protocol 2' ) isEmpty not.
	
	transformation := (RBMethodProtocolTransformation new
		protocol: 'empty protocol 1'
		inMethod: #someMethod
		inClass: #RBDummyEmptyClass)
		execute.
		
	self assert: ( RBDummyEmptyClass
		organization protocolOrganizer
		protocolNamed: 'empty protocol 2' ) isEmpty.