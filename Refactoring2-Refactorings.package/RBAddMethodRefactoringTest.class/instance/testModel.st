testing
testModel

	| refactoring class |
	class := model metaclassNamed: #Bar.
	refactoring := (RBAddMethodRefactoring2 
				model: model
				sourceCode: 'printString1 ^super printString'
				in: class
				withProtocol: #accessing)
				transform.
				
	self assert: (class parseTreeFor: #printString1) 
		  equals: (RBParser parseMethod: 'printString1 ^super printString')