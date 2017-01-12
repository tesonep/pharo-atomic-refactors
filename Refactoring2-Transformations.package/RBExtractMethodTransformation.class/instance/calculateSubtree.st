querying
calculateSubtree

	^ subtree ifNil: [ 
		subtree := self calculateTree ifNotNil: [ parseTree extractSubtreeWith: sourceCode ] ]