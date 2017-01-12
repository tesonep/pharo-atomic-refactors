*Refactoring2-Refactorings
asRefactoring

	^ RBExtractMethodRefactoring2
		model: self model
		extract: sourceCode
		from: selector
		to: newSelector
		in: class