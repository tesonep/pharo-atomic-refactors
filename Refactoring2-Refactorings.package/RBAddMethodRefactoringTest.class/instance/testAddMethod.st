testing
testAddMethod

	| refactoring |
	refactoring := (RBAddMethodRefactoring2 
		sourceCode: 'printString1 ^super printString'
		in: #RBBasicDummyLintRuleTest
		withProtocol: #accessing)
		transform.
	
	self assert: ((refactoring model classNamed: #RBBasicDummyLintRuleTest) parseTreeFor: #printString1)
		  equals: (RBParser parseMethod: 'printString1 ^super printString')