Removes this variable from all the subclasses of a class, then adds this variable in this class. If none of the subclasses define a variable with the given name, this transformation works as a RBAddVariableTransformation.

Usage:
transformation := (RBPullUpVariableTransformation
		instanceVariable: 'result'
		class: #RBLintRuleTest)
		transform.
(ChangesBrowser changes: transformation model changes changes) open