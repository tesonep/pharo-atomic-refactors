executing
transform
	"the transformation is straighforward: just add the node at the last position of the method.
	 #todo the case in which the context is a block"

	| methodTree pragmaNode |
	methodTree := self definingMethod.
	pragmaNode := RBParser parsePragma: pragma.
	
	methodTree addPragma: pragmaNode.
	self definingClass compileTree: methodTree.