tests
testPushDownInstanceVariable
	| x refactor |
	x := example new.
	x oneInstanceVariable: 23.
	x superInstanceVariable: 72.

	self assert: x usingInstanceVariable equals: 23.
	self assert: x superInstanceVariable equals: 72.


	refactor := self pushDownInstanceRefactorClass variable: 'superInstanceVariable' class: superClass.
	refactor execute.

	self deny: (superClass instanceVariables includes:#superInstanceVariable). 
	self assert: (example instanceVariables includes:#superInstanceVariable). 

	self assert: x usingInstanceVariable equals: 23.
	self assert: x superInstanceVariable equals: 72