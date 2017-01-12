testing
testUnusedClassVariable

	model defineClass: 'Object subclass: #SomeClass
			instanceVariableNames: ''''
			classVariableNames: ''Foo''
			poolDictionaries: ''''
			category: #''Refactory-Test data'''.
	self assert: ((model classNamed: #SomeClass) directlyDefinesVariable: #Foo).
	
	model defineClass: 'SomeClass subclass: #Subclass
			instanceVariableNames: ''''
			classVariableNames: ''''
			poolDictionaries: ''''
			category: #''Refactory-Test data'''.
			
	(RBPushDownVariableRefactoring 
	 model: model
	 classVariable: #Foo
	 class: (model classNamed: #SomeClass))
	 transform.
	
	self deny: ((model classNamed: #SomeClass) directlyDefinesVariable: #Foo).
	self deny: ((model classNamed: #Subclass) directlyDefinesVariable: #Foo)