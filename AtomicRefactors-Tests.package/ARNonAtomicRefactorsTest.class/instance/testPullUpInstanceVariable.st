failures
testPullUpInstanceVariable
	<expectedFailure>
	| x refactor |
	x := example new.
	x oneInstanceVariable: 23.

	self assert: x usingInstanceVariable equals: 23.

	refactor := RBPullUpInstanceVariableRefactoring variable: 'oneInstanceVariable' class: superClass.
	refactor execute.

	self assert: x usingInstanceVariable equals: 23