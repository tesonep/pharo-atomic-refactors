preconditions
preconditionsForInstanceVariable

	^ (RBCondition definesInstanceVariable: variableName asString in: class) 
		& (RBCondition doesNotAccessInstanceVariable: variableName inHierarchyOf: class showIn: self)