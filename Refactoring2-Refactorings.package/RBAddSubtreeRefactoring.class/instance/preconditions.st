preconditions
preconditions

	^ (RBCondition definesSelector: selector in: self definingClass)
		& (RBCondition withBlock: [
				RBParser
				parseExpression: sourceCode
				onError: [ :string :pos | 
					self refactoringError: 'Invalid source to add - ', string ]. true ])