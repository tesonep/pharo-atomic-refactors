converting
asRBRefactoring
	^ RBRefactoryChangeManager changeFactory compositeRefactoryChange
		changes: (childrenRefactorings collect: #asRBRefactoring);
		yourself