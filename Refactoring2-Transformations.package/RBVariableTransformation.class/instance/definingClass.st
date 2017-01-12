accessing
definingClass

	^ isClassVariable 
		ifTrue: [ super definingClass theMetaClass ]
		ifFalse: [ super definingClass ]