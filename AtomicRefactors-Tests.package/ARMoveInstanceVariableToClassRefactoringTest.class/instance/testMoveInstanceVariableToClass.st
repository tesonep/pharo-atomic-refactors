tests
testMoveInstanceVariableToClass
	| x refactor |
	x := classMoveInstanceVariable new.

	refactor := RBMoveInstanceVariableToClassRefactoring
		variable: 'anInstanceVariable'
		fromClass: classMoveInstanceVariable name
		toClass: classMoveInstanceVariable class name asSymbol.
	refactor execute.
