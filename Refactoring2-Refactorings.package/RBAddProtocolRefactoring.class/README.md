I am responsible to add a protocol to a class.

refactoring := (RBAddProtocolRefactoring
			protocol: 'transforming'
			inClass: #MRDummyClassTest)
			transform.
(ChangesBrowser changes: refactoring model changes changes) open
	
Preconditions:
- The class exists;
- The protocol name is a valid name.