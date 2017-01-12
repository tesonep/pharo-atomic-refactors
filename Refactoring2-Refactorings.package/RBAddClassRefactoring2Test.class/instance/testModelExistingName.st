testing
testModelExistingName

	self shouldFail: (
		RBAddClassRefactoring2
			model: model
			addClass: #Foo
			superclass: Object
			subclasses: #()
			category: #'Refactory-Testing' )