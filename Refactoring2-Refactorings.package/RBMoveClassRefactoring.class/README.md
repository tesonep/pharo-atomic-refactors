Moves a class to a new category or package

refactoring := (RBMoveClassRefactoring
			move: #RBMoveClassTransformation
			to: #'Refactoring2-Refactorings-Tests')
			transform.
(ChangesBrowser changes: refactoring model changes changes) open

Preconditions:
- the class must exist
- the category or package must exist