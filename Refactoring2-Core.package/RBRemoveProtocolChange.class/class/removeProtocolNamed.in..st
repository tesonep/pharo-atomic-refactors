instance creation
removeProtocolNamed: aString in: aClass

	^ self new
		changeClass: aClass;
		protocol: aString;
		yourself