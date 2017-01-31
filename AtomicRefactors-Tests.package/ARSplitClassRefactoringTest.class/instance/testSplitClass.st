tests
testSplitClass
	| x refactor valuesClass child |
	x := subClass new.
	x oneInstanceVariable: 23.
	x values: {16 . 15 . 23}.

	self assert: x usingInstanceVariable equals: 23.

	refactor := RBSplitClassRefactoring2 
		class: subClass name
		instanceVariables: #(valueOne valueTwo valueThree)
		newClassName: #ARExampleSubClassValues
		referenceVariableName: #values.
	refactor execute.

	valuesClass := Smalltalk at:#ARExampleSubClassValues.

	self assert: x usingInstanceVariable equals: 23.
	
	self assert: (x class instanceVariables includes:#values).
	
	child := x instVarNamed: #values.
	
	self assert: child class equals: valuesClass.
	
	self assert: child valueOne equals: 16.
	self assert: child valueTwo equals: 15.
	self assert: child valueThree equals: 23.
	
	self assert: x values equals: {16 . 15 . 23}