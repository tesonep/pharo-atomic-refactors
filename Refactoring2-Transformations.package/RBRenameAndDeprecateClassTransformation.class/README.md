Rename a class but making sure that existing clients not in the system can be migrated later on:
The idea is that 
	the class A is renamed into Anew
	it gets a subclass A that is deprecated. 
	
This way client code using A will be able to load and get all the behavior of Anew. 


Usage:
transformation := (RBRenameAndDeprecateClassTransformation new 
					className: #DANode;
					newClassName: #DANodePresenter)
		transform. 
(ChangesBrowser changes: transformation model changes changes) open

