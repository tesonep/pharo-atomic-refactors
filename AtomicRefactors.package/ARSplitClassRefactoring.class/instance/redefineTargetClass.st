operations
redefineTargetClass
	| modifyClass |
	modifyClass := APModifyClass fromClass: targetClass.

	variablesToExtract do: [ :e | modifyClass removeSlotNamed: e ].
	modifyClass addSlotNamed: referenceVariableName.

	patchOperations add: modifyClass.
