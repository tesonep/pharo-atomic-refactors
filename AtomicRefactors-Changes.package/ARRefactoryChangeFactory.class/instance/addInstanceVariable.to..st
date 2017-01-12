refactory-changes-variables
addInstanceVariable: variableName to: aClass
	^ ARAddVariableChange add: variableName to: aClass isClassSide: false.