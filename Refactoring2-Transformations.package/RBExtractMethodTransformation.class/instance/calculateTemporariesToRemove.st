querying
calculateTemporariesToRemove
	"returns a collection of variables that should be removed from the original method"

	| newParseTree |
	newParseTree := parseTree copy removeSubtree: subtree.
	^ newParseTree allDefinedVariables
		reject: [ :var | newParseTree references: var ]