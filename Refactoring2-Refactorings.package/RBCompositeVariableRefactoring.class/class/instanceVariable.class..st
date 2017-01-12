api
instanceVariable: aVariableName class: aClassName

	^ self new
		variable: aVariableName
		class: aClassName
		isClassVariable: false;
		yourself