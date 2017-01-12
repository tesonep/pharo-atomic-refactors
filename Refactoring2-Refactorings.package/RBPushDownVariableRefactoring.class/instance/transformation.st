executing
transformation

	^ RBPushDownVariableTransformation
		model: self model 
		variable: variableName
		class: className
		isClassVariable: isClassVariable