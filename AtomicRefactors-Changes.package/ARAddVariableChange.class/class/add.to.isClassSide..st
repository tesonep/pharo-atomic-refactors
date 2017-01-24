instance creation
add: variableName to: aClass isClassSide: isClassSide
	^ self new
		variableName: variableName;
		targetClass: aClass;
		isMeta: isClassSide;
		yourself