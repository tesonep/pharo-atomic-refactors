executing
transformation

	^ RBRemoveMessageSendTransformation
		model: self model
		messageSend: message
		inMethod: selector
		inClass: className