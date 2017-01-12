executing
newMethodName

	| methodName newAttempt |
	newAttempt := newSelector isNil.
	
	methodName := RBMethodName new.
	methodName arguments: arguments.
	newSelector ifNotNil: [ methodName selector: newSelector ].
	
	[ newAttempt ] whileTrue: [ 
		methodName := (RBMethodNameEditor openOn: methodName) methodName.
		methodName
			ifNil: [ "self inform: 'Please provide a name for the method.'.
						methodName := RBMethodName new arguments: arguments" newAttempt := false ]
			ifNotNil: [ :newMethodName |
				newSelector := newMethodName selector.
				newAttempt := newSelector isNil.
				
				"it's a valid selector"
				(newSelector isString and: [RBScanner isSelector: newSelector])
					ifFalse: [ self inform: newSelector asString, ' is not a valid selector.'.
								  newSelector := nil ].
					
				"already exists in class"
				(self definingClass directlyDefinesLocalMethod: newSelector)
					ifTrue: [ self inform: newSelector, ' is already defined in ', class asString.
								 newSelector := nil ] ] ].

	^ methodName