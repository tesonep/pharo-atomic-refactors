instance creation
addProtocolNamed: aString in: aClass

	^ self new
		changeClass: aClass;
		protocol: aString;
		yourself