Renames a variable in a class and all its direct accesses. It is necessary to indicate whether the variable is an instance or class variable.

Usage:
refactoring := (RBRenameVariableRefactoring
			rename: 'classBlock' to: 'asdf'
			in: #RBBasicLintRuleTest
			classVariable: false)
			transform.
(ChangesBrowser changes: refactoring model changes changes) open

Preconditions:
overrides from RBAddVariableRefactoring and RBRemoveVariableRefactoring