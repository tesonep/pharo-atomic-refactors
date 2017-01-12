testing
testExistingInstanceVariableAccessors

	| refactoring |
	refactoring := (RBAddVariableAccessorRefactoring 
		instanceVariable: 'name'
		class: #RBDummyLintRuleTest)
		transform.
		
	self assert: refactoring changes changes isEmpty