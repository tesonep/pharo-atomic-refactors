Removes this variable from all the subclasses of a class, then adds this variable in this class. If none of the subclasses define a variable with the given name, this transformation works as a RBAddVariableRefactoring.

Usage:
refactoring := (RBPullUpVariableRefactoring
		instanceVariable: 'result'
		class: #RBLintRuleTest)
		transform.
(ChangesBrowser changes: refactoring model changes changes) open

Preconditions:
overriden from RBRemoveVariableRefactoring and RBAddVariableAccessorRefactoring