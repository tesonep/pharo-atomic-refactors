testing
testBadCategoryName

	self shouldFail: (RBMoveClassRefactoring
							move: self class name
							to: #'Refactoring2-Transformations-Test')