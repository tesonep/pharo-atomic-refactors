preconditions
checkBrowseOccurrences: anCollectionOfOccurrences

	anCollectionOfOccurrences size = 1
		ifTrue: [ ^ self checkBrowseOccurrenceIn: anCollectionOfOccurrences first value ]
		ifFalse: [ ^ self checkBrowseAllOccurences: anCollectionOfOccurrences ]