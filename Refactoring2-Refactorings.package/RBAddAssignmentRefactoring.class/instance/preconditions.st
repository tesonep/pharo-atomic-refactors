preconditions
preconditions

	^ (RBCondition
			withBlock: [ self definingClass isNotNil ]
			errorString: ('Class named <1s> does not exist' expandMacrosWith: className))
	  & (RBCondition
			withBlock: [ self definingClass canUnderstand: selector ]
			errorString: ('Method named <1s> does not exist' expandMacrosWith: selector))
	  & (RBCondition
			withBlock: [ (self definingMethod allChildren
				select: #isVariable thenCollect: #name)
				anySatisfy: [ :e | e asString = variableName ] ]
			errorString: ('Method named <1s> does not have a variable named <2s>'
				expandMacrosWith: selector with: variableName))