executing
transformation

	^ RBRemoveReturnStatementTransformation
		model: self model 
		return: returnValue
		inMethod: selector
		inClass: className