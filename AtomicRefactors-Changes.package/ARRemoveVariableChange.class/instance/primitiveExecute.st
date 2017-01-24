accessing
primitiveExecute
	| modifyClass |
	modifyClass := APModifyClass fromRBClass: targetClass.	
		
	isMeta
		ifTrue: [ modifyClass removeClassSlotNamed: variableName asSymbol ]
		ifFalse: [ modifyClass removeSlotNamed: variableName asSymbol ].

	ARRefactoryChangeManager instance patch addOperation: modifyClass.