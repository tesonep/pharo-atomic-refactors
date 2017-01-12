testing
testBadInterval

	self shouldFail: (RBExtractMethodRefactoring2 
				extract: 'whatever'
				from: #testMethod to: #bla
				in: #RBRefactoryTestDataApp).
				
	self shouldFail: (RBExtractMethodRefactoring2 
				extract: (self sourceCodeAt: (80 to: 147)
							forMethod: #subclassOf:overrides: in: RBBasicLintRuleTest class)
				from: #subclassOf:overrides: to: #bla
				in: #'RBBasicLintRuleTest class')
	