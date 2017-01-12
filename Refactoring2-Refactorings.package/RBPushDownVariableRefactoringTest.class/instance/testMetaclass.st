testing
testMetaclass

	model defineClass: 'Object subclass: #SomeClass
			instanceVariableNames: ''''
			classVariableNames: ''''
			poolDictionaries: ''''
			category: #''Refactory-Test data'''.
	(model metaclassNamed: #SomeClass) addInstanceVariable: 'foo'.
	model defineClass: 'SomeClass subclass: #Subclass
			instanceVariableNames: ''''
			classVariableNames: ''''
			poolDictionaries: ''''
			category: #''Refactory-Test data'''.
	(model metaclassNamed: #Subclass) compile: 'foo ^foo' classified: #(#accessing).
		
	(RBPushDownVariableRefactoring 
	 model: model
	 instanceVariable: 'foo'
	 class: (model metaclassNamed: #SomeClass))
	 transform.
				
	self deny: ((model metaclassNamed: #SomeClass) directlyDefinesVariable: 'foo').
	self assert: ((model metaclassNamed: #Subclass) directlyDefinesVariable: 'foo')