Renames a variable in a class and all its direct accesses. It is necessary to indicate whether the variable is an instance or class variable. It is not implemented as a composite transformation because the rename is made internally in the model.

Usage:
transformation := (RBRenameVariableTransformation
			rename: 'classBlock' to: 'asdf'
			in: #RBBasicLintRuleTest
			classVariable: false)
			transform.
(ChangesBrowser changes: transformation model changes changes) open