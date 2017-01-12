transforming
renameClassVariable: oldName to: newName around: aBlock 

	self privateClassVariableNames 
		at: (self privateClassVariableNames indexOf: oldName asSymbol)
		put: newName asSymbol.
		
	^ self model
		performChange: (RBRefactoryChangeManager changeFactory   
							renameClassVariable: oldName
							to: newName
							in: self)
		around: aBlock