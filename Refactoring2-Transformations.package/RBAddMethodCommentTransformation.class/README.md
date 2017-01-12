Adds a comment in the beginning of the method (after its signature).

Usage:
transformation := (RBAddMethodCommentTransformation
		comment: 'New comment'
		inMethod: #testTransform
		inClass: #RBAddClassTransformationTest)
		transform.
(ChangesBrowser changes: transformation model changes changes) open