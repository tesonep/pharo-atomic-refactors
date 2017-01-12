accessing
arguments

	^ argumentsList ifNil: [ argumentsList := arguments asOrderedCollection ]