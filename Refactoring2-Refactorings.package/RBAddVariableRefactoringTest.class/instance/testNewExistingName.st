testing
testNewExistingName

	model := RBNamespace2 new.
	model name: 'Add instance variable'.
	model defineClass: 'Object subclass: #FOOBAR 
				instanceVariableNames: ''asdf'' 	
				classVariableNames: ''''
				poolDictionaries: ''''
				category: #''Refactory-Test data'''.

	self shouldFail: (RBAddVariableRefactoring 
				model: model
				instanceVariable: 'asdf'
				class: (model classNamed: #FOOBAR))