*Refactoring2-Transformations
extractSubtreeWith: aSourceCode

	| extractedTree |
	extractedTree := RBParser parseExpression: aSourceCode onError: [ :string :pos | ^ nil ].
	extractedTree ifNil: [ ^ nil ].
	
	(extractedTree isSequence 
	and: [extractedTree statements isEmpty]) ifTrue: [ ^ nil ].
	
	extractedTree := (extractedTree isSequence "or: [aTree isReturn]")
		ifTrue: [ RBParseTreeSearcher 
					 treeMatchingStatements: aSourceCode
					 in: self ]
		ifFalse: [ RBParseTreeSearcher
					  treeMatching: aSourceCode
					  in: self ].
			
	^ extractedTree ifNotNil: [ extractedTree parent: (self parentOfSubtree: extractedTree) ]