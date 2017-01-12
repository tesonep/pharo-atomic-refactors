instance creation
category: aString for: aClass

	^ self new
		changeClass: aClass;
		category: aString;
		yourself