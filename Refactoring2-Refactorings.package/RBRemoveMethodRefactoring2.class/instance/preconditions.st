exception
preconditions

	^ (RBCondition definesSelector: selector in: self definingClass) 
		& (RBCondition withBlock: [ self checkSuperMethods. true ])