Adds a method in a class. The source code of the method, as well as the protocol in which the method will be categorized, can be specified.

Usage:
refactoring := (RBAddMethodRefactoring2
		sourceCode: 'printString1 ^super printString'
		in: RBTransformationTest
		withProtocol: #accessing)
		transform.
(ChangesBrowser changes: refactoring model changes changes) open

Preconditions:
The source code of the method must be syntactically valid.