*Refactoring2-Transformations
treeMatchings: aString in: aParseTree 

	| allMatches |
	allMatches := OrderedCollection new.
	(self new)
		matches: aString do: [ :aNode :answer | allMatches add: aNode ];
		executeTree: aParseTree.
	^ allMatches