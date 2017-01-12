preconditions
checkSuperMethods

	(self justSendsSuper: selector) ifTrue: [ ^ self ]
		ifFalse: [ (self superclassEquivalentlyDefines: selector)
			ifTrue: [ (self definingClass parseTreeFor: selector) superMessages
				ifNotEmpty: [ self 
						refactoringError: ('Although <1s> is equivalent to a superclass method,<n>
							it contains a super send so it might modify behavior.'
							expandMacrosWith: selector ) ] ]
			ifFalse: [ self checkReferences ] ]