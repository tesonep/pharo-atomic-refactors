I am responsible for adding a temporary variable inside a method. In Pharo, temporary variables can be declared inside blocks as well. By default, the container is the method itself.

Usage: 
refactoring := (RBAddTemporaryVariableRefactoring
			variable: #newVariable
			inMethod: #methodBefore
			inClass: #RBAddReturnStatementTransformationTest)
			transform.
(ChangesBrowser changes: refactoring model changes changes) open

Preconditions:
- Check whether there is a variable inside the method with the same name.

Observations about the transformation:
- In this implementation, the temporary variable will be added to the body of the method