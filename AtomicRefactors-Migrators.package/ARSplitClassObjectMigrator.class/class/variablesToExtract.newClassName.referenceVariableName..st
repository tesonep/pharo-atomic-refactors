instance creation
variablesToExtract: variablesToExtract newClassName: newClassName referenceVariableName: referenceVariableName
	^ self new
		variablesToExtract: variablesToExtract;
		newClassName: newClassName;
		referenceVariableName: referenceVariableName;
		yourself