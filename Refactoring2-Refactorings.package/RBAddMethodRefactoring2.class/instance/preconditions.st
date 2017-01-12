preconditions
preconditions

	| method |
	method := RBParser
				parseMethod: sourceCode
				onError: [ :string :position | 
					^ RBCondition withBlock: [self refactoringError:
					'The content of this method cannot be parsed.']].
	method selector isNil ifTrue: [self refactoringError: 'The method has no selector.'].
	^ (RBCondition canUnderstand: method selector in: self definingClass) not