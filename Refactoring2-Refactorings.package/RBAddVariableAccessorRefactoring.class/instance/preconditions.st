preconditions
preconditions

	class := self model classObjectFor: className.

	^ isClassVariable 
		ifTrue: [RBCondition definesClassVariable: variableName asSymbol in: class]
		ifFalse: [RBCondition definesInstanceVariable: variableName in: class]