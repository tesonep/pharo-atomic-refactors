testing
testWithTemporaryAssigned

	| class method refactoring |
	model := RBNamespace2 new.
	class := model classNamed: self class name.
	method := 'foo
			| temp bar |
			bar := 5.
			temp := bar * bar.
			Transcript show: temp printString; cr.
			^temp * temp'.
	class compile: method classified: #(#accessing).
			
	refactoring := (RBExtractMethodRefactoring2
			model: model
			extract: (method copyFrom: 24 to: 98)
			from: #foo
			to: #foobar
			in: class)
			transform.
	
	self assert: refactoring model changes changes size equals: 4.
	self assert: (class parseTreeFor: #foo) 
		  equals: (RBParser parseMethod: 'foo | temp | temp := self foobar. ^temp * temp').
	self assert: (class parseTreeFor: #foobar) 
		  equals: (RBParser parseMethod: 'foobar | temp bar | bar := 5. temp := bar * bar. Transcript show: temp printString; cr. ^temp.')