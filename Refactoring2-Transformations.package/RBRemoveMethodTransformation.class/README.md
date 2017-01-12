Removes a method from a class. Only the selector of the method is needed.

Usage:
transformation := (RBRemoveMethodTransformation 
		selector: #transform
		from: RBRemoveMethodTransformation)
		transform. 
(ChangesBrowser changes: transformation model changes changes) open