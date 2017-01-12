preconditions
checkPreconditions

	| conditions result |
	conditions := self preconditions.
	
	result := conditions check.
	result ifFalse: [ self refactoringError: conditions errorString ].
	^ result