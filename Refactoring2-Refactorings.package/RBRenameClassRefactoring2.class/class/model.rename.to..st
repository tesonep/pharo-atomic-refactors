api
model: aRBModel rename: aClassName to: aNewClassName 

	^ self new
		model: aRBModel;
		className: aClassName
		newClassName: aNewClassName;
		yourself