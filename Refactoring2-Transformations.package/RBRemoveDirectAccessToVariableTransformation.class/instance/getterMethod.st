accessing
getterMethod

	^ getterMethod ifNil: [ 
		getterMethod := (self definingClass getterMethodFor: variableName)
			ifNil: [ variableName uncapitalized asSymbol ] ]