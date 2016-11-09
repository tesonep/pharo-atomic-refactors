executing
calculateOperations
	super calculateOperations.
	self removeInstanceVariable: variableName from: targetClass.
	targetClass subclasses do: [ :each | self addInstanceVariable: variableName to: each ]