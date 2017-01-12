Moves an instance variable from a class to another. It does not check whether this variable is being referenced in the former class.

Usage:
transformation := RBMoveInstanceVariableToClassTransformation
		model: model
		variable: 'methodBlock'
		fromClass: #RBBasicLintRuleTest
		toClass: #RBFooLintRuleTest.
(ChangesBrowser changes: transformation model changes changes) open