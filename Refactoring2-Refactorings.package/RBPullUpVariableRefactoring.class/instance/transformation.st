executing
transformation

	^ RBPullUpVariableTransformation
		model: self model
		variable: variableName
		class: className
		isClassVariable: isClassVariable