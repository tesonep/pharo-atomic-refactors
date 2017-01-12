querying
checkSelector: aSelector using: aMatcher 

	| parseTree |
	parseTree := self parseTreeFor: aSelector.
	parseTree ifNotNil: [aMatcher executeTree: parseTree].
	^ aMatcher answer