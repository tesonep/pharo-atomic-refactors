refactory-changes-variables
removeInstanceVariable: variableName from: aClass
	^ ARRemoveVariableChange remove: variableName from: aClass isClassSide: false.