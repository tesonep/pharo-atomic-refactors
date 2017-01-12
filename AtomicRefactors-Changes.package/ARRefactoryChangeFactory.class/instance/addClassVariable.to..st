refactory-changes-variables
addClassVariable: variableName to: aClass
	^ ARAddVariableChange add: variableName to: aClass isClassSide: true.