testing
testTransform

	| refactoring oldClass newClass |
	refactoring := RBMoveInstanceVariableToClassRefactoring
				model: model
				variable: 'methodBlock'
				fromClass: #RBBasicLintRuleTest
				toClass: #RBFooLintRuleTest.
				
	oldClass := refactoring model classNamed: #RBBasicLintRuleTest.
	newClass := refactoring model classNamed: #RBFooLintRuleTest.
	self assert: (oldClass directlyDefinesInstanceVariable: 'methodBlock').
	self deny: (newClass directlyDefinesInstanceVariable: 'methodBlock').
	
	[ refactoring transform ] on: RBRefactoringError do: [ :e | e resume ].
	self assert: refactoring model changes changes size equals: 2.

	oldClass := refactoring model classNamed: #RBBasicLintRuleTest.
	newClass := refactoring model classNamed: #RBFooLintRuleTest.
	self deny: (oldClass directlyDefinesInstanceVariable: 'methodBlock').
	self assert: (newClass directlyDefinesInstanceVariable: 'methodBlock').
	