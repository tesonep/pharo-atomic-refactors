executing
replaceInstanceAccesses

	| replacer |
	replacer := RBParseTreeRewriter 
				variable: variableName
				getter: self getterMethod
				setter: self setterMethod.	
	
	self model
		convertClasses: self definingClass withAllSubclasses
		select: [ :aClass | (aClass whichSelectorsReferToInstanceVariable: variableName)
			reject: [ :each | 
				aClass == self definingClass
				and: [ each == self getterMethod
				or: [ each == self setterMethod ] ] ] ]
		using: replacer