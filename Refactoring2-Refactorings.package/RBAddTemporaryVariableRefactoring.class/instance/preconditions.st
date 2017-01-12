preconditions
preconditions

	^ ( RBCondition
			withBlock: [ self definingClass isNotNil ]
			errorString: 'No such class or trait named ', className )
		& ( RBCondition definesSelector: selector in: self definingClass)
		& ( RBCondition
			withBlock: [ (self definingMethod allTemporaryVariables includes: variableName) not ]
			errorString: 'Method named ', selector, ' already defines a temporary variable named ', variableName )
		& ( RBCondition
			withBlock: [ (self definingMethod allArgumentVariables includes: variableName) not ]
			errorString: 'Method named ', selector, ' already defines an argument named ', variableName )