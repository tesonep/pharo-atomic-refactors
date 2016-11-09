operations
addInstanceVariable: aVariable to: aClass
	| modifyClass |
	
	modifyClass := APModifyClass fromClass: aClass.
	
	modifyClass addSlotNamed: aVariable asSymbol.
	
	patchOperations add:modifyClass.