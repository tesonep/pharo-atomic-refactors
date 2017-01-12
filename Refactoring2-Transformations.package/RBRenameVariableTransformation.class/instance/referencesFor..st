executing
referencesFor: aClass

	^ isClassVariable
		ifTrue: [ aClass whichSelectorsReferToClassVariable: variableName ]
		ifFalse: [ aClass whichSelectorsReferToInstanceVariable: variableName ]
	