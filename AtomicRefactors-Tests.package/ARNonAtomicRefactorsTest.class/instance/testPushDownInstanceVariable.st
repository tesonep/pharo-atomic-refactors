failures
testPushDownInstanceVariable
	<expectedFailure>
	| x refactor |
	x := example new.
	x oneInstanceVariable: 23.
	x superInstanceVariable: 72.

	self assert: x usingInstanceVariable equals: 23.
	self assert: x superInstanceVariable equals: 72.


	refactor := RBPushDownInstanceVariableRefactoring variable: 'superInstanceVariable' class: superClass.
	refactor execute.

	self assert: x usingInstanceVariable equals: 23.
	self assert: x superInstanceVariable equals: 72