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
	
	transformation := (RBExtractMethodTransformation 
				model: transformation model
				extract: 'bar := 5.
							temp := bar * bar.
							Transcript show: temp printString; cr'
				from: #foo
				to: #foobar
				in: self changeMock name)
				transform.
	
	self assert: transformation model changes changes size equals: 4.			
	
	class := transformation model classNamed: self changeMock name.		
	self assert: (class parseTreeFor: #foo) 
		  equals: (RBParser parseMethod: 'foo
													| temp |
													temp := self foobar.
													^temp * temp').
	self assert: (class parseTreeFor: #foobar)
		  equals: (RBParser parseMethod: 'foobar
													| temp bar |
													bar := 5.
													temp := bar * bar.
													Transcript show: temp printString; cr.
													^temp.')