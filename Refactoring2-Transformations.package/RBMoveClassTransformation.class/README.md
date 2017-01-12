Moves a class to a new category or package

transformation := (RBMoveClassTransformation
				move: #RBMoveClassTransformation
				to: #'Refactoring2-Refactorings-Tests')
				transform.
(ChangesBrowser changes: transformation model changes changes) open