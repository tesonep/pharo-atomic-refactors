testing
testClassVariableToMultipleSubclasses

	| class |
	model 	defineClass: 'Object subclass: #SomeClass
			instanceVariableNames: ''''
			classVariableNames: ''Foo''
			poolDictionaries: ''''
			category: #''Refactory-Test data'''.
	model 	defineClass: 'SomeClass subclass: #Subclass
			instanceVariableNames: ''''
			classVariableNames: ''''
			poolDictionaries: ''''
			category: #''Refactory-Test data'''.
	class := model classNamed: #Subclass.
	class compile: 'foo ^Foo' classified: #(#accessing).
	model 	defineClass: 'Subclass subclass: #AnotherSubclass
			instanceVariableNames: ''''
			classVariableNames: ''''
			poolDictionaries: ''''
			category: #''Refactory-Test data'''.
	(model metaclassNamed: #AnotherSubclass) compile: 'bar ^Foo' classified: #(#accessing).
		
	(RBPushDownVariableRefactoring 
	 model: model
	 classVariable: #Foo
	 class: #SomeClass)
	 transform.
				
	self deny: (class superclass directlyDefinesClassVariable: #Foo).
	self assert: (class directlyDefinesClassVariable: #Foo)