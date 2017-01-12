executing
replaceClassAccesses

	| replacer |
	"replace accesses in the metaclass"
	replacer := RBParseTreeRewriter 
				variable: variableName
				getter: self getterMethod
				setter: self setterMethod.
				
	self model
		convertClasses: self definingClass theMetaClass withAllSubclasses
		select: [ :aClass | (aClass whichSelectorsReferToClassVariable: variableName)
			reject: [ :each | 
				aClass == self definingClass theMetaClass
				and: [ each == self getterMethod
				or: [ each == self setterMethod ] ] ] ]
		using: replacer.
	
	"replace accessed in the class"
	replacer := RBParseTreeRewriter 
				variable: variableName
				getter: 'class ', self getterMethod
				setter: 'class ', self setterMethod.	

	self model
		convertClasses: self definingClass theNonMetaClass withAllSubclasses
		select: [ :aClass | aClass whichSelectorsReferToClassVariable: variableName ]
		using: replacer