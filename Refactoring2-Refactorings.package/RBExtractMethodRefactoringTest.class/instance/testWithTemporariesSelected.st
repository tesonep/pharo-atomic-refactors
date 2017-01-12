testing
testWithTemporariesSelected

	| class refactoring |
	model := RBNamespace2 new.
	class := model classNamed: self class name.
	class compile: 'foo [| temp | temp := 5. temp * temp] value'
		classified: #(#accessing).
	
	refactoring := (RBExtractMethodRefactoring2
		model: model
		extract: '| temp | temp := 5. temp * temp'
		from: #foo
		to: #foobar
		in: class)
		transform. 
	
	self assert: refactoring model changes changes size equals: 4.
	self assert: (class parseTreeFor: #foo) 
		  equals: (RBParser parseMethod: 'foo [self foobar] value').
	self assert: (class parseTreeFor: #foobar) 
		  equals: (RBParser parseMethod: 'foobar |temp | temp := 5. ^temp * temp')