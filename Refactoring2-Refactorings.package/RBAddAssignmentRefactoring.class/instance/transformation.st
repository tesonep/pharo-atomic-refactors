executing
transformation

	^ RBAddAssignmentTransformation
		model: self model
		variable: variableName
		value: expression
		inMethod: selector
		inClass: className