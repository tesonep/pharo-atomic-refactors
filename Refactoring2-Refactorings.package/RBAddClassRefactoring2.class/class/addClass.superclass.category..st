instance creation
addClass: aName superclass: aClass category: aSymbol

	^ self new
		addClass: aName
		superclass: aClass
		subclasses: #()
		category: aSymbol;
		yourself