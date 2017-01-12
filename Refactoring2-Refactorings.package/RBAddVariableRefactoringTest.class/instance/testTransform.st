testing
testTransform

	| refactoring |
	model := RBNamespace2 new.
	model name: 'Add instance variable'.
	model defineClass: 'Object subclass: #FOOBAR 
				instanceVariableNames: ''fdsa'' 	
				classVariableNames: ''''
				poolDictionaries: ''''
				category: #''Refactory-Test data'''.
				
	refactoring := (RBAddVariableRefactoring 
		model: model
		instanceVariable: 'asdf'
		class: (model classNamed: #FOOBAR))
		transform.
	
	self assert: ((refactoring model
		classNamed: #FOOBAR) 
		directlyDefinesInstanceVariable: 'asdf')