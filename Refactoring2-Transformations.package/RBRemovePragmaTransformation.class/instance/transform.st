executing
transform

	| methodTree pragmaNode nodesToRemove |
	methodTree := self definingMethod.
	pragmaNode := RBParser parsePragma: pragma.
	
	nodesToRemove := ( methodTree allChildren removeDuplicates
		select: #isPragma )
		select: [ :node | node selector = pragmaNode selector ].
	
	nodesToRemove do: [ :node | node parent removePragma: node ].
	self definingClass compileTree: methodTree.