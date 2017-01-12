Removes a subtree from a method. This is a first step on providing small AST tranformations. It might replace the message send, assignment, return, etc. transformations proposed by other tools. This transformation can also be reused by more complex ones, such as Extract Method.

Usage:
transformation := (RBRemoveSubtreeTransformation
		code: 'selector := aSelector'
		from: #selector:from:
		in: #RBRemoveMethodTransformation)
		transform. 
(ChangesBrowser changes: transformation model changes changes) open