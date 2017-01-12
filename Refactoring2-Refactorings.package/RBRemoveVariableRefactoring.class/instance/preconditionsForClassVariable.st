preconditions
preconditionsForClassVariable
	
	^ (RBCondition isMetaclass: class) not
		& (RBCondition definesClassVariable: variableName in: class)
		& (RBCondition accessesClassVariable: variableName in: class showIn: self)