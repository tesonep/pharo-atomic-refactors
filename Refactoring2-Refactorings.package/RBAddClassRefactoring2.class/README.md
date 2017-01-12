Adds a class in the image, optionally inside an hierarchy (with superclass or subclasses).

Usage:
refactoring := (RBAddClassRefactoring
	addClass: #FooTest
	superclass: RBTransformationTest
	subclasses: (Array with: RBAddClassTransformationTest)
	category: #'Refactoring2-Transformations-Tests')
	transform.
(ChangesBrowser changes: refactoring model changes changes) open

Preconditions:
- superclass must be an existing class
- each subclass also must be an existing class
- name of the class to be added must be non-existent in the system
- name of the category must be a valid one