api
model: aRBModel messageSend: aMessageSend inMethod: aSelector inClass: aClassName

	^ self new
		model: aRBModel;
		messageSend: aMessageSend
		inMethod: aSelector
		inClass: aClassName;
		yourself