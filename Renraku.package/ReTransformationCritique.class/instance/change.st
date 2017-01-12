accessing
change
	"re-add the method compiled from the new AST"
	
	^ RBRefactoryChangeManager changeFactory addMethodSource: newTree newSource in: sourceAnchor entity methodClass