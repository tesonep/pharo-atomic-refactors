preconditions
preconditions

	^ className inject: RBCondition empty into: [ :cond :class |
		| aClassOrTrait |
		aClassOrTrait := self model classNamed: className asSymbol.
		aClassOrTrait ifNil: [ self
			refactoringError: 'No such class or trait named ', className ].
		
		cond 
			& ( (self preconditionIsNotMetaclass: aClassOrTrait) 
			& (self preconditionHasNoReferences: className)
			& (self preconditionHasNoSubclasses: aClassOrTrait)
			& (self preconditionHasNoUsers: aClassOrTrait ) ) ]