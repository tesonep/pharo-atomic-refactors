testing
testRemoveClassWithBadName

	self shouldFail: (RBRemoveClassRefactoring2 className: #RecursiveSelfRule)