testing
testTransform

	| transformation |
	transformation := (RBPushDownVariableTransformation 
		instanceVariable: 'foo1'
		class: #RBDummyLintRuleTest)
		transform.
		
	(transformation model classNamed: #RBDummyLintRuleTest) 
	subclasses do: [ :each | self assert: (each directlyDefinesInstanceVariable: 'foo1') ]