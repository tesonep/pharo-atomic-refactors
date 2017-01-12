api
interval: anInterval with: aString from: aSelector in: aClass

	self className: aClass.
	selector := aSelector.
	interval := anInterval.
	sourceCode := aString.