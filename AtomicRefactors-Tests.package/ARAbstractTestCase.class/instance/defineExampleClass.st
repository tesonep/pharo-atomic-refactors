as yet unclassified
defineExampleClass
	example:= nil.
	superClass := nil.
	subClass := nil.

	Object
		subclass: #ARSuperclassExampleClass
		instanceVariableNames: 'superInstanceVariable'
		classVariableNames: 'SuperClassVariable'
		package: 'AtomicRefactors-Tests-ExampleClass'.

	superClass := Smalltalk globals at:#ARSuperclassExampleClass.

	superClass
		subclass: #ARExampleClass
		instanceVariableNames: 'oneInstanceVariable'
		classVariableNames: 'OneClassVariable OtherClassVariable'
		package: 'AtomicRefactors-Tests-ExampleClass'.

	example := Smalltalk globals at: #ARExampleClass ifAbsent:[nil].
		
	example compile:'oneInstanceVariable
	^ oneInstanceVariable '.
	
	example compile:'oneInstanceVariable: anObject
	oneInstanceVariable := anObject'.
	
	example compile:'usingInstanceVariable
	^ oneInstanceVariable '.
	
	example compile:'oneClassVariable
	^ OneClassVariable '.
		
	example compile:'oneClassVariable: anObject
	OneClassVariable := anObject'.
	
	example compile:'superInstanceVariable
	^superInstanceVariable'.
	
	example compile:'superInstanceVariable:anObject
	superInstanceVariable := anObject'.

	example compile:'superClassVariable
	^SuperClassVariable'.
	
	example compile:'superClassVariable:anObject
	SuperClassVariable := anObject'.
	
	example class compile:'superClassVariable
	^SuperClassVariable'.
	
	example subclass: #ARExampleSubClass
		instanceVariableNames: 'valueOne valueTwo valueThree'
		classVariableNames: ''
		package: 'AtomicRefactors-Tests-ExampleClass'.
		
	subClass := Smalltalk globals at:#ARExampleSubClass.
	
	subClass compile:'values:anArray
		valueOne := anArray first.
		valueTwo := anArray second.
		valueThree := anArray third.'.

   subClass compile:'values
		^ { valueOne. valueTwo. valueThree }
	'