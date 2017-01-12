testing
testTransform

	| refactoring class |
	refactoring := (RBRenameVariableRefactoring
			rename: 'classBlock' to: 'asdf'
			in: #RBBasicLintRuleTest
			classVariable: false)
			transform.
			
	class := refactoring model classNamed: #RBBasicLintRuleTest.
	self assert: (class directlyDefinesInstanceVariable: 'asdf').
	self deny: (class directlyDefinesInstanceVariable: 'classBlock').
	self assert: (class parseTreeFor: #checkClass:)
		  equals: (RBParser parseMethod:
				'checkClass: aSmalllintContext 
					^asdf value: aSmalllintContext value: result').
	self assert: (class parseTreeFor: #initialize)
		  equals: (RBParser parseMethod:
				'initialize
					super initialize.
					self anInstVar: 1.
					asdf := [:context :aResult | ].
					methodBlock := [:context :aResult | ].
					self resultClass: RBSelectorEnvironment')