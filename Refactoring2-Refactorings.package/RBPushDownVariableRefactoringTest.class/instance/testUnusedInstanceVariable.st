testing
testUnusedInstanceVariable

	model defineClass: 'Object subclass: #SomeClass
			instanceVariableNames: ''foo''
			classVariableNames: ''''
			poolDictionaries: ''''
			category: #''Refactory-Test data'''.
	model defineClass: 'SomeClass subclass: #Subclass 
			instanceVariableNames: ''''
			classVariableNames: ''''
			poolDictionaries: ''''
			category: #''Refactory-Test data'''.
		
	(RBPushDownVariableRefactoring 
	 model: model
	 instanceVariable: 'foo'
	 class: (model classNamed: #SomeClass))
	 transform.
	
	self deny: ((model classNamed: #SomeClass) directlyDefinesVariable: 'foo').
	self assert: ((model classNamed: #Subclass) directlyDefinesVariable: 'foo')