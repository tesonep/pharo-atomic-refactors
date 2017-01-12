Removes a variable from a class. It does not remove direct accesses to this variable in the class.

Usage:
transformation := (RBRemoveVariableTransformation 
	variable: 'isClassVariable'
	class: #RBVariableTransformation
	classVariable: false)
	transform. 
(ChangesBrowser changes: transformation model changes changes) open