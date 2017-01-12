preconditions
preconditions

	class := self definingClass theNonMetaClass.

	^ isClassVariable
		ifTrue: [ self preconditionsForClassVariable ]
		ifFalse: [ self preconditionsForInstanceVariable ]