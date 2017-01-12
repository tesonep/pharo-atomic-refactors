*Refactoring2-Refactorings
asRefactoring

	^ RBRemoveVariableRefactoring
		model: self model
		variable: variableName
		class: className
		classVariable: isClassVariable 