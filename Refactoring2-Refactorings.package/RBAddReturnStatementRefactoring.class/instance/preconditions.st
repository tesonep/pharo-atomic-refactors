preconditions
preconditions

	^ (RBCondition
			withBlock: [ self definingClass isNotNil ]
			errorString: ('Class named <1s> does not exist' expandMacrosWith: className))
		& (RBCondition
			withBlock: [ self definingClass canUnderstand: selector ]
			errorString: ('Method named <1s> does not exist' expandMacrosWith: selector))
		& (RBCondition
			withBlock: [ self definingMethod lastIsReturn not ]
			errorString: ('Method named <1s> already has a return statement' expandMacrosWith: selector))
		& (RBCondition
			withBlock: [ | returnNode |
				returnNode := RBParser parseExpression: returnValue.
				returnNode allAccesses allSatisfy: [ :e | 
					(self definingMethod hasArgumentNamed: e name)
					or: [ self definingMethod hasTemporaryNamed: e name ] ]]
			errorString: ('Some variables in this return statement are not defined in method named <1s>.'
					expandMacrosWith: selector))