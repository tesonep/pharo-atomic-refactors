testing
testVariableDoesNotExistInOldClass

	self shouldFail:
			(RBMoveInstanceVariableToClassRefactoring
				model: model
				variable: 'abc'
				fromClass: #RBFooLintRuleTest
				toClass: #RBBasicLintRuleTest)