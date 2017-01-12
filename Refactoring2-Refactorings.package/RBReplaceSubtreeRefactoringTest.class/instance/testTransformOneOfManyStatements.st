testing
testTransformOneOfManyStatements

	| transformation class |
	transformation := (RBReplaceSubtreeRefactoring
		replace: 'self assert: (class parseTreeFor: #selector:from:) body statements size equals: 2'
		to: 'self assert: (class parseTreeFor: #selector:from:) body statements size = 2'
		inMethod: #testTransform
		inClass: #RBReplaceSubtreeRefactoringTest)
		transform. 
	
	self assert: transformation model changes changes size equals: 1.
	
	class := transformation model classNamed: #RBReplaceSubtreeRefactoringTest.
	self assert: (class directlyDefinesMethod: #testTransform).
	self assert: (class parseTreeFor: #testTransform) body statements size equals: 6.
	self assert: (((class parseTreeFor: #testTransform) body statements at: 5) sourceCode
		includesSubstring: 'assert: (class parseTreeFor: #selector:from:) body statements size = 2').