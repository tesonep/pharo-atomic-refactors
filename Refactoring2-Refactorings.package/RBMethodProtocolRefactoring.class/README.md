I am responsible for changing the protocol (or category) of a method. If the protocol does not exist in the class protocols list, the transformation will create it automatically.

Usage: 
refactoring := (RBMethodProtocolRefactoring
			protocol: 'transforming'
			inMethod: #newMethod
			inClass: #MRDummyClassTest)
			transform.
(ChangesBrowser changes: refactoring model changes changes) open

Preconditions:
- the method exists.