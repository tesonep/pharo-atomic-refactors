accessing
variableDefinitionsInHierarchy

	self flag: #todo. "why the behavior is different for class and instance variable?"
	^ isClassVariable
		ifTrue: [ self definingClass allSubclasses reject: [ :each |
			(each whichSelectorsReferToClassVariable: variableName) isEmpty
			and: [ (each theMetaClass whichSelectorsReferToClassVariable: variableName) isEmpty ] ] ]
		ifFalse: [ self definingClass subclasses ] 