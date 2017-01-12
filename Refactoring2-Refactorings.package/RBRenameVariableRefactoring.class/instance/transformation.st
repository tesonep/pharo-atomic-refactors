executing
transformation

	^ RBRenameVariableTransformation
		model: self model
		rename: variableName
		to: newVariableName
		in: className
		classVariable: isClassVariable