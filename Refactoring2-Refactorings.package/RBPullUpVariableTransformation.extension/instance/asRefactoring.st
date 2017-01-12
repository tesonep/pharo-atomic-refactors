*Refactoring2-Refactorings
asRefactoring

	^ RBPullUpVariableRefactoring new
		model: self model;
		variable: variableName
		class: className
		classVariable: isClassVariable;
		yourself