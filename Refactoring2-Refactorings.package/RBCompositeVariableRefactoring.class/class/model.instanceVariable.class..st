api
model: aRBModel instanceVariable: aVariableName class: aClassName

	^ self new
		model: aRBModel;
		variable: aVariableName
		class: aClassName
		isClassVariable: false;
		yourself