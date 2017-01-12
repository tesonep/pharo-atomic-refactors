Adds accessors (getters and setters) for all the variables in a class, if each of them do not exist.

Usage:
transformation := (RBAddAccessorsForClassTransformation
	className: #RBVariableTransformation)
	transform.
(ChangesBrowser changes: transformation model changes changes) open