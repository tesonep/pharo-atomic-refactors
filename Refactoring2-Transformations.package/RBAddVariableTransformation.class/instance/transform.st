executing
transform
	
	isClassVariable
		ifTrue: [ self definingClass theNonMetaClass addClassVariable: variableName ]
		ifFalse: [ self definingClass addInstanceVariable: variableName ]