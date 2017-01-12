I am responsible for removing an assignment statement inside a method. In this implementation, the variable name and the expression value must be described separately.

Usage:
transformation := (RBRemoveAssignmentTransformation
				variable: 'variable'
				value: '1 asString'
				inMethod: #methodBefore
				inClass: #RBRemoveAssignmentTransformationTest)
				transform.
(ChangesBrowser changes: transformation model changes changes) open

Observations about the transformation:
-  If the method has more than one assignment to the given variable, the transformation will remove the assignment that is more similar to the specified value, in terms of AST nodes.