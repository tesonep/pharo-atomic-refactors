Adds accessors (getter and setter) for a variable in a class, if they do not exist.

Usage:
refactoring := (RBAddVariableAccessorRefactoring
	variable: 'variableName'
	class: #RBVariableTransformation
	classVariable: false)
	transform.
(ChangesBrowser changes: refactoring model changes changes) open

Preconditions:
- the variable with which the accessors will be created shall exist. The parameter isClassVariable indicates whether to look in the instance or class variables.