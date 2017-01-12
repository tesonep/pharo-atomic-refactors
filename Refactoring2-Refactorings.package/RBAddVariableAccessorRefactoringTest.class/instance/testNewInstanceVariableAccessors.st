testing
testNewInstanceVariableAccessors

	| refactoring class |
	refactoring := (RBAddVariableAccessorRefactoring 
		instanceVariable: 'foo1'
		class: #RBDummyLintRuleTest)
		transform.
		
	class := refactoring model classNamed: #RBDummyLintRuleTest.
	self deny: refactoring changes changes isEmpty.
	self assert: (class parseTreeFor: #foo1) = (RBParser parseMethod: 'foo1 ^foo1').
	self assert: (class parseTreeFor: #foo1:) = (RBParser parseMethod: 'foo1: anObject foo1 := anObject')