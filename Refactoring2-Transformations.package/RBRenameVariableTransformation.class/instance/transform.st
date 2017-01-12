executing
transform

	isClassVariable
		ifTrue: [ self definingClass theNonMetaClass renameClassVariable: variableName
						to: newVariableName around: [ self renameReferences ] ]
		ifFalse: [ self definingClass renameInstanceVariable: variableName
						to: newVariableName around: [ self renameReferences ]  ]