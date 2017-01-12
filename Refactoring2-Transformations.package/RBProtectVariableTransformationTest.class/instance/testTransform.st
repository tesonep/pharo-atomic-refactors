testing
testTransform

	| transformation class |
	transformation := (RBProtectVariableTransformation
		instanceVariable: 'class'
		class: #RBTransformationRuleTest)
		transform.
		
	class := transformation model classNamed: #RBTransformationRuleTest.
	self assert: (class directlyDefinesLocalMethod: #class1).
	self assert: (class directlyDefinesLocalMethod: #class:).
	
	self assert: (class parseTreeFor: #superSends) equals: (RBParser parseMethod: 
	'superSends
		| rule |
		rule := RBParseTreeRewriter new.
		rule addSearch: ''super `@message: ``@args'' 
			-> (
				[:aNode | 
				(self class1 withAllSubclasses 
					detect: [:each | each includesSelector: aNode selector]
					ifNone: [nil]) isNil] 
						-> ''self `@message: ``@args'').
		self rewriteUsing: rule').
	
	self assert: (class parseTreeFor: #checkMethod:) equals: (RBParser parseMethod:
	'checkMethod: aSmalllintContext 
		self class: aSmalllintContext selectedClass.
		(rewriteRule executeTree: aSmalllintContext parseTree) ifTrue: 
			[(RecursiveSelfRule executeTree: rewriteRule tree initialAnswer: false) ifFalse: 
				[builder 
					compile: rewriteRule tree printString
					in: self class1
					classified: aSmalllintContext protocols]]')