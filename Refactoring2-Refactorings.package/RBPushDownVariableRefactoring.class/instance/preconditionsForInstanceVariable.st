preconditions
preconditionsForInstanceVariable

	^ (RBCondition definesInstanceVariable: variableName in: self definingClass) 
		& (RBCondition accessesInstanceVariable: variableName in: self definingClass showIn: self)