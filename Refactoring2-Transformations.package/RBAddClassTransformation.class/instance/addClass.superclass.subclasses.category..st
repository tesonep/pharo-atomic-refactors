api
addClass: aName superclass: superclassName subclasses: aCollection category: aSymbol

	self className: aName.
	superclass := superclassName asSymbol.
	subclasses := aCollection.
	category := aSymbol asSymbol