tests
defineExampleClass
	super defineExampleClass.
	
	Object
		subclass: #ARClassProtectVariableTest
		instanceVariableNames: 'anInstanceVariable'
		classVariableNames: 'AClassVariable'
		package: 'AtomicRefactors-Tests-ExampleClass'.

	
	classProtectVariable := Smalltalk globals at:#ARClassProtectVariableTest.
	
	classProtectVariable 
		subclass: #ARSubClassProtectVariableTest
		instanceVariableNames: ''
		classVariableNames: ''
		package: 'AtomicRefactors-Tests-ExampleClass'.

	subClassProtectVariable := Smalltalk globals at:#ARSubClassProtectVariableTest.
		
	classProtectVariable compile:'initialize
		anInstanceVariable := 23.
		AClassVariable := 42.
	'.
	
	classProtectVariable compile:'inc
		anInstanceVariable := anInstanceVariable + 1
	'.
	
	subClassProtectVariable compile: 'dec
		anInstanceVariable := anInstanceVariable - 1
	'.
	
	classProtectVariable compile: 'value
		^ anInstanceVariable
	'.
	
	subClassProtectVariable compile: 'decClass
		AClassVariable := AClassVariable - 1
	'.
	
	classProtectVariable compile: 'valueClass
		^ AClassVariable
	'.
