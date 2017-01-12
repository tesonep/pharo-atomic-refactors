I am responsible for removing a return statement inside a method.

Usage:
refactoring := (RBRemoveReturnStatementRefactoring
			return: '^ variable'
			inMethod: #methodBefore
			inClass: #RBRemoveReturnStatementTransformationTest)
			transform.
(ChangesBrowser changes: refactoring model changes changes) open

Preconditions:
- Check whether the method has a return.

Observations about the transformation:
- This transformation is straightforward: just remove the last node of the method.
- In Pharo, return statements can also be declared inside blocks. In this case, the transformation will try to match return statement passed as argument and remove the return values in this method. If no matching return value is found, the transformation will remove the last node.