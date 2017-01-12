testing
testTransform

	| transformation class |
	transformation := (RBAddMethodTransformation
					sourceCode: 'foo
									| temp bar |
									bar := 5.
									temp := bar * bar.
									Transcript show: temp printString; cr.
									^temp * temp'
					in: self changeMock name
					withProtocol: #accessing)
					transform.
	
	transformation := (RBRemoveTemporaryVariableTransformation 
				model: transformation model
				variable: 'temp'
				inMethod: #foo
				inClass: self changeMock name)
				transform.
	
	self assert: transformation model changes changes size equals: 2.			
	
	class := transformation model classNamed: self changeMock name.
	self assert: (class directlyDefinesMethod: #one).		
	self assert: (class parseTreeFor: #foo) temporaries size equals: 1