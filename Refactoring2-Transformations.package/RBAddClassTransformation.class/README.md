Adds a class in the image, optionally inside an hierarchy (with superclass or subclasses).

Usage:
transformation := (RBAddClassTransformation
	addClass: #FooTest
	superclass: RBTransformationTest
	subclasses: (Array with: RBAddClassTransformationTest)
	category: #'Refactoring2-Transformations-Tests')
	transform.
(ChangesBrowser changes: transformation model changes changes) open