testing
testClassVariable

	| refactoring |
	refactoring := RBPullUpVariableRefactoring 
						classVariable: #RecursiveSelfRule
						class: #RBDummyLintRuleTest.	
	
	[ refactoring transform ] on: RBRefactoringError do: [ :e | e resume ].
	self assert: ((refactoring model classNamed: #RBDummyLintRuleTest)
			directlyDefinesClassVariable: #RecursiveSelfRule).
	self deny: ((refactoring model classNamed: #RBTransformationDummyRuleTest)
			directlyDefinesClassVariable: #RecursiveSelfRule)