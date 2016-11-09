executing
calculateOperations
	super calculateOperations.
	
	self addNewClass.
	self redefineTargetClass.
	self addAccessors.
	self rewriteMethods.
	