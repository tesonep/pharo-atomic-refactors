testing
testMethodAlreadyExists

	self 
		shouldFail: (RBAddMethodRefactoring2
			sourceCode: 'printString ^super printString'
			in: #RBBasicLintRuleTest
			withProtocol: #accessing);
		shouldFail: (RBAddMethodRefactoring2 
			model: model
			sourceCode: 'classVarName1 ^super printString'
			in: (model classNamed: #Bar)
			withProtocol: #accessing);
		shouldFail: (RBAddMethodRefactoring2
			model: model
			sourceCode: 'printString ^super printString'
			in: (model classNamed: #Bar)
			withProtocol: #accessing).