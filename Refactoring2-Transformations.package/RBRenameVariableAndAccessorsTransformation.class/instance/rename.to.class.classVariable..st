api
rename: aVariableName to: aNewVariableName class: aClassName classVariable: aBoolean

	className := self model classObjectFor: aClassName.
	variableName := aVariableName.
	newVariableName := aNewVariableName.
	isClassVariable := aBoolean.