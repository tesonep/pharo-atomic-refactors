testing
testMethodSendsSuper

	self shouldFail: (RBRemoveMethodRefactoring2 
			selector: #new
			from: RBBasicLintRuleTest class)