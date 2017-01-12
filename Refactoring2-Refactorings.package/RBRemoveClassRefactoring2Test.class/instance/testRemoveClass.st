testing
testRemoveClass

	| refactoring |
	refactoring := RBRemoveClassRefactoring2
		className: #RBFooDummyLintRuleTest1.
		
	[ refactoring transform ]
		on: RBRefactoringError
		do: [ :error | self resumeIfCannotRemove: error ].
		
	self assert: (refactoring model classNamed: #RBFooDummyLintRuleTest1) isNil.
	self assert: (refactoring model classNamed: #RBTransformationDummyRuleTest1) superclass
					= (refactoring model classNamed: #RBDummyLintRuleTest)