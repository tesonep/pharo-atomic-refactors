accessing
asUndoOperation
	^ isMeta
		ifTrue:
			[ RBRefactoryChangeManager changeFactory addClassVariable: variableName to: targetClass ]
		ifFalse:
			[ RBRefactoryChangeManager changeFactory addInstanceVariable: variableName to: targetClass ]