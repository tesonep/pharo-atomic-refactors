executing
renameReferences

	| replacer subclasses |
	replacer := RBParseTreeRewriter 
				rename: variableName
				to: newVariableName
				handler: [ self refactoringError: ('<1s> is already defined as a method
					or block temporary <n> variable in this class or one of its subclasses' 
					expandMacrosWith: newVariableName )].
	subclasses := (self model classObjectFor: className) withAllSubclasses.
	isClassVariable ifTrue: [ subclasses addAll: self definingClass withAllSubclasses ].
	
	self model
		convertClasses: subclasses
		select: [ :aClass | self referencesFor: aClass ]
		using: replacer