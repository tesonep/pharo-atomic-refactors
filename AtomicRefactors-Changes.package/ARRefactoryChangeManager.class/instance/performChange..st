public access
performChange: aRefactoringChange
	self ignoreChangesWhile: [ self doPerformChange: aRefactoringChange ]