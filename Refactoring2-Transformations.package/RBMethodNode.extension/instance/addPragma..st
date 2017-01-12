*Refactoring2-Transformations
addPragma: aPragmaNode

	pragmas ifNil: [ self pragmas: OrderedCollection new ].
	pragmas add: aPragmaNode