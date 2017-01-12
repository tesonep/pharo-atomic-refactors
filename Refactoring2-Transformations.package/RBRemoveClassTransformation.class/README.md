Removes a class from the image.

Usage:
transformation := (RBRemoveClassTransformation
	className: #RBRemoveClassTransformationTest)
	transform.
(ChangesBrowser changes: transformation model changes changes) open
