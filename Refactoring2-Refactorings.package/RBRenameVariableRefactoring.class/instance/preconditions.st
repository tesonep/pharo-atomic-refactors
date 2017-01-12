preconditions
preconditions

	class := self model classObjectFor: className.

	^ (isClassVariable
		ifTrue: [ (RBCondition isMetaclass: class) not 
					& (RBCondition isValidClassVarName: newVariableName asString for: class) 
					& (RBCondition definesClassVariable: variableName asString in: class) ]
		ifFalse: [ (RBCondition isValidInstanceVariableName: newVariableName for: class) 
					& (RBCondition definesInstanceVariable: variableName in: class) ])
		& (RBCondition hierarchyOf: class definesVariable: newVariableName) not 
		& (RBCondition isGlobal: newVariableName in: self model) not