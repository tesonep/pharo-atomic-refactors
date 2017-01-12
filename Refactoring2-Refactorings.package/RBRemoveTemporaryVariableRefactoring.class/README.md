I am responsible for removing a temporary variable inside a method.

Usage: 
refactoring := (RBRemoveTemporaryVariableRefactoring
			variable: 'variable'
			inMethod: #methodBefore
			inClass: #RBAddReturnStatementTransformationTest)
			transform.
(ChangesBrowser changes: refactoring model changes changes) open

Preconditions:
- Check whether this method has a temporary variable with the given name.

Observations about the transformation:
- The transformation looks for the variable inside blocks too