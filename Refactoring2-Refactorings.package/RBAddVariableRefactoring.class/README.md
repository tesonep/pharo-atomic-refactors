Adds a variable in a class. It is necessary to indicate whether the variable is an instance or class variable.

Usage:
refactoring := (RBAddVariableRefactoring 
	variable: 'asdf'
	class: #RBVariableTransformation
	classVariable: false)
	transform. 
(ChangesBrowser changes: refactoring model changes changes) open

Preconditions:
- the variable name should not be a class name
- the class (and any class in the hierarchy) should not have a variable with the same name