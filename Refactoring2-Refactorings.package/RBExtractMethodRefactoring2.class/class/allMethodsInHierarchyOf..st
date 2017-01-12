utilities
allMethodsInHierarchyOf: aRBClass

	^ ((aRBClass
		withAllSuperclassesUntil: Object)
		flatCollect: [ :class | class allMethods collect: #method ])
		reject: #isNil