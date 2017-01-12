executing
transformation

	^ RBRemoveMethodTransformation
		model: self model
		selector: selector
		from: className