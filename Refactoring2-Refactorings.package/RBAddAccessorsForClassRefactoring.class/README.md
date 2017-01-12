Adds accessors (getters and setters) for all the variables in a class, if each of them do not exist.

Usage:
refactoring := (RBAddAccessorsForClassRefactoring
	className: #RBVariableTransformation)
	transform.
(ChangesBrowser changes: refactoring model changes changes) open

Preconditions:
overridden from RBAddVariableAccessorRefactoring