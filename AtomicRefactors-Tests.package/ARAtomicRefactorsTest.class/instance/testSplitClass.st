tests
testSplitClass
	| x refactor valuesClass|
	x := subClass new.
	x oneInstanceVariable: 23.
	x values: {16 . 15 . 23}.

	self assert: x usingInstanceVariable equals: 23.

	refactor := self splitClassRefactorClass
		class: subClass
		instanceVariables: #(valueOne valueTwo valueThree)
		newClassName: #ARExampleSubClassValues
		referenceVariableName: #values.
	refactor execute.

	valuesClass := Smalltalk at:#ARExampleSubClassValues.

	self assert: x usingInstanceVariable equals: 23.
	
	self assert: (x class instanceVariables includes:#values).
	
	self assert: x values class equals: valuesClass.
	
	self assert: x values valueOne equals: 16.
	self assert: x values valueTwo equals: 15.
	self assert: x values valueThree equals: 23.
	
	self should: [ self assert: x values equals: {16 . 15 . 23} ]