api
rename: aVariableName to: aNewVariableName in: aClassName classVariable: aBoolean

	^ self new
		rename: aVariableName
		to: aNewVariableName
		class: aClassName
		classVariable: aBoolean;
		yourself