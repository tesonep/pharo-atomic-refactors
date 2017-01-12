executing
createSetterAccessor

	(self definingClass setterMethodFor: variableName) ifNil: [ self defineSetterMethod ]