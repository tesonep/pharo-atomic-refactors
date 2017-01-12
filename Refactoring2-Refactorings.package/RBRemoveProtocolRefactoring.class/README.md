I am responsible for removing a protocol in a class

Usage:
refactoring := (RBRemoveProtocolRefactoring
			protocol: 'empty protocol'
			inClass: #RBDummyEmptyClass)
			transform.
(ChangesBrowser changes: refactoring model changes changes) open
	
Preconditions:
- The class exists;
- A protocol with this name exists;
- No methods are categorized with this protocol.