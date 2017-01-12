testing
testBadSourceCode

	self shouldFail: (RBAddMethodRefactoring2 
			sourceCode: 'asdf ^super ^printString'
			in: RBBasicLintRuleTest
			withProtocol: #accessing)