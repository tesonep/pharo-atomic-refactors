testing
testNewClassVariableAccessors

	| refactoring class |
	refactoring := (RBAddVariableAccessorRefactoring 
		classVariable: 'Foo1'
		class: #RBDummyLintRuleTest)
		transform.
	
	class := refactoring model metaclassNamed: #RBDummyLintRuleTest.
	self deny: refactoring changes changes isEmpty.
	self assert: (class parseTreeFor: #foo1) = (RBParser parseMethod: 'foo1 ^Foo1').
	self assert: (class parseTreeFor: #foo1:) = (RBParser parseMethod: 'foo1: anObject Foo1 := anObject')