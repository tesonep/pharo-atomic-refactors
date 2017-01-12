executing
buildTransformations

	subtree := self calculateSubtree.
			
	^ (parseTree isNil or: [ subtree isNil ])
		ifTrue: [ OrderedCollection new ]
		ifFalse: [ 
			| tempsToRemove |
			arguments := self calculateArguments.
			temporaries := self calculateTemporaries.
			assignments := self calculateAssignments.
			tempsToRemove := self calculateTemporariesToRemove.
			
			assignments size > 1
			ifTrue: [ OrderedCollection new ]
			ifFalse: [ 
				| newMethodName newArguments messageSend needsReturn |
				newMethodName := self newMethodName.
				newMethodName ifNil: [ ^ OrderedCollection new ].
				
				needsReturn := self calculateIfReturnIsNeeded.
				newMethod := self generateNewMethodWith: newMethodName.
				newArguments := self calculateNewArgumentsIn: newMethodName.
				messageSend := self messageSendWith: newMethodName 
									and: newArguments needsReturn: needsReturn.
										
				OrderedCollection new
					add: (RBAddMethodTransformation
							model: self model
							sourceCode: newMethod newSource
							in: class
							withProtocol: Protocol unclassified);
					add: (RBReplaceSubtreeTransformation
							model: self model
							replace: sourceCode
							to: messageSend
							inMethod: selector
							inClass: class);
					addAll: (tempsToRemove collect: [ :temporary |
							RBRemoveTemporaryVariableTransformation
							model: self model
							variable: temporary
							inMethod: selector
							inClass: class ]);
					yourself ] ]