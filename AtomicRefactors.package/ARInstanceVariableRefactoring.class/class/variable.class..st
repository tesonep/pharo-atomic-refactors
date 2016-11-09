instance creation
variable: aVariableName class: aClass
	^ self new
		variableName: aVariableName;
		targetClass: aClass;
		yourself