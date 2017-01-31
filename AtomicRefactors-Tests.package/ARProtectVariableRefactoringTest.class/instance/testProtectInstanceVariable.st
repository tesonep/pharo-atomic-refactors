tests
testProtectInstanceVariable
	| x refactor |
	x := subClassProtectVariable new.

	self assert: x value equals: 23.

	x dec.

	self assert: x value equals: 22.


	refactor := RBProtectVariableRefactoring 
		instanceVariable: 'anInstanceVariable'
		class: classProtectVariable name.
	refactor execute.

	self assert: x value equals: 22.
	x dec.
	self assert: x value equals: 21.
