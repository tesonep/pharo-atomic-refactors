running
shouldFail: aRefactoring 

	self proceedThroughWarning: [
		self should: [ aRefactoring transform ] raise: RBRefactoringError ]