executing
transform

	| methodTree nodesToModify |
	methodTree := self definingMethod.
	
	"try to find a message node with the same selector"
	nodesToModify := ( methodTree allChildren removeDuplicates
		select: #isMessage )
		select: [ :node | node selector = message asSymbol ].
	
	nodesToModify ifNotEmpty: [ 
		nodesToModify do: #removeFromTree.
		self definingClass compileTree: methodTree ]