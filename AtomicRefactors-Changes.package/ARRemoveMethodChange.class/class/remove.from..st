removing
remove: aSelector from: aClass
	^ self new
		selector: aSelector;
		targetClass: aClass;
		yourself