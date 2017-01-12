I am responsible for adding an assignment statement (variable := anExpression) inside a method. Both variable and expression are passed as arguments separately.

Usage: 
transformation := (RBAddAssignmentTransformation
				variable: 'variable'
				value: '1 asString'
				inMethod: #methodBefore
				inClass: #RBAddAssignmentTransformationTest)
				transform.
(ChangesBrowser changes: transformation model changes changes) open

Observations about the transformation:
- If the variable is already assigned in this method, the transformation will add the new assignment just after it.
- Otherwise, the assignment will be positioned as the first statement of the method