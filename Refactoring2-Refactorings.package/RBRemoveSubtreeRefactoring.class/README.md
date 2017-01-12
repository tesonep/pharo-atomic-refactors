Removes a subtree from a method. This is a first step on providing small AST tranformations. It might replace the message send, assignment, return, etc. transformations proposed by other tools. This transformation can also be reused by more complex ones, such as Extract Method.

Usage:
transformation := (RBRemoveSubtreeRefactoring
		code: 'selector := aSelector'
		from: #selector:from:
		in: #RBRemoveMethodTransformation)
		transform. 
(ChangesBrowser changes: transformation model changes changes) open

Preconditions:
- the class and method exist
- the code from which the subtree will be extracted should be parseable