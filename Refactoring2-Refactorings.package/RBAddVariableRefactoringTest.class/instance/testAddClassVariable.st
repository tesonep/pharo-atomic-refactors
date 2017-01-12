testing
testAddClassVariable

	| refactoring |
	refactoring := (RBAddVariableRefactoring 
		classVariable: 'Asdf'
		class: #RBTransformationRuleTest)
		transform.
	
	self assert: ((refactoring model
		classNamed: #RBTransformationRuleTest)
		directlyDefinesClassVariable: #Asdf)