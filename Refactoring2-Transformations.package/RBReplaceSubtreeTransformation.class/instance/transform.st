executing
transform

	| tree oldTree newTree |
	tree := self definingClass parseTreeFor: selector.
	tree ifNil: [ ^ self ].

	oldTree := tree extractSubtreeWith: oldSourceCode.
	oldTree ifNil: [ ^ self ].
	
	newTree := RBParser parseExpression: newSourceCode onError: [ :string :pos | ^ nil ].
	newTree ifNil: [ ^ self ].
		
	tree := oldTree isSequence 
		ifTrue: [ RBParseTreeRewriter 
				replaceStatements: oldTree formattedCode
	 			with: newSourceCode in: tree ]
		ifFalse: [ RBParseTreeRewriter 
					replace: oldTree formattedCode
					with: newSourceCode in: tree
					onInterval: tree sourceInterval ].

	self definingClass compileTree: tree