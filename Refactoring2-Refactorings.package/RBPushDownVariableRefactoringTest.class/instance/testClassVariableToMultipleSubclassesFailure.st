testing
testClassVariableToMultipleSubclassesFailure

	model defineClass: 'Object subclass: #SomeClass
			instanceVariableNames: ''''
			classVariableNames: ''Foo''
			poolDictionaries: ''''
			category: #''Refactory-Test data'''.
	model defineClass: 'SomeClass subclass: #Subclass
			instanceVariableNames: ''''
			classVariableNames: ''''
			poolDictionaries: ''''
			category: #''Refactory-Test data'''.
	(model classNamed: #Subclass) compile: 'foo ^Foo' classified: #(#accessing).
	model defineClass: 'SomeClass subclass: #AnotherSubclass
			instanceVariableNames: ''''
			classVariableNames: ''''
			poolDictionaries: ''''
			category: #''Refactory-Test data'''.
	(model metaclassNamed: #AnotherSubclass) compile: 'bar ^Foo' classified: #(#accessing).
		
	self shouldFail: (RBPushDownVariableRefactoring 
				model: model
				classVariable: #Foo
				class: (model classNamed: #SomeClass))