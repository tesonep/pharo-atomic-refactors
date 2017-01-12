executing
transformation

	^ RBAddMethodTransformation
		model: self model
		sourceCode: sourceCode
		in: className
		withProtocol: protocol