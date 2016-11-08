failures
testSplitClass
	<expectedFailure>
	| x refactor |
	x := subClass new.
	x oneInstanceVariable: 23.
	x values: {16 . 15 . 23}.

	self assert: x usingInstanceVariable equals: 23.

	refactor := RBSplitClassRefactoring
		class: subClass
		instanceVariables: #(valueOne valueTwo valueThree)
		newClassName: #ARExampleSubClassValues
		referenceVariableName: #values.
	refactor execute.

	self assert: x usingInstanceVariable equals: 23.

	self should: [ self assert: x values equals: {16 . 15 . 23} ]