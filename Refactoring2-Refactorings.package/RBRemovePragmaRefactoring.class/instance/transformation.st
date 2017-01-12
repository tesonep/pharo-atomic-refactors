executing
transformation

	^ RBRemovePragmaTransformation
		model: self model
		pragma: pragma
		inMethod: selector
		inClass: className