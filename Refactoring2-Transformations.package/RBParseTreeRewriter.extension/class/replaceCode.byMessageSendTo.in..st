*Refactoring2-Transformations
replaceCode: subtree byMessageSendTo: aMethod in: aCompiledMethod

	| argsAndValues newSourceCode |
	argsAndValues := self mapArguments: aMethod ast arguments
								toValues: (subtree allChildren select: #isLiteralNode)
								in: subtree.
	newSourceCode := self buildMessageSendWith: aMethod selector 
			and: argsAndValues asDictionary
			needsReturn: subtree isReturn.
		
	^ RBReplaceSubtreeTransformation
		replace: subtree sourceCode
		to: newSourceCode
		inMethod: aCompiledMethod selector
		inClass: aCompiledMethod methodClass