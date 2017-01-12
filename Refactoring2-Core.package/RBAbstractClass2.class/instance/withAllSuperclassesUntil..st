accessing
withAllSuperclassesUntil: aClass

	^ (self allSuperclassesUntil: aClass)
		add: self;
		yourself