querying
calculateNewArgumentsIn: aMethodName

	aMethodName arguments size > arguments size ifTrue: [ 
		| selection |
		selection := RBMethodArgumentsSelector
			openOn: aMethodName arguments copy
			and: (newMethod body allChildren
					select: #isLiteralNode
					thenCollect: [ :e | e value storeString ])
			in: newMethod.
			
		newMethod := selection newTree.
		^ selection argumentsAndValues ].
	^ Dictionary new