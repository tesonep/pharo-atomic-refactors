*Refactoring2-Refactorings
asRefactoring

	^ RBAddVariableAccessorRefactoring
		model: self model 
		variable: variableName 
		class: className
		classVariable: isClassVariable 