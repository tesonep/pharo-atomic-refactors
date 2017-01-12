testing
testBadName

	self
		shouldFail: (RBRenameClassRefactoring2 
							rename: #RBDummyLintRuleTest
							to: self objectClassVariable);
		shouldFail: (RBRenameClassRefactoring2 
							rename: #RBDummyLintRuleTest
							to: #'Ob ject')