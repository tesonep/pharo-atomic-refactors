accessing
primitiveExecute
	| modifyClass |
	modifyClass := self classModification.

	isMeta
		ifTrue: [ modifyClass removeClassSlotNamed: variableName asSymbol ]
		ifFalse: [ modifyClass removeSlotNamed: variableName asSymbol ].

	ARRefactoryChangeManager instance builder addOperation: modifyClass