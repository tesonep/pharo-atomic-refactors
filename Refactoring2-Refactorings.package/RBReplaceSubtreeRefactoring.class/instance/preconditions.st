preconditions
preconditions

	^ ((RBCondition definesSelector: selector in: self definingClass)
		& (RBCondition withBlock: [ 
			| tree |
			tree := RBParser
						parseExpression: oldSourceCode
						onError: [ :string :pos | 
							self refactoringError: 'Invalid source to extract - ', string ].
			tree ifNil: [self refactoringError: 'Invalid source to extract - ', oldSourceCode ].
			(tree isSequence and: [tree statements isEmpty]) 
				ifTrue: [self refactoringError: 'Selected code to extract is empty' ].
				
			tree := ((self definingClass parseTreeFor: selector) extractSubtreeWith: oldSourceCode)
				ifNil: [ self refactoringError: 'Could not extract code from method ', selector ]. 
			true ]))
		& (RBCondition withBlock: [
				RBParser
				parseExpression: newSourceCode
				onError: [ :string :pos | 
					self refactoringError: 'Invalid source to add - ', string ]. true ])