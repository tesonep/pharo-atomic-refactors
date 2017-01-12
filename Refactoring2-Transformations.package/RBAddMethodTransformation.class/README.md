Adds a method in a class. The source code of the method, as well as the protocol in which the method will be categorized, can be specified.

Usage:
transformation := (RBAddMethodTransformation
		sourceCode: 'printString1 ^super printString'
		in: RBTransformationTest
		withProtocol: #accessing)
		transform.
(ChangesBrowser changes: transformation model changes changes) open