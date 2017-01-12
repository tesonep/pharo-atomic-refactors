api
extract: aString from: aSelector to: aNewSelector in: aClassName

	className := aClassName.
	selector := aSelector.
	newSelector := aNewSelector.
	sourceCode := aString