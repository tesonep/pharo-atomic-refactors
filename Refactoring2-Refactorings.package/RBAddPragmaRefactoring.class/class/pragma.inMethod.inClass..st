api
pragma: aString inMethod: aSelector inClass: aClassName

	^ self new
		pragma: aString
		inMethod: aSelector
		inClass: aClassName;
		yourself