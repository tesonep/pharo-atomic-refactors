testing
testModel

	| class |
	model 	defineClass: 'Object subclass: #SomeClass
			instanceVariableNames: ''''
			classVariableNames: ''Foo'' 
			poolDictionaries: ''''
			category: #''Refactory-Test data'''.
	model defineClass: 'SomeClass subclass: #Subclass
			instanceVariableNames: ''''
			classVariableNames: ''''
			poolDictionaries: ''''
			category: #''Refactory-Test data'''.
	class := model classNamed: #Subclass.
	class compile: 'foo ^Foo' classified: #(#accessing).
	
	(RBPushDownVariableRefactoring 
	 model: model
	 classVariable: #Foo
	 class: class superclass)
	 transform.
				
	self deny: (class superclass directlyDefinesClassVariable: #Foo).
	self assert: (class directlyDefinesClassVariable: #Foo)