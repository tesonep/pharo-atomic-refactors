I am responsible to add a protocol to a class.

Usage:
transformation := (RBAddProtocolTransformation
				protocol: 'transforming'
				inClass: #MRDummyClassTest)
				transform.
(ChangesBrowser changes: transformation model changes changes) open