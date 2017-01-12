testing
testModelRenameClass

	| refactoring class |
	model 	defineClass: 'Object subclass: #Foo
		instanceVariableNames: ''a''
		classVariableNames: ''''
		poolDictionaries: ''''
		category: #''Refactoring2-Refactorings-Tests'''.
	class := model classNamed: #Foo.
	class compile: 'foo	^Object' classified: #(#accessing);
			compile: 'objectName ^#(Object)' classified: #(#accessing).
			
	refactoring := (RBRenameClassRefactoring2 
						model: model
						rename: #Object
						to: #Thing)
						transform.
	
	self assert: (model includesClassNamed: #Thing).
	self deny: (model includesClassNamed: #Object).
	self assert: (class parseTreeFor: #foo) 
		  equals: (RBParser parseMethod: 'foo ^Thing').
	self assert: (class parseTreeFor: #objectName) 
		  equals: (RBParser parseMethod: 'objectName ^#(Thing)').
	self assert: class superclass name equals: #Thing