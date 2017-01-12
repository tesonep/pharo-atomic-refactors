testing
testExistingName

	self shouldFail: (RBRenameClassRefactoring2
							rename: self class
							to: #Object)