executing
transformation

	^ RBProtectVariableTransformation
		model: self model
		variable: variableName
		class: className
		isClassVariable: isClassVariable