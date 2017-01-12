refactory-changes-variables
removeClassVariable: variableName from: aClass 
	^ ARRemoveVariableChange remove: variableName from: aClass isClassSide: true.