*Refactoring2-Transformations
hasTemporaryNamed: aString

	^ temporaries anySatisfy: [ :temp | temp name = aString ]