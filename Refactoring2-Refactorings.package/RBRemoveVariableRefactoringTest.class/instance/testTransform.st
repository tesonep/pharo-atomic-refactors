testing
testTransform

	| refactoring class |
	refactoring := RBRemoveVariableRefactoring 
		instanceVariable: 'foo1'
		class: #RBDummyLintRuleTest.
	class := refactoring model classNamed: #RBDummyLintRuleTest.
	
	self assert: (class definesInstanceVariable: 'foo1').
	refactoring transform.
	self deny: (class definesInstanceVariable: 'foo1')