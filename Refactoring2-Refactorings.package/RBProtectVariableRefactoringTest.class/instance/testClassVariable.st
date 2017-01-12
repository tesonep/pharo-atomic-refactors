testing
testClassVariable

	| refactoring class |
	refactoring := (RBProtectVariableRefactoring 
		classVariable: 'RecursiveSelfRule'
		class: #RBTransformationRuleTest)
		transform.
	
	class := (refactoring model classNamed: #RBTransformationRuleTest) theMetaClass.
	self assert: (class parseTreeFor: #recursiveSelfRule)
			equals: (RBParser parseMethod: 'recursiveSelfRule ^RecursiveSelfRule').
	self assert: (class parseTreeFor: #recursiveSelfRule:) 
			equals: (RBParser parseMethod: 'recursiveSelfRule: anObject RecursiveSelfRule := anObject').
	
	self assert: (class parseTreeFor: #nuke) 
			equals: (RBParser parseMethod: 'nuke self recursiveSelfRule: nil').
	self assert: (class parseTreeFor: #initializeAfterLoad1) 
			equals: (RBParser parseMethod: 'initializeAfterLoad1
				self recursiveSelfRule: RBParseTreeSearcher new.
				self recursiveSelfRule
					addMethodSearches: #(''`@methodName: `@args | `@temps | self `@methodName: `@args'' ''`@methodName: `@args | `@temps | ^self `@methodName: `@args'')
					-> [:aNode :answer | true]').
	self assert: ((refactoring model classNamed: #RBTransformationRuleTest) parseTreeFor: #checkMethod:) 
			equals: (RBParser parseMethod: 'checkMethod: aSmalllintContext 
				class := aSmalllintContext selectedClass.
				(rewriteRule executeTree: aSmalllintContext parseTree) ifTrue: 
					[(self class recursiveSelfRule executeTree: rewriteRule tree initialAnswer: false)
						ifFalse: 
							[builder compile: rewriteRule tree printString
								in: class
								classified: aSmalllintContext protocols]]')