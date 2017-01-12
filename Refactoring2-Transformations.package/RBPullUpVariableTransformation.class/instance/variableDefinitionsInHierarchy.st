accessing
variableDefinitionsInHierarchy

	^ self definingClass allSubclasses
		select: [ :each |
			isClassVariable
				ifTrue: [ each isMeta not and: [ each directlyDefinesClassVariable: variableName ] ]
				ifFalse: [ each directlyDefinesInstanceVariable: variableName ] ]
		thenCollect: #name
	
	