Adds a comment to a class. It replaces the current comment for the new one (i.e., it does not append the given text to the existing class comment)

Usage:
transformation := (RBAddClassCommentTransformation
		comment: 'New comment'
		in: RBTransformationTest)
		transform.
(ChangesBrowser changes: transformation model changes changes) open