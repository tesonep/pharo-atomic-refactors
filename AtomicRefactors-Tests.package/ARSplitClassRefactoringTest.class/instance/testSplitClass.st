tests
testSplitClass
	| x y z refactor valuesClass child |
	x := subClass new.
	x oneInstanceVariable: 23.
	x values: {16 . 15 . 23}.

	y := subClass new.
	y oneInstanceVariable: 23.
	y values: {16 . 15 . 23}.

	z := subClass new.
	z oneInstanceVariable: 23.
	z values: {16 . 15 . 23}.

	self assert: x usingInstanceVariable equals: 23.

	refactor := ARSplitClassRefactoring 
		class: subClass
		instanceVariables: #(valueOne valueTwo valueThree)
		newClassName: #ARExampleSubClassValues
		referenceVariableName: #values.
	refactor execute.

	valuesClass := Smalltalk at:#ARExampleSubClassValues.

	
	{ x. y. z. } do:[ :anObj |
		self assert: anObj usingInstanceVariable equals: 23.	
		self assert: (anObj class instanceVariables includes:#values).

		child := anObj instVarNamed: #values.

		self assert: child class equals: valuesClass.

		self assert: child valueOne equals: 16.
		self assert: child valueTwo equals: 15.
		self assert: child valueThree equals: 23.

		self assert: anObj values equals: {16 . 15 . 23}].
