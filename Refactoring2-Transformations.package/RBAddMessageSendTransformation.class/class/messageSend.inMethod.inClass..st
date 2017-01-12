api
messageSend: aString inMethod: aSelector inClass: aClassName

	^ self new
		messageSend: aString
		inMethod: aSelector
		inClass: aClassName;
		yourself