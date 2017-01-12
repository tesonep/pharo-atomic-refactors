executing
transformation

	^ RBMoveInstanceVariableToClassTransformation
		model: self model
		variable: variableName 
		fromClass: className
		toClass: newClassName