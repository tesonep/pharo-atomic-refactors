executing
transform

	isClassVariable
		ifTrue: [ self definingClass theNonMetaClass removeClassVariable: variableName ]
		ifFalse: [ self definingClass removeInstanceVariable: variableName ]