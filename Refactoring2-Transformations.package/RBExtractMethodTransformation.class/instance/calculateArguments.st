querying
calculateArguments
	"returns a collection of variable that should be passed as arguments"

	| allVariables accesses assigned |
	allVariables := parseTree allDefinedVariables difference: subtree allDefinedVariables.
	
	accesses := allVariables select: [ :each | subtree references: each ].
	assigned := allVariables select: [ :each | subtree assigns: each ].
	
	^ accesses asOrderedCollection difference: assigned.
	