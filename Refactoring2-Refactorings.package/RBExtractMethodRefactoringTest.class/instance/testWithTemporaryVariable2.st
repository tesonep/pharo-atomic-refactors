testing
testWithTemporaryVariable2

	| refactoring class |
	refactoring := (RBExtractMethodRefactoring2
		extract: (self sourceCodeAt: (78 to: 197)
					forMethod: #displayName in: RBDummyLintRuleTest)
		from: #displayName
		to: #foo:
		in: #RBDummyLintRuleTest)
		transform.
	
	self assert: refactoring model changes changes size equals: 2.

	class := refactoring model classNamed: #RBDummyLintRuleTest.
	self assert: (class parseTreeFor: #displayName)
		  equals: (RBParser parseMethod: 'displayName
					| nameStream |
					nameStream := WriteStream on: (String new: 64).
					self foo: nameStream.
					^nameStream contents').
	self assert: (class parseTreeFor: #foo:)
		  equals: (RBParser parseMethod: 'foo: nameStream
					nameStream nextPutAll: self name;
								nextPutAll: '' (''.
					self problemCount printOn: nameStream.
					nameStream nextPut: $).')