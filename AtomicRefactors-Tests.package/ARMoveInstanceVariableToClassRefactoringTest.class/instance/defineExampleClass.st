as yet unclassified
defineExampleClass
	super defineExampleClass.
	
	Object
		subclass: #ARClassMoveInstanceVariable
		instanceVariableNames: 'anInstanceVariable'
		classVariableNames: ''
		package: 'AtomicRefactors-Tests-ExampleClass'.
	
	classMoveInstanceVariable := Smalltalk globals at:#ARClassMoveInstanceVariable.
	
	classMoveInstanceVariable compile:'initialize
		anInstanceVariable := 23.
	'.
	
	classMoveInstanceVariable compile:'anInstanceVariable
		^ anInstanceVariable
	'.
	
	classMoveInstanceVariable compile:'anInstanceVariable: aValue
		anInstanceVariable := aValue.
	'
	

