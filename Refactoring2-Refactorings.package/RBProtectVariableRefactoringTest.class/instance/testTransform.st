testing
testTransform

	| refactoring class |
	refactoring := (RBProtectVariableRefactoring
		instanceVariable: 'builder'
		class: #RBTransformationRuleTest)
		transform.
	
	class := refactoring model classNamed: #RBTransformationRuleTest.
	self assert: (class parseTreeFor: #builder) = (RBParser parseMethod: 'builder ^builder').
	self assert: (class parseTreeFor: #builder:) = (RBParser parseMethod: 'builder: anObject
	builder := anObject').
	self assert: (class parseTreeFor: #viewResults) = (RBParser parseMethod: 'viewResults
		self builder inspect.
		self resetResult').
	self assert: (class parseTreeFor: #checkMethod:) = (RBParser parseMethod: 'checkMethod: aSmalllintContext 
	class := aSmalllintContext selectedClass.
	(rewriteRule executeTree: aSmalllintContext parseTree) 
		ifTrue: 
			[(RecursiveSelfRule executeTree: rewriteRule tree initialAnswer: false) 
				ifFalse: 
					[self builder 
						compile: rewriteRule tree printString
						in: class
						classified: aSmalllintContext protocols]]')