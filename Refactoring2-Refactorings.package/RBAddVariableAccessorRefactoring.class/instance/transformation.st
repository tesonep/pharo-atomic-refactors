executing
transformation

	^ RBAddVariableAccessorTransformation
		model: self model
		variable: variableName
		class: className
		classVariable: isClassVariable