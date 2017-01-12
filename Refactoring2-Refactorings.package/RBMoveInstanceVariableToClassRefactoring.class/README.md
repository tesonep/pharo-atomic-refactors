Moves an instance variable from a class to another. It shows where this variable is accessed in the former class

Usage:
refactoring := (RBMoveInstanceVariableToClassRefactoring
		model: model
		variable: 'methodBlock'
		fromClass: #RBBasicLintRuleTest
		toClass: #RBFooLintRuleTest)
		transform.
(ChangesBrowser changes: refactoring model changes changes) open

Preconditions:
overrides the preconditions from both RBAddVariableRefactoring and RBRemoveVariableRefactoring