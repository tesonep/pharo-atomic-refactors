testing
testRemoveClassVariable

	| refactoring class |
	refactoring := RBRemoveVariableRefactoring 
		classVariable: 'Foo1'
		class: #RBDummyLintRuleTest.
	class := refactoring model classNamed: #RBDummyLintRuleTest.
	
	self assert: (class definesClassVariable: 'Foo1').
	refactoring transform.
	self deny: (class definesClassVariable: 'Foo1')