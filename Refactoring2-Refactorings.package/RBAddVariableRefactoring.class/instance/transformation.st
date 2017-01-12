executing
transformation

	^ RBAddVariableTransformation
		model: self model
		variable: variableName
		class: className
		classVariable: isClassVariable