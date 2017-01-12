RBRemoveTemporaryVariableRefactoring is responsible for removing temporary variables inside a method. In Pharo, temporary variables can be declared inside blocks as well.

Preconditions:
- Check whether this method has a temporary variable with the given name.

Observations about the transformation:
- The transformation looks for the variable inside blocks too

Example: 
refactoring := RBRemoveTemporaryVariableRefactoring new
	variable: 'variable'
	method: #methodBefore
	class: RBAddTemporatyVariableRefactoringTest;
	primitiveExecute.