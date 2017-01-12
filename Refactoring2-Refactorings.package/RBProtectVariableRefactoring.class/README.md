Creates accessors for a variable in a class, then replaces all the direct accesses to this variable by invocation to the accessors.

Usage:
refactoring := (RBProtectVariableRefactoring
	instanceVariable: 'class'
	class: #RBTransformationRuleTest)
	transform.
(ChangesBrowser changes: refactoring model changes changes) open

Preconditions:
overriden from RBAddAccessorsForClassRefactoring and RBRemoveDirectAccessToVariableRefactoring