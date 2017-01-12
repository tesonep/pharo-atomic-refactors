Renames a class and all the references to this class as well

transformation := (RBRenameClassTransformation
				rename: #RBDummyClassToRename
				to: #RBNewDummyClassName)
				transform.
(ChangesBrowser changes: transformation model changes changes) open