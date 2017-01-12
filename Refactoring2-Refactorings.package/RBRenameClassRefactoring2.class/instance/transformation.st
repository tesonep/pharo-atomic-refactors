executing
transformation

	^ RBRenameClassTransformation
		model: self model
		rename: className
		to: newClassName