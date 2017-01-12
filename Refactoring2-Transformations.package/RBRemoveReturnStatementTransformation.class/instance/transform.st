executing
transform

	| methodTree nodesToRemove |
	methodTree := self definingMethod.
	
	nodesToRemove := ( methodTree allChildren removeDuplicates
		select: #isReturn )
		select: [ :node | node sourceCode = returnValue ].
	
	nodesToRemove
		ifEmpty: [ methodTree removeLast ]
		ifNotEmpty: [ nodesToRemove do: [ :node | node parent removeNode: node ] ].
	self definingClass compileTree: methodTree.