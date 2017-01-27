private
primitiveExecute
	| modifyClass |
	modifyClass := self classModification.

	isMeta
		ifTrue: [ modifyClass addClassSlotNamed: variableName asSymbol ]
		ifFalse: [ modifyClass addSlotNamed: variableName asSymbol ].

	ARRefactoryChangeManager instance builder addOperation: modifyClass