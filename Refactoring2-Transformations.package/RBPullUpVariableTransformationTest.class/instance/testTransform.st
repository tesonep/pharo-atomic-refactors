testing
testTransform

	| transformation |
	transformation := (RBPullUpVariableTransformation
				instanceVariable: 'result'
				class: #RBDummyLintRuleTest)
				transform.
	
	self assert: ((transformation model classNamed: #RBDummyLintRuleTest)
			directlyDefinesInstanceVariable: 'result').
	
	self deny: ((transformation model classNamed: #RBBasicDummyLintRuleTest)
			directlyDefinesInstanceVariable: 'result').
	self deny: ((transformation model classNamed: #RBFooDummyLintRuleTest)
			directlyDefinesInstanceVariable: 'result')