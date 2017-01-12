accessing
allSuperclassesUntil: aClass

	| supers sprClass |
	supers := OrderedCollection new.
	sprClass := self superclass.
	[sprClass notNil and: [sprClass name ~= aClass name]] whileTrue: 
			[supers add: sprClass.
			sprClass := sprClass superclass].
	^supers