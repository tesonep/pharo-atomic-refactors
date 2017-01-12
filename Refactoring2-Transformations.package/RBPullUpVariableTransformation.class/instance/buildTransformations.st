executing
buildTransformations

	^ OrderedCollection new
		addAll: (self variableDefinitionsInHierarchy
			collect: [ :each | 
				RBRemoveVariableTransformation
				model: self model
				variable: variableName
				class: each
				classVariable: isClassVariable ]);
		add: (RBAddVariableTransformation
				model: self model
				variable: variableName
				class: className
				classVariable: isClassVariable);
		yourself