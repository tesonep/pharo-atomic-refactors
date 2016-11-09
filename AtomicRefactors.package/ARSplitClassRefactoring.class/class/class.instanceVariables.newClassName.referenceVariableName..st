instance creation
class: aClass instanceVariables: variablesToExtract newClassName: newClassName referenceVariableName: newVariable
	^self new
		targetClass: aClass;
		variablesToExtract: variablesToExtract;
		newClassName: newClassName;
		referenceVariableName: newVariable;
		yourself.