*Refactoring2-Refactorings
asRefactoring

	^ (RBMoveInstanceVariableToClassRefactoring new)
		model: self model;
		variable: variableName
		fromClass: oldClass 
		toClass: className;
		yourself