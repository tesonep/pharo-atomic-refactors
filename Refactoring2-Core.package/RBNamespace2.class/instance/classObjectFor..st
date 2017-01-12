converting
classObjectFor: anObject

	(anObject isBehavior or: [anObject isTrait])
		ifTrue: [ ^ self classFor: anObject ].
	anObject isSymbol
		ifTrue: [ ^ self classNamed: anObject ].
	^ anObject