executing
execute
	"Performs this transformation in a model, then it adds the refactoring to the manager"

	self transform.
	"below executes the refactoring without prompt"
	RBRefactoringManager instance addRefactoring: self