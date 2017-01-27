tests
testProtectMetaclassInstanceVariable
	| refactor |
	
	subClassProtectVariable aMetaclassInstanceVariable: 42.
	self assert: subClassProtectVariable aMetaclassInstanceVariable equals: 42.

	refactor := RBProtectVariableRefactoring 
		instanceVariable: 'subClassProtectVariable'
		class: subClassProtectVariable class.
		
	refactor execute.

	self assert: subClassProtectVariable aMetaclassInstanceVariable equals: 42.
