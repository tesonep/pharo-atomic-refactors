accessing
selector
	selector isNil ifTrue: [ 
		selector := RBParser parseMethodPattern: sourceCode.
		selector isNil
			ifTrue: [ selector := #unknown ] ].
	^ selector