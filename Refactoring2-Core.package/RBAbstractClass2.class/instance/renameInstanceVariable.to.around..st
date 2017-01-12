transforming
renameInstanceVariable: oldName to: newName around: aBlock

	self privateInstanceVariableNames 
		at: (self privateInstanceVariableNames indexOf: oldName asString)
		put: newName asString.
		
	^ self model 
		performChange: (RBRefactoryChangeManager changeFactory   
							renameInstanceVariable: oldName
							to: newName
							in: self)
		around: aBlock