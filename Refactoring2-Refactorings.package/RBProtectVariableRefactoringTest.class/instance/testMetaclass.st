testing
testMetaclass

	| refactoring class |
	class := model metaclassNamed: #Foo.
	class addInstanceVariable: 'foo'.
	class compile: 'zzz ^foo := foo + foo * 2' classified: #(#testing).
	refactoring := (RBProtectVariableRefactoring 
				model: model
				instanceVariable: 'foo'
				class: class)
				transform.
				
	self assert: (class parseTreeFor: #foo1) 
			equals: (RBParser parseMethod: 'foo1 ^foo').
	self assert: (class parseTreeFor: #foo:)
			equals: (RBParser parseMethod: 'foo: anObject foo := anObject').
			
	self assert: (class parseTreeFor: #zzz) 
			equals: (RBParser parseMethod: 'zzz ^self foo: self foo1 + self foo1 * 2')