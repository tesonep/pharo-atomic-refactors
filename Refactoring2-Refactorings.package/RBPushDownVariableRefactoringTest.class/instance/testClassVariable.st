testing
testClassVariable

	| refactoring class |
	refactoring := RBPushDownVariableRefactoring 
				classVariable: #Foo1
				class: #RBDummyLintRuleTest.
	
	class := (refactoring model classNamed: #RBDummyLintRuleTest).
	self assert: (class directlyDefinesClassVariable: #Foo1).
	
	refactoring transform.
	class withAllSubclasses do: [ :each | self deny: (each directlyDefinesClassVariable: #Foo1) ]