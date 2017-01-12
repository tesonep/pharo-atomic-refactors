querying
getterMethodFor: aVariableName

	| matcher candidateGetters |
	matcher := RBParseTreeSearcher getterMethod: aVariableName.
	
	candidateGetters := (self definesInstanceVariable: aVariableName)
		ifTrue: [ self whichSelectorsReferToInstanceVariable: aVariableName ]
		ifFalse: [ self whichSelectorsReferToClassVariable: aVariableName ].
	candidateGetters := candidateGetters
		select: [ :each | each numArgs == 0 ].
	
	^ candidateGetters
		detect: [ :each | 
			(self checkSelector: each using: matcher) notNil 
			and: [(self subclassRedefines: each) not]]
		ifNone: [nil]