api
messageSend: aString inMethod: aSelector inClass: aClassName

	self className: aClassName.
	selector := aSelector.
	messageSend := aString