I am responsible for adding a return statement inside a method. In this implementation, all the return value (including the '^') shall be described.

Usage: 
refactoring := (RBAddReturnStatementRefactoring
			return: '^ variable'
			inMethod: #methodBefore
			inClass: #RBAddReturnStatementTransformationTest)
			transform.
(ChangesBrowser changes: refactoring model changes changes) open

Preconditions:
- the method does not have a return statement

Observations about the transformation:
- The transformation is straightforward: parse the return value and add the resulting node to the end of the method