api
addClass: aName superclass: aClass category: aSymbol

	self
		addClass: aName
		superclass: aClass asSymbol
		subclasses: (OrderedCollection new)
		category: aSymbol