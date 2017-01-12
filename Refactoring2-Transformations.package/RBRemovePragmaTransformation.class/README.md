I am responsible for removing a pragma definition in a method. In this implementation, all the pragma (i.e., selector and arguments) must be described.

Usage:
transformation := (RBRemovePragmaTransformation
				pragma: '<gtInspectorPresentationOrder: 34>'
				inMethod: #methodBefore
				inClass: #RBRemovePragmaTransformationTest)
				transform.
(ChangesBrowser changes: transformation model changes changes) open

Observations about the transformation:
- Although the pragma must be described, the transformation will remove the pragma that has the same selector as the specified one.