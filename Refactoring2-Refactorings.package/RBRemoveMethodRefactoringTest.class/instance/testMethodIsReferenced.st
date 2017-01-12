testing
testMethodIsReferenced

	self shouldFail: (RBRemoveMethodRefactoring2
			selector: #checkClass:
			from: #RBBasicLintRuleTest)