api
model: aRBModel pragma: aString inMethod: aSelector inClass: aClassName

	^ self new
		model: aRBModel;
		pragma: aString
		inMethod: aSelector
		inClass: aClassName;
		yourself