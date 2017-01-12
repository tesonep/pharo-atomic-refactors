executing
createGetterAccessor

	(self definingClass getterMethodFor: variableName) ifNil: [ self defineGetterMethod ]