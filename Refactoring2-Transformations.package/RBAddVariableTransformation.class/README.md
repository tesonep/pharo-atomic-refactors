Adds a variable in a class. It is necessary to indicate whether the variable is an instance or class variable.

Usage:
transformation := (RBAddVariableTransformation 
	variable: 'asdf'
	class: #RBVariableTransformation
	classVariable: false)
	transform. 
(ChangesBrowser changes: transformation model changes changes) open