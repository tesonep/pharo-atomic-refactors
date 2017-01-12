Creates accessors for a variable in a class, then replaces all the direct accesses to this variable by invocation to the accessors.

Usage:
transformation := (RBProtectVariableTransformation
	instanceVariable: 'class'
	class: #RBTransformationRuleTest)
	transform.
(ChangesBrowser changes: transformation model changes changes) open