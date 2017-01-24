converting
asUndoOperation
	^ isMeta
		ifTrue: [ RBRefactoryChangeManager changeFactory
				removeClassVariable: variableName
				from: targetClass ]
		ifFalse: [ RBRefactoryChangeManager changeFactory
				removeInstanceVariable: variableName
				from: targetClass ]