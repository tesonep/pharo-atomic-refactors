testing
testMetaClassFailure

	self shouldFail: (RBRenameClassRefactoring2
							rename: self class class
							to: #Foo)