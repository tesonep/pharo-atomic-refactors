converting
createNewClassFor: aBehavior

	| nonMeta meta className |
	className := aBehavior theNonMetaClass name.
	nonMeta := (RBClass2 existingNamed: className)
				model: self;
				yourself.
	meta := (RBMetaclass2 existingNamed: className)
				model: self;
				yourself.
	^changedClasses at: className put: (Array with: nonMeta with: meta)