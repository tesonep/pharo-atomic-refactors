api
model: aRBModel messageSend: aString inMethod: aSelector inClass: aClassName

	^ self new
		model: aRBModel;
		messageSend: aString
		inMethod: aSelector
		inClass: aClassName;
		yourself