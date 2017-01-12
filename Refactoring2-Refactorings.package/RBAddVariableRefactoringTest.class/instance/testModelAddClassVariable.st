testing
testModelAddClassVariable

	| refactoring |
	refactoring := (RBAddVariableRefactoring 
		model: model
		classVariable: #ClassVarName3
		class: (model classNamed: #Bar))
		transform.
	
	self assert: ((model classNamed: #Bar) directlyDefinesClassVariable: #ClassVarName3)