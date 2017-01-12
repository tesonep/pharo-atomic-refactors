Replaces all the direct accesses to this variable in this class by invocation to this variable's getter and setter.

Usage:
refactoring := (RBRemoveDirectAccessToVariableRefactoring
	instanceVariable: 'environment'
	class: #RBNamespace)
	transform.
(ChangesBrowser changes: refactoring model changes changes) open

Preconditions:
- the class must exist
- the class defines a variable with the given name
- the class defines both getter and setter for this variable