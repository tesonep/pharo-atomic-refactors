accessing
setterMethod

	^ setterMethod ifNil: [ 
		setterMethod := (self definingClass setterMethodFor: variableName)
			ifNil: [ 	(variableName uncapitalized, ':') asSymbol ] ]