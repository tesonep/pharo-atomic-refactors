testing
testAddInstanceVariable

	| refactoring |
	refactoring := (RBAddVariableRefactoring 
		instanceVariable: 'asdf'
		class: #RBTransformationRuleTest)
		transform.
		
	self assert: ((refactoring model
		classNamed: #RBTransformationRuleTest)
		directlyDefinesInstanceVariable: 'asdf')