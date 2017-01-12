*Refactoring2-Refactorings
asRefactoring

	^ RBReplaceSubtreeRefactoring
		model: self model
		replace: oldSourceCode
		to: newSourceCode
		inMethod: selector
		inClass: className