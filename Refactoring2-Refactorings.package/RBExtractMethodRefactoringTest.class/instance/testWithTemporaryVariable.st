testing
testWithTemporaryVariable

	| refactoring class |
	refactoring := (RBExtractMethodRefactoring2
		extract: (self
			sourceCodeAt: (22 to: 280)
			forMethod: #superSends in: RBTransformationRuleTest)
		from: #superSends
		to: #foo1 in: #RBTransformationRuleTest)
		transform.
	
	self assert: refactoring model changes changes size equals: 2.
	
	class := refactoring model classNamed: #RBTransformationRuleTest.
	self assert: (class parseTreeFor: #superSends)
		  equals: (RBParser parseMethod: 'superSends
				| rule |
				rule := self foo1.
				self rewriteUsing: rule').
	self assert: (class parseTreeFor: #foo1)
		  equals: (RBParser parseMethod: 'foo1 | rule |
				rule := RBParseTreeRewriter new.
				rule addSearch: ''super `@message: ``@args''
					-> ([:aNode | 
					(class withAllSubclasses
						detect: [:each | each includesSelector: aNode selector]
						ifNone: [nil]) isNil]
							-> ''self `@message: ``@args'').
				^rule')