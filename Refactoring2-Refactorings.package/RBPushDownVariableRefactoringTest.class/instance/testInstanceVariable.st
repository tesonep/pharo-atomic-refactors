testing
testInstanceVariable

	| refactoring |
	refactoring := (RBPushDownVariableRefactoring 
		instanceVariable: 'foo1'
		class: #RBDummyLintRuleTest)
		transform.
	
	(refactoring model classNamed: #RBDummyLintRuleTest)
	subclasses do: [ :each | self assert: (each directlyDefinesInstanceVariable: 'foo1') ]