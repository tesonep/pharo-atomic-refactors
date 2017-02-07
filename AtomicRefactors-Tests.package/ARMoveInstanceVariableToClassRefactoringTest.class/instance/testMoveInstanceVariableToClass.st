tests
testMoveInstanceVariableToClass
	| x refactor |
	x := classMoveInstanceVariable new.

	self assert: x anInstanceVariable equals: 23.

	refactor := RBMoveInstanceVariableToClassRefactoring
		variable: 'anInstanceVariable'
		fromClass: classMoveInstanceVariable
		toClass: classMoveInstanceVariable class.
	refactor execute.

	self assert: x anInstanceVariable equals: 23.