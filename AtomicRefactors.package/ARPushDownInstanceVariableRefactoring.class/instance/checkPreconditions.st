executing
checkPreconditions
	(targetClass instanceVariables includes: variableName) not
		ifTrue: [ self refactoringFailure: 'The target class does not defines ' , variableName ].

	(self hasClass: targetClass referencesToInstanceVariable: variableName)
		ifTrue: [ self refactoringFailure: 'The class  ' , targetClass name, ' references the instance variable ', variableName ].