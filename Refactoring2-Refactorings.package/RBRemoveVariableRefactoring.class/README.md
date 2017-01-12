Removes a variable from a class. It does not remove the direct accesses to this variable in the class. In fact, it shows the accesses for manual removal. 

Usage:
refactoring := (RBRemoveVariableRefactoring 
	instanceVariable: 'isClassVariable'
	class: #RBVariableTransformation)
	transform. 
(ChangesBrowser changes: refactoring model changes changes) open

Preconditions:
- the class exists
- the class defines a variable with the given name