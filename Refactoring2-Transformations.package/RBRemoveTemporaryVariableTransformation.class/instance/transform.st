executing
transform

	| methodTree modifiedNode |
	methodTree := self definingMethod.
	
	"searches the container of the temporary variable bottom up in the AST"
	modifiedNode := (methodTree allChildren select: #isSequence) last.
	modifiedNode := modifiedNode whoDefines: variableName.
	(modifiedNode isNotNil and: [ modifiedNode hasTemporaryNamed: variableName ])
		ifTrue: [ modifiedNode removeTemporaryNamed: variableName ].

	class compileTree: methodTree