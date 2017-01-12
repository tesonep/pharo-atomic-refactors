Marks a class as deprecated and suggests the use of the superclass.

Usage:
transformation := (RBDeprecateClassTransformation 
		class: #RBRemoveClassRefactoring2)
		transform. 
(ChangesBrowser changes: transformation model changes changes) open