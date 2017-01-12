*Refactoring2-Transformations
parentSuchAs: aBlock

	^ (self parent perform: aBlock)
		ifTrue: [ self ]
		ifFalse: [ ^ self parent parentSuchAs: aBlock ]