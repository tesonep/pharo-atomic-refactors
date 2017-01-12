api
replace: oldSourceCode to: newSourceCode inMethod: aSelector inClass: aClass

	^ self new
		replace: oldSourceCode
		to: newSourceCode
		inMethod: aSelector
		inClass: aClass;
		yourself 