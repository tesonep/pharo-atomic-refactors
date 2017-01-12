api
model: aRBModel replace: oldSourceCode to: newSourceCode inMethod: aSelector inClass: aClass

	^ self new
		model: aRBModel;
		replace: oldSourceCode
		to: newSourceCode
		inMethod: aSelector
		inClass: aClass;
		yourself 