tests
testProtectClassVariable
	| x refactor |
	x := subClassProtectVariable new.

	self assert: x valueClass equals: 42.

	x decClass.

	self assert: x valueClass equals: 41.


	refactor := RBProtectVariableRefactoring 
		instanceVariable: 'AClassVariable'
		class: classProtectVariable name.
	refactor execute.


	self assert: x class = subClassProtectVariable.

	self assert: x valueClass equals: 41.
	x decClass.
	self assert: x valueClass equals: 40.
