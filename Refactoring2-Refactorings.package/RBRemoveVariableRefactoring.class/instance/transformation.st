executing
transformation

	^ RBRemoveVariableTransformation
		model: self model
		variable: variableName
		class: className
		classVariable: isClassVariable