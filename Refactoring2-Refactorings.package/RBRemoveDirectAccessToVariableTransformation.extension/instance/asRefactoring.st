*Refactoring2-Refactorings
asRefactoring

	^ RBRemoveDirectAccessToVariableRefactoring
		model: self model 
		variable: variableName
		class: className 
		classVariable: isClassVariable