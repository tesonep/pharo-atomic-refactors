querying
calculateAssignments
	"checks how many variables in the subtree are assigned to values."

	^ assignments ifNil: [ 
		| sequenceNode whoDefinesTemp |
		sequenceNode := (parseTree allChildren select: #isSequence) last.
	
		assignments := temporaries select: [ :temp | 
			whoDefinesTemp := (sequenceNode whoDefines: temp).
			whoDefinesTemp statements anySatisfy: [ :statement |
				(statement references: temp)
				and: [ (subtree allChildren includes: statement) not ] ] ] ]