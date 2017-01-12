preconditions
preconditions
	"it does not perform when two subclasses (and/or their subclasses) accesses this variable"

	^ isClassVariable
		ifTrue: [ self preconditionsForClassVariable ]
		ifFalse: [ self preconditionsForInstanceVariable ]