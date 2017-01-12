executing
transform
	
	| parseTree newNode |
	parseTree := self definingClass parseTreeFor: selector.
	parseTree ifNil: [ ^ self ].
	newNode := RBParser parseExpression: sourceCode onError: [ :string :pos | ^ self ].
	
	parseTree body statements isEmpty
		ifTrue: [ parseTree body addNode: newNode ]
		ifFalse: [ 
			(parseTree allChildren select: #isSequence)
				detect: [ :sequence | sequence intersectsInterval: interval ]
				ifFound: [ :sequence | sequence allChildren reversed
					detect: [ :node | node intersectsInterval: interval ]
					ifFound: [ :node |
						node isBlock "special case when a block is empty"
							ifTrue: [ node body addNode: newNode ]
							ifFalse: [ sequence addNode: newNode 
											before: (node parentSuchAs: #isSequence) ]] ]
				ifNone: [ | lastStatement |
							 lastStatement := parseTree body statements last.
							 lastStatement isReturn
								ifTrue: [ parseTree body addNode: newNode before: lastStatement ]
								ifFalse: [ parseTree body addNode: newNode ] ] ].

	self definingClass compileTree: parseTree