api
extract: aString from: aSelector to: aNewSelector in: aClass

	^ self new
		extract: aString
		from: aSelector
		to: aNewSelector
		in: aClass;
		yourself