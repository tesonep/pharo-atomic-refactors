executing
buildTransformations

	^ OrderedCollection
		with: (RBAddVariableTransformation
				model: self model
				instanceVariable: variableName asString
				class: className)
		with: (RBRemoveVariableTransformation
				model: self model
				instanceVariable: variableName asString
				class: oldClass)