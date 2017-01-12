testing
testTransform

	| refactoring |
	refactoring := RBPullUpVariableRefactoring
				instanceVariable: 'result'
				class: #RBDummyLintRuleTest.
	
	[ refactoring transform ] on: RBRefactoringError do: [ :e | e resume ].
	self assert: ((refactoring model classNamed: #RBDummyLintRuleTest)
			directlyDefinesInstanceVariable: 'result').
	
	self deny: ((refactoring model classNamed: #RBBasicDummyLintRuleTest)
			directlyDefinesInstanceVariable: 'result').
	self deny: ((refactoring model classNamed: #RBFooDummyLintRuleTest)
			directlyDefinesInstanceVariable: 'result')