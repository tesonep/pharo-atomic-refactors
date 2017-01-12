Removes a method from a class. Only the selector of the method is needed.

Usage:
refactoring := (RBRemoveMethodRefactoring2 
		selector: #transform
		from: RBRemoveMethodTransformation)
		transform. 
(ChangesBrowser changes: refactoring model changes changes) open

Preconditions:
Checks whether there are references to this method