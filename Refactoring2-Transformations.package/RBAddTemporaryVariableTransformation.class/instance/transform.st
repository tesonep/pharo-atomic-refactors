executing
transform

	| methodTree |
	methodTree := self definingMethod.
	methodTree body addTemporaryNamed: variableName.
	class compileTree: methodTree