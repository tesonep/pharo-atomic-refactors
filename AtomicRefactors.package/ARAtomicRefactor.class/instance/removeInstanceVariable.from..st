operations
removeInstanceVariable: aVariable from: aClass
	| modifyClass |
	
	modifyClass := APModifyClass fromClass: aClass.
	
	modifyClass removeSlotNamed: aVariable asSymbol.
	
	patchOperations add:modifyClass.