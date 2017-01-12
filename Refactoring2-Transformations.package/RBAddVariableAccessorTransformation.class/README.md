Adds accessors (getter and setter) for a variable in a class, if they do not exist.

Usage:
transformation := (RBAddVariableAccessorTransformation
	variable: 'variableName'
	class: #RBVariableTransformation
	classVariable: false)
	transform.
(ChangesBrowser changes: transformation model changes changes) open