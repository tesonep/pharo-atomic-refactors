running
setUp

	super setUp.
	manager := RBRefactoringManager classVarNamed: #Instance.
	RBRefactoringManager classVarNamed: #Instance put: nil.
	model := RBNamespace2 new