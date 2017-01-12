executing
buildTransformations

	^ OrderedCollection new
		add: (RBRemoveVariableTransformation
				model: self model
				variable: variableName
				class: className
				classVariable: isClassVariable);
		addAll: (self variableDefinitionsInHierarchy
			collect: [ :each | 
				RBAddVariableTransformation
				model: self model
				variable: variableName
				class: each
				classVariable: isClassVariable ]);
		yourself