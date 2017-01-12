*Refactoring2-Refactorings
asRefactoring

	^ RBRemoveTemporaryVariableRefactoring
		model: self model
		variable: variableName
		inMethod: selector
		inClass: className