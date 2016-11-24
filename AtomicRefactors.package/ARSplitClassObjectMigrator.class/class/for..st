instance creation
for: anSplitRefactoring
	^self new 
		variablesToExtract: anSplitRefactoring variablesToExtract;
		newClassName: anSplitRefactoring newClassName;
		referenceVariableName: anSplitRefactoring referenceVariableName;
		yourself.