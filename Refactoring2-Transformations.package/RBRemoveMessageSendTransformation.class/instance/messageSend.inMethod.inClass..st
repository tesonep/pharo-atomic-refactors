api
messageSend: aMessageSend inMethod: aSelector inClass: aClassName

	self className: aClassName.
	selector := aSelector.
	message := aMessageSend