preconditions
preconditions

	^ (RBCondition
			withBlock: [ self definingClass isNotNil ]
			errorString: ('Class named <1s> does not exist' expandMacrosWith: className))
		& (RBCondition
			withBlock: [ self definingClass canUnderstand: selector ]
			errorString: ('Method named <1s> does not exist' expandMacrosWith: selector))
		& (RBCondition
			withBlock: [ | messageNode |
				messageNode := RBParser parseExpression: messageSend.
				messageNode allAccesses allSatisfy: [ :e | 
					(self definingMethod hasArgumentNamed: e name)
					or: [ self definingMethod hasTemporaryNamed: e name ] ]]
			errorString: ('Some variables in this message send are not defined in method named <1s>.'
					expandMacrosWith: selector))