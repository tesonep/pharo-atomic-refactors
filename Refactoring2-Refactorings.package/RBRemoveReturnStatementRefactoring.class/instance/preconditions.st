preconditions
preconditions

	^ (RBCondition
			withBlock: [ self definingClass isNotNil ]
			errorString: ('Class named <1s> does not exist' expandMacrosWith: className))
		& (RBCondition
			withBlock: [ self definingClass canUnderstand: selector ]
			errorString: ('Method named <1s> does not exist' expandMacrosWith: selector))
		& (RBCondition
			withBlock: [ self definingMethod lastIsReturn ]
			errorString: ('Method named <1s> does not have a return statement' expandMacrosWith: selector))