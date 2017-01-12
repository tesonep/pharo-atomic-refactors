preconditions
preconditions

	^ ( RBCondition
			withBlock: [ self definingClass isNotNil ]
			errorString: 'No such class or trait named ', className asString)
		& ( RBCondition definesSelector: selector in: self definingClass)
		& ( RBCondition
			withBlock: [ self definingMethod allTemporaryVariables includes: variableName ]
			errorString: 'Method named ', selector, ' does not define a temporary variable named ', variableName )
		& ( RBCondition
			withBlock: [ (self definingMethod allArgumentVariables includes: variableName) not ]
			errorString: 'Variable named ', variableName, ' cannot be removed because it is an argument in this method' )