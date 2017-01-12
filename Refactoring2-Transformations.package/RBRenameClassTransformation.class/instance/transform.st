executing
transform

	self model 
		renameClass: self definingClass
		to: newClassName
		around: [self renameReferences]