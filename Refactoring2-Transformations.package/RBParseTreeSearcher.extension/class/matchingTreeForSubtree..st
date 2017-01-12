*Refactoring2-Transformations
matchingTreeForSubtree: subtree

	| searchCode argumentNodes |
	searchCode := subtree formattedCode.

	"if there's just a return, remove it"
	subtree lastIsReturn ifTrue: [ 
		searchCode := searchCode copyReplaceAll: '^' with: '' ].
	
	"replace literal values by wildcards"
	argumentNodes := subtree allChildren
		select: #isLiteralNode
		thenCollect: [ :e | ' ', e value printString ].
	argumentNodes doWithIndex: [ :e :i |
		searchCode := searchCode
							copyReplaceAll: e 
							with: '``@a',i asString,'`{ :aNode | aNode isArgument }' ].
	
	^ searchCode