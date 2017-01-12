tests
testPullUpClassVariable
	| x refactor |
	x := example new.
	x oneClassVariable:  23.

	self assert: x oneClassVariable equals: 23.

	refactor := RBPullUpVariableRefactoring 
		classVariable: 'OneClassVariable'
		class: superClass.
	refactor execute.

	self assert: (superClass classPool keys includes: #OneClassVariable).
	self deny: (example classPool keys includes: #OneClassVariable).


	self assert: x oneClassVariable equals: 23