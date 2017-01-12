preconditions
preconditionsForClassVariable
	"it does not perform when two subclasses (and/or their subclasses) accesses this variable"

	^ (RBCondition definesClassVariable: variableName in: self definingClass)
		& (RBCondition withBlock: [
			| numSubclassesAccessing |
			numSubclassesAccessing := self definingClass subclasses count: [ :subclass |
				subclass withAllSubclasses anySatisfy: [ :e |
					(e whichSelectorsReferToClassVariable: variableName) isNotEmpty
					or: [ (e theMetaClass whichSelectorsReferToClassVariable: variableName) isNotEmpty ] ] ].
			numSubclassesAccessing < 2 ])