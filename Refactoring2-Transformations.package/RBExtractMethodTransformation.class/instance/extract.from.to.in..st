api
extract: aString from: aSelector to: aNewSelector in: aClassName

	class := aClassName.
	selector := aSelector.
	newSelector := aNewSelector.
	sourceCode := aString