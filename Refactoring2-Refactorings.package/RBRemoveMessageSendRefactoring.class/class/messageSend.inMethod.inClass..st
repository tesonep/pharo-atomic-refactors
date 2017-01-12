api
messageSend: aMessageSend inMethod: aSelector inClass: aClassName

	^ self new
		messageSend: aMessageSend
		inMethod: aSelector
		inClass: aClassName;
		yourself