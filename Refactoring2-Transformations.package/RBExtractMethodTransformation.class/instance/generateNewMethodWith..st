executing
generateNewMethodWith: aMethodName

	| args newMethodNode |
	args := aMethodName arguments
		collect: [ :p | RBVariableNode named: p ].
	
	newMethodNode := RBMethodNode
							selector: aMethodName selector
							arguments: args asArray
							body: (subtree isSequence 
								ifTrue: [ subtree ]
								ifFalse: [ RBSequenceNode
									temporaries: #()
									statements: (OrderedCollection with: subtree)]).						
	temporaries do: [:each | newMethodNode body addTemporaryNamed: each].
	
	((parseTree parentOfSubtree: subtree) uses: subtree)
		ifTrue: [ newMethodNode addReturn ].
	
	assignments size = 1 ifTrue: [
		newMethodNode addNode: 
			(RBReturnNode value: 
			(RBVariableNode named: assignments first asString)) ].
	
	^ newMethodNode.