testing
testMethodDoesNotExist

	self shouldFail: (RBMethodProtocolRefactoring
							protocol: 'empty protocol 2'
							inMethod: #method
							inClass: #RBDummyEmptyClass)