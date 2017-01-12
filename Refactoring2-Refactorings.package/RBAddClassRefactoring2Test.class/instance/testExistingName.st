testing
testExistingName

	self shouldFail: (
		RBAddClassRefactoring2
			addClass: #Object
			superclass: self class
			subclasses: #()
			category: #'Refactory-Testing' )