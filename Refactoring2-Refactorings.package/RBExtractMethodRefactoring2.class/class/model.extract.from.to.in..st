api
model: aRBModel extract: aString from: aSelector to: aNewSelector in: aClass

	^ self new
		model: aRBModel;
		extract: aString
		from: aSelector
		to: aNewSelector
		in: aClass;
		yourself