executing
checkPreconditions
	(targetClass instanceVariables includes: variableName)
		ifTrue: [ self refactoringFailure: 'The target class already defines ' , variableName ].

	(targetClass subclasses noneSatisfy: [:each | each instanceVariables includes: variableName])
		ifTrue: [ self refactoringFailure: 'No subclass defines ' , variableName ].

	(targetClass subclasses detect: [ :each | (each instanceVariables includes: variableName) not ] ifNone: [ nil ]) notNil
		ifTrue: [ self refactoringWarning: 'Not all subclasses have an instance variable named ' , variableName , '.' ]