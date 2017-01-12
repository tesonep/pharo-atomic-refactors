testing
testExtractFailure

	self shouldFail: (RBExtractMethodRefactoring2
			extract: (self sourceCodeAt: (80 to: 269)
						forMethod: #subclassOf:overrides: in: RBBasicLintRuleTest class)
			from: #subclassOf:overrides:
			to: #foo in: #'RBBasicLintRuleTest class').
	
	self shouldFail: (RBExtractMethodRefactoring2
			extract: (self sourceCodeAt: (53 to: 56)
						forMethod: #subclassOf:overrides: in: RBBasicLintRuleTest class)
			from: #subclassOf:overrides:
			to: #foo in: #'RBBasicLintRuleTest class').
	
	self shouldFail: (RBExtractMethodRefactoring2
			extract: (self sourceCodeAt: (77 to: 222)
						forMethod: #subclassResponsibilityNotDefined in: RBBasicLintRuleTest class)
			from: #subclassResponsibilityNotDefined
			to: #foo in: #'RBBasicLintRuleTest class')