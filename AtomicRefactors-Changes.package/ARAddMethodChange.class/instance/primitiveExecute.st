private
primitiveExecute
	| modifyMethod |
	modifyMethod := APAddMethod fromSource: self sourceCode selector: self selector onClassNamed: self targetClass name.
	ARRefactoryChangeManager instance builder addOperation: modifyMethod