removing
remove: variableName from: aClass isClassSide: isClassSide
	^ self new
		variableName: variableName;
		targetClass: aClass;
		isMeta: isClassSide;
		yourself