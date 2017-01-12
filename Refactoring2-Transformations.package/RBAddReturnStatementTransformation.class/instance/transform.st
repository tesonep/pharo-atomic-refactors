executing
transform
	"the transformation is straighforward: just add the node at the last position of the method.
	 #todo the case in which the context is a block"

	| methodTree messageNode |
	methodTree := self definingMethod.
	messageNode := RBParser parseExpression: returnValue.
	
	methodTree body addNode: messageNode.
	self definingClass compileTree: methodTree.