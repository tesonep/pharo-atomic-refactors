executing
transformation

	^ RBRemoveSubtreeTransformation
		model: self model
		code: sourceCode
		from: selector
		in: className