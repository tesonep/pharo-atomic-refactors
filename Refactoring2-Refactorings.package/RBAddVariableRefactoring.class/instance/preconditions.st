preconditions
preconditions

	class := self definingClass.
	
	^ (isClassVariable 
		ifTrue: [ (RBCondition isMetaclass: class)
					& (RBCondition isValidClassVarName: variableName for: class) ]
		ifFalse: [ (RBCondition isMetaclass: class) not
					& (RBCondition isValidInstanceVariableName: variableName for: class) ])
		& (RBCondition hierarchyOf: class definesVariable: variableName asString) not 
		& (RBCondition isGlobal: variableName in: self model) not