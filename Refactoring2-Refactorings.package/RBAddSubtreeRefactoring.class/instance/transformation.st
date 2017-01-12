executing
transformation

	^ RBAddSubtreeTransformation
		model: self model
		interval: interval
		with: sourceCode
		from: selector
		in: className