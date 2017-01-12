Adds a subtree inside a method. It is required an interval indicating where the subtree shall be added. If the interval is invalid, the new subtree will be added at the end of the mehtod body (or before the return node, if it exists).

Usage:
transformation := (RBAddSubtreeRefactoring
		interval: (0 to: 1)
		with: '^ selector'
		from: #selector:from:
		in: #RBRemoveMethodTransformation)
		transform. 
(ChangesBrowser changes: transformation model changes changes) open

Preconditions:
- the class and method exist
- the code from which the subtree will be extracted is parseable