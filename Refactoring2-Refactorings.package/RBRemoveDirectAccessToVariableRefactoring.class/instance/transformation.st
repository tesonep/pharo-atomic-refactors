executing
transformation

	^ RBRemoveDirectAccessToVariableTransformation
		model: self model
		variable: variableName
		class: className
		classVariable: isClassVariable