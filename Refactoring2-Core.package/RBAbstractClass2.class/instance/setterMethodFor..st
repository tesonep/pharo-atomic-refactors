querying
setterMethodFor: aVariableName

	| matcher candidateSetters |
	matcher := RBParseTreeSearcher setterMethod: aVariableName.
			
	candidateSetters := (self definesInstanceVariable: aVariableName)
		ifTrue: [ self whichSelectorsReferToInstanceVariable: aVariableName ]
		ifFalse: [ self whichSelectorsReferToClassVariable: aVariableName ].
	candidateSetters := candidateSetters
		select: [ :each | each numArgs == 1 ].
		
	^ candidateSetters 
		detect: [ :each | 
			(self checkSelector: each using: matcher) notNil 
			and: [(self subclassRedefines: each) not]]
		ifNone: [nil]