testing
testModelInvalidSubclass

	self shouldFail: (
		RBAddClassRefactoring2
			model: model
			addClass: #Foo2
			superclass: Object
			subclasses: (Array with: (model classNamed: #Bar))
			category: #'Refactory-Tesing')