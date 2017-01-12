testing
testTransform

	| refactoring class |
	refactoring := (RBAddMethodRefactoring2
						sourceCode: 'foo
										| temp bar |
										bar := 5.
										temp := bar * bar.
										Transcript show: temp printString; cr.
										^temp * temp'
						in: #RBRemoveTemporaryVariableTransformationTest
						withProtocol: #accessing)
						transform.
	
	refactoring := (RBRemoveTemporaryVariableRefactoring 
						model: refactoring model
						variable: 'temp'
						inMethod: #foo
						inClass: #RBRemoveTemporaryVariableTransformationTest)
						transform.
	
	self assert: refactoring model changes changes size equals: 2.			
	
	class := refactoring model classNamed: #RBRemoveTemporaryVariableTransformationTest.
	self assert: (class directlyDefinesMethod: #foo).		
	self assert: (class parseTreeFor: #foo) temporaries size equals: 1