preconditions
preconditions

	^ (RBCondition
			withBlock: [ self definingClass isNotNil ]
			errorString: ('Class named <1s> does not exist' expandMacrosWith: className))
	  & (RBCondition
			withBlock: [ self definingClass canUnderstand: selector ]
			errorString: ('Method named <1s> does not exist' expandMacrosWith: selector))
	  & (RBCondition
			withBlock: [ 
				(self definingMethod
					allChildren select: #isMessage)
					anySatisfy: [ :messageNode | messageNode selector = message asSymbol ] ]
			errorString: ('Method named <1s> does not implement this message send <2s>'
				expandMacrosWith: selector with: message))