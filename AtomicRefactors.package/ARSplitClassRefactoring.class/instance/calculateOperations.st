executing
calculateOperations
	super calculateOperations.
	
	self addNewClass.
	self redefineTargetClass.
	self rewriteMethods.
	
	self whenMigrating: targetClass name use: (ARSplitClassObjectMigrator for:self) .
	