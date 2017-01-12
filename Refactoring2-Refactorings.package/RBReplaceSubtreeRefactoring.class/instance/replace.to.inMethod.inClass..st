api
replace: anOldString to: aNewString inMethod: aSelector inClass: aClass

	self className: aClass.
	selector := aSelector.
	oldSourceCode := anOldString.
	newSourceCode := aNewString