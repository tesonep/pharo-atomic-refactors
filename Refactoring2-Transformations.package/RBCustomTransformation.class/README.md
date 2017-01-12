Performs a custom transformation. With this class, the developer can manipulate the model (a RBNamespace) directly, i.e., adding classes, transforming them etc.

Usage: 
transformation := (RBCustomTransformation with: [ :model |
	model defineClass: ('Object subclass: #Bla
		instanceVariableNames: ''''
		classVariableNames: ''''
		poolDictionaries: ''''
		category: ',  'Refactoring2-Transformations' surroundedBySingleQuotes ).
	model comment: 'Deprecated!!! Use super class'
		in: (model classNamed: #Bla) ])
	transform.
(ChangesBrowser changes: transformation model changes changes) open