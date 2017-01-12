*Refactoring2-Refactorings
asRefactoring

	^ RBRemoveSubtreeRefactoring
		model: self model 
		code: sourceCode
		from: selector
		in: className