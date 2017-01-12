testing
testNeedsReturn

	| refactoring class |
	refactoring := (RBExtractMethodRefactoring2
		extract: 'rules isEmpty ifTrue: [^self].
	rules size == 1 ifTrue: [^rules first viewResults]' 
		from: #openEditor
		to: #foo: in: #RBDummyLintRuleTest)
		transform.
	
	self assert: refactoring model changes changes size equals: 2.
	
	class := refactoring model classNamed: #RBDummyLintRuleTest.
	self assert: (class parseTreeFor: #openEditor)
		  equals: (RBParser parseMethod: 'openEditor
				| rules |
				rules := self failedRules.
				^self foo: rules').
	self assert: (class parseTreeFor: #foo:)
		  equals: (RBParser parseMethod: 'foo: rules
				rules isEmpty ifTrue: [^self].
				rules size == 1 ifTrue: [^rules first viewResults]')