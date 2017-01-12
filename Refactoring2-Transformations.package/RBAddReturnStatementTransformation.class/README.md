I am responsible for adding a return statement inside a method. In this implementation, all the return value (including the '^') shall be described.

Usage: 
transformation := (RBAddReturnStatementTransformation
				return: '^ variable'
				inMethod: #methodBefore
				inClass: #RBAddReturnStatementTransformationTest)
				transform.
(ChangesBrowser changes: transformation model changes changes) open

Observations about the transformation:
- The transformation is straightforward: parse the return value and add the resulting node to the end of the method