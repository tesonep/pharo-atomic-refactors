private
primitiveExecute
	| modifyClass |
	modifyClass := APModifyClass fromRBClass: targetClass.

	isMeta
		ifTrue: [ modifyClass addClassSlotNamed: variableName asSymbol ]
		ifFalse: [ modifyClass addSlotNamed: variableName asSymbol ].
		
	ARRefactoryChangeManager instance patch addOperation: modifyClass