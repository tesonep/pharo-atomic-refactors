I am responsible for changing the protocol (or category) of a method. If the protocol does not exist in the class protocols list, the transformation will create it automatically.

Usage: 
transformation := (RBMethodProtocolTransformation
				protocol: 'transforming'
				inMethod: #newMethod
				inClass: #MRDummyClassTest)
				transform.
(ChangesBrowser changes: transformation model changes changes) open