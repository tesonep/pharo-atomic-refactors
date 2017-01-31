tests
testPullUpInstanceVariable
	| x refactor |
	x := example new.
	x oneInstanceVariable: 23.

	self assert: x usingInstanceVariable equals: 23.

	refactor := RBPullUpVariableRefactoring 
		instanceVariable: 'oneInstanceVariable'
		class: superClass name.
	refactor execute.

	self assert: (superClass instanceVariables includes: #oneInstanceVariable).
	self deny: (example instanceVariables includes: #oneInstanceVariable).


	self assert: x usingInstanceVariable equals: 23