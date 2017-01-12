transforming
convertMethod: selector using: searchReplacer 
	"Convert the parse tree for selector using the searchReplacer. If a
	change is made then compile it into the changeBuilder."

	| parseTree |
	parseTree := self parseTreeFor: selector.
	parseTree isNil ifTrue: [^self].
	(searchReplacer executeTree: parseTree) 
		ifTrue: [self compileTree: searchReplacer tree]