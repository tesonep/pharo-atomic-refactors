testing
testInvalidSubclass

	self shouldFail: (
		RBAddClassRefactoring2
			addClass: #Foo
			superclass: RBCompositeLintRuleTest
			subclasses: (Array with: RBBasicLintRuleTest)
			category: #'Refactory-Tesing')