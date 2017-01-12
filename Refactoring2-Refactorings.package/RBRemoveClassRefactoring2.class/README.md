Removes a class from the image.

Usage:
refactoring := (RBRemoveClassRefactoring2
	className: #RBRemoveClassTransformationTest)
	transform.
(ChangesBrowser changes: transformation model changes changes) open

Preconditions:
- class must exist
- class to be removed should not be referenced
- class to be removed must not have subclasses
- if it is a trait, it should not be used