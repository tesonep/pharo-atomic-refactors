preconditions
preconditions

	^ (RBCondition
			withBlock: [ self definingClass isNotNil ]
			errorString: ('Class named <1s> does not exist' expandMacrosWith: className))
	  & (RBCondition
			withBlock: [ self definingClass canUnderstand: selector ]
			errorString: ('Method named <1s> does not exist' expandMacrosWith: selector))
	  & (RBCondition
			withBlock: [ | pragmaNode |
				pragmaNode := RBParser parsePragma: pragma.
				self definingMethod pragmas noneSatisfy: [ :e | e selector = pragmaNode selector ]]
			errorString: ('Method named <1s> already has a pragma named <2s>'
				expandMacrosWith: selector with: (RBParser parsePragma: pragma) selector))