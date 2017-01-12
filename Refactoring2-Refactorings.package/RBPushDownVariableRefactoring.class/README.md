Removes this variable from the given class, then adds this variable in all the subclasses of this class.

Usage:
refactoring := (RBPushDownVariableRefactoring 
		instanceVariable: 'foo1'
		class: #RBLintRuleTest)
		transform.
(ChangesBrowser changes: refactoring model changes changes) open

Preconditions:
overriden from RBAddVariableRefactoring and RBRemoveVariableAccessorRefactoring