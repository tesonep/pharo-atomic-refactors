tests
testPullUpInstanceVariable
	| x refactor |
	x := example new.
	x oneInstanceVariable: 23.

	self assert: x usingInstanceVariable equals: 23.

	refactor := self pullUpInstanceRefactorClass
		variable: 'oneInstanceVariable'
		class: superClass.
	refactor execute.

	self assert: (superClass instanceVariables includes: #oneInstanceVariable).
	self deny: (example instanceVariables includes: #oneInstanceVariable).


	self assert: x usingInstanceVariable equals: 23