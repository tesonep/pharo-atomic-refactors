preconditions
checkReferences

	| occurrences |
	occurrences := OrderedCollection new.

	self model
		  allReferencesTo: selector
		  do: [ :aRBMethod | 
				(selector = aRBMethod selector)
				ifFalse: [ occurrences add: selector -> aRBMethod ] ].
	occurrences ifEmpty: [ ^ self ].
	^ self checkBrowseOccurrences: occurrences