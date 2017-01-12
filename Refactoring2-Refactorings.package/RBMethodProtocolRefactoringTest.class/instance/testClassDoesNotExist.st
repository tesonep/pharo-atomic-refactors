testing
testClassDoesNotExist

	self shouldFail: (RBMethodProtocolRefactoring
							protocol: 'empty protocol 2'
							inMethod: #someMethod
							inClass: #RBDummyEmptyClass123)