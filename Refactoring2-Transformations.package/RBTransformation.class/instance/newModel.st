initialize
newModel

	^ (RBNamespace2
		onEnvironment: self defaultEnvironment)
		name: self printString;
		yourself