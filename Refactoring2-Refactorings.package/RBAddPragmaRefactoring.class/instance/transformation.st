executing
transformation

	^ RBAddPragmaTransformation
		model: self model 
		pragma: pragma
		inMethod: selector
		inClass: className