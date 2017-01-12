testing
testMethodDoesNotExist

	self shouldFail: (RBExtractMethodRefactoring2
			extract: 'bla'
			from: #checkClass1:
			to: #bla
			in: #RBBasicLintRuleTest)