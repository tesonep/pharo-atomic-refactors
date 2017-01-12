Removes this variable from the given class, then adds this variable in all the subclasses of this class.

Usage:
transformation := (RBPushDownVariableTransformation 
		instanceVariable: 'foo1'
		class: #RBLintRuleTest)
		transform.
(ChangesBrowser changes: transformation model changes changes) open