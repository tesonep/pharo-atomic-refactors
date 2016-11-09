executing
calculateOperations
	super calculateOperations

	targetClass allSubclasses
		do: [ :each | (each instanceVariables includes: variableName)
				ifTrue: [ self removeInstanceVariable: variableName from: each ] ].

	self addInstanceVariable: variableName to: targetClass