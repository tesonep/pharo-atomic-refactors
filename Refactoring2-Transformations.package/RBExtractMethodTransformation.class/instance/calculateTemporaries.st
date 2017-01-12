querying
calculateTemporaries
	"returns a collection of variables that should be defined inside the method"

	^ temporaries ifNil: [
		| allVariables accesses |
		allVariables := parseTree allDefinedVariables difference: subtree allDefinedVariables.
		accesses := allVariables select: [ :each | subtree references: each ].
	
		temporaries := accesses select: [ :each | subtree assigns: each ] ]