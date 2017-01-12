api
variable: aVariableName value: anExpression inMethod: aSelector inClass: aClassName

	self className: aClassName.
	selector := aSelector asSymbol.
	variable := aVariableName asSymbol.
	value := anExpression