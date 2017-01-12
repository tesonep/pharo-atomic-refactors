*Refactoring2-Refactorings
asRefactoring

	^ RBAddSubtreeRefactoring
		model: self model
		interval: interval
		with: sourceCode 
		from: selector
		in: className