Replaces all the direct accesses to this variable in this class by invocation to this variable's getter and setter. It assumes that both getter and setter are implemented in the class.

Usage:
transformation := (RBRemoveDirectAccessToVariableTransformation
	instanceVariable: 'environment'
	class: #RBNamespace)
	transform.
(ChangesBrowser changes: transformation model changes changes) open
