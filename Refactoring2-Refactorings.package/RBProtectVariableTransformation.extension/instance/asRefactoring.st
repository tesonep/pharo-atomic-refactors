*Refactoring2-Refactorings
asRefactoring

	^ RBProtectVariableRefactoring new
		model: self model;
		variable: variableName
		class: className
		classVariable: isClassVariable;
		yourself
		