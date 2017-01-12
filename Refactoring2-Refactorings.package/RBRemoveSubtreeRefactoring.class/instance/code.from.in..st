api
code: aString from: aSelector in: aClassName

	self className: aClassName.
	selector := aSelector.
	sourceCode := aString