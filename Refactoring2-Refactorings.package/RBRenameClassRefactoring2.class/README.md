Renames a class and all the references to this class as well

refactoring := (RBRenameClassRefactoring2
			rename: #RBDummyClassToRename
			to: #RBNewDummyClassName)
			transform.
(ChangesBrowser changes: refactoring model changes changes) open

Preconditions:
- the class must exist
- the new class name should be a valid name: not a reserved name, or the name of an existing class variable in the hierarchy
-