executing
transformation

	^ RBRemoveTemporaryVariableTransformation
		model: self model
		variable: variableName 
		inMethod: selector
		inClass: className