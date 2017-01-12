executing
transformation

	^ RBMethodProtocolTransformation
		model: self model 
		protocol: protocol
		inMethod: selector
		inClass: className