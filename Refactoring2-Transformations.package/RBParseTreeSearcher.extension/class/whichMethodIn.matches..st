*Refactoring2-Transformations
whichMethodIn: aCollection matches: subtree

	| isGetterBlock searchTree |
	isGetterBlock := self new
		matchesAnyMethodOf: #(
			'`method ^ `@aValue`{ :aNode |
				(aNode isKindOf: RBInstanceVariableNode)
				or: [ aNode isKindOf: RBLiteralValueNode ] }' )
		do: [ :node :answer | true ].
	searchTree := self matchingTreeForSubtree: subtree.

	^ aCollection
		reject: [ :method | (isGetterBlock executeTree: method ast initialAnswer: false)
			or: [ (self treeMatching: searchTree in: method ast) isNil ] ]