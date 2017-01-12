testing
testVariableAlreadyExists

	self shouldFail:
			(RBMoveInstanceVariableToClassRefactoring
				model: model
				variable: 'result'
				fromClass: #RBFooLintRuleTest
				toClass: #RBBasicLintRuleTest)