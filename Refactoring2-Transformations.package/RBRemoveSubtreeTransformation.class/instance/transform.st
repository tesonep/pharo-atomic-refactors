executing
transform

	| parseTree |
	"execute in terms of nodes and not in parserewriter"
	"suggest remove similar code here"
	parseTree := self definingClass parseTreeFor: selector.
	parseTree ifNil: [ ^ self ].
	
	"Halt now."
	(parseTree extractSubtreeWith: sourceCode)
		ifNotNil: [ :subtree |
			parseTree removeSubtree: subtree.
			self definingClass compileTree: parseTree ]
		ifNil: [ ^ self ].
	
	
	"(subtree := parseTree extractSubtreeWith: sourceCode) ifNil: [ ^ self ].	
	parseTree := parseTree removeSubtree: subtree.
	self definingClass compileTree: parseTree"