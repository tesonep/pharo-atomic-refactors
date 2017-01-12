api
model: aRBModel rename: aVariableName to: aNewVariableName in: aClassName classVariable: aBoolean

	^ self new
		model: aRBModel;
		rename: aVariableName
		to: aNewVariableName
		class: aClassName
		classVariable: aBoolean;
		yourself