api
protocol: aString inMethod: aSelector inClass: aClassName

	^ self new
		protocol: aString
		inMethod: aSelector
		inClass: aClassName;
		yourself