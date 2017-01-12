testing
testTransform

	| transformation class |
	transformation := (RBRemoveDirectAccessToVariableTransformation
		instanceVariable: 'class'
		class: #RBTransformationRuleTest)
		transform.
	
	class := transformation model classNamed: #RBTransformationRuleTest.
	self assert: (class parseTreeFor: #superSends) = (RBParser parseMethod: 
	'superSends
		| rule |
		rule := RBParseTreeRewriter new.
		rule addSearch: ''super `@message: ``@args'' 
			-> (
				[:aNode | 
				(self class withAllSubclasses 
					detect: [:each | each includesSelector: aNode selector]
					ifNone: [nil]) isNil] 
						-> ''self `@message: ``@args'').
		self rewriteUsing: rule').
	
	self assert: (class parseTreeFor: #checkMethod:) = (RBParser parseMethod:
	'checkMethod: aSmalllintContext 
		self class: aSmalllintContext selectedClass.
		(rewriteRule executeTree: aSmalllintContext parseTree) ifTrue: 
			[(RecursiveSelfRule executeTree: rewriteRule tree initialAnswer: false) ifFalse: 
				[builder 
					compile: rewriteRule tree printString
					in: self class
					classified: aSmalllintContext protocols]]')