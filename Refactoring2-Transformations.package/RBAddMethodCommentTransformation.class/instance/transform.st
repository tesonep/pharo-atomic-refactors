executing
transform

	| tree signature sourceCode |
	tree := self definingMethod.
	signature := tree source copyFrom: 1 to: (tree body start - 1).
	sourceCode := signature, String cr,
					  (comment surroundedBy: '"'), String cr,
					  tree body sourceCode. 
	
	self definingClass compileTree: (RBParser parseMethod: sourceCode)