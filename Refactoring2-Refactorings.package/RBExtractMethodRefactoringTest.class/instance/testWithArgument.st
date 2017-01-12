testing
testWithArgument

	| refactoring class |
	refactoring := (RBExtractMethodRefactoring2
		extract: (self sourceCodeAt: (145 to: 343)
					 forMethod: #checkMethod: in: RBTransformationRuleTest)
		from: #checkMethod:
		to: #foo:
		in: #RBTransformationRuleTest)
		transform.
		
	self assert: refactoring model changes changes size equals: 2.
		
	class := refactoring model classNamed: #RBTransformationRuleTest.
	self assert: (class parseTreeFor: #checkMethod:) 
		  equals: (RBParser parseMethod: 'checkMethod: aSmalllintContext 
					class := aSmalllintContext selectedClass.
					(rewriteRule executeTree: aSmalllintContext parseTree) ifTrue: 
						[self foo: aSmalllintContext]').
	self assert: (class parseTreeFor: #foo:) 
		  equals: (RBParser parseMethod: 'foo: aSmalllintContext
					(RecursiveSelfRule executeTree: rewriteRule tree initialAnswer: false)
						ifFalse: 
							[builder compile: rewriteRule tree printString
										in: class
										classified: aSmalllintContext protocols]')